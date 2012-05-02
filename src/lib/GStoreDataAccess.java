/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.PrintWriter;
import java.sql.*;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author Taidg
 */
public class GStoreDataAccess {
    
    private static GStoreDataAccess gsda;
    private String url, password, user, driver;
    private PreparedStatement getProductByID, getRelatedProducts;
    
    
    private GStoreDataAccess(){
        driver = "com.mysql.jdbc.Driver";
        
        // Remote database
        url = "jdbc:mysql://aligstore.db.7759592.hostedresource.com:3306/aligstore";
        user = "aligstore";
        password = "a+G[pv.R[_7@OF";
        
        // Taidg's local database
        //url = "jdbc:mysql://localhost:3306/gstore";
        //user = "root";
        //password = "2rectify";
        
        // James's local database
        //url = "jdbc:mysql://localhost:3306/gstore";
        //user = "root";
        //password = "";
    }
    
    public static GStoreDataAccess getInstance(){
        if(gsda==null){
            gsda = new GStoreDataAccess();
        }
        return gsda;
    }
    
    public Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName(driver);
            conn =  DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            System.out.println("ClassNotFoundException thrown");
        }catch (SQLException sql){
            
        }
        return conn;    
    }
    
    public Product getProduct(int productID){
        String selectProductString = "call getProductByID (?)";
        Product p = new Product();
        ResultSet rs;
        Connection conn = getConnection();
        try {
            getProductByID = conn.prepareCall(selectProductString);          
            getProductByID.setInt(1, productID);
            getProductByID.execute();
            rs = getProductByID.getResultSet();
            if(rs.next()){
                p.setASIN(rs.getString("asin"));
                p.setIndexImage(rs.getString("index_image"));
                p.setIndexImageHeight(rs.getInt("index_image_height"));
                p.setIndexImageWidth(rs.getInt("index_image_width"));
                p.setPrice(rs.getDouble("price"));
                p.setProductDescription(rs.getString("description"));
                p.setProductID(productID);
                p.setProductImage(rs.getString("product_image"));
                p.setProductImageHeight(rs.getInt("product_image_height"));
                p.setProductImageWidth(rs.getInt("product_image_width"));
                p.setProductName(rs.getString("product_name"));
                p.setQuantityInStock(rs.getInt("quantity_in_stock"));
            }
            rs.close();
            getProductByID.close();
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return p;      
    }
    
    public Collection<Product> getRelatedProductsByProductID(int productID){
        HashMap<Integer, Product> tempMap = new HashMap<Integer, Product>();
        String procedure = "call getRelatedProductsByProductID (?)";
        ResultSet rs;
        Connection conn = getConnection();
        try{
            getRelatedProducts = conn.prepareCall(procedure);
            getRelatedProducts.setInt(1, productID);
            getRelatedProducts.execute();
            rs = getRelatedProducts.getResultSet();
            while(rs.next()){
                Product p = new Product();
                p.setASIN(rs.getString("asin"));
                p.setIndexImage(rs.getString("index_image"));
                p.setIndexImageHeight(rs.getInt("index_image_height"));
                p.setIndexImageWidth(rs.getInt("index_image_width"));
                p.setPrice(rs.getDouble("price"));
                p.setProductDescription(rs.getString("description"));
                p.setProductID(rs.getInt("product_id"));
                p.setProductImage(rs.getString("product_image"));
                p.setProductImageHeight(rs.getInt("product_image_height"));
                p.setProductImageWidth(rs.getInt("product_image_width"));
                p.setProductName(rs.getString("product_name"));
                p.setQuantityInStock(rs.getInt("quantity_in_stock"));
                tempMap.put(p.getProductID(), p);
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return tempMap.values();
    }
    
    public User getUser(String email, String password)
    {
        String query = "SELECT first_name, last_name, email " + 
                       "FROM users " + 
                       "WHERE email = ? AND password = SHA1(?);";
        User user =  null;
        
        Connection connection = getConnection();
        
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next() == true)
            {
                user = new User(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3));
            }
            
            preparedStatement.close();
            resultSet.close();
        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return user;
    }
    
    public User getUser(String email)
    {
        String query = "SELECT first_name, last_name, email " + 
                       "FROM users " + 
                       "WHERE email = ?;";
        User user =  null;
        
        Connection connection = getConnection();
        
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, email);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next() == true)
            {
                user = new User(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3));
            }
            
            preparedStatement.close();
            resultSet.close();
        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return user;
    }
    
    public void setUser(User user)
    {
        String query = "INSERT INTO users(first_name, last_name, email, password)" +
                       "VALUES(?, ?, ?, SHA1(?));";
        
        Connection connection = getConnection();
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());
            
            preparedStatement.executeUpdate();
            preparedStatement.close();
        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
    }
    
    public void setRole(UserRole role)
    {
        String query = "INSERT INTO roles(email, role) VALUES(?, ?);";
        
        Connection connection = getConnection();
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, role.getEmail());
            preparedStatement.setString(2, role.getRoleName());
            
            preparedStatement.executeUpdate();
            preparedStatement.close();
        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
    }
}
