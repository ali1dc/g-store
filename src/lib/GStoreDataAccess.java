/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

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
       url = "jdbc:mysql://localhost:3306/gstore";
       user = "root";
       password = "2rectify";
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
    
    
}
