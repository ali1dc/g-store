/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class ShoppingCart {
    
    private String shoppingCartID, sessionID, userID;
    private Date createdDate;
    private HashMap<String, ProductCart> productCarts = 
            new HashMap<String, ProductCart>();
    
    @Id
    public String getShoppingCartID(){
        return shoppingCartID;
    }
    public void setShoppingCartID(String shoppingCartID){
        this.shoppingCartID = shoppingCartID;
    }
    
    public String getSessionID(){
        return sessionID;
    }
    public void setSessionID(String sessionID){
        this.sessionID = sessionID;
    }
    
    public String getUserID(){
        return userID;
    }
    public void setUserID(String userID){
        this.userID = userID;
    }
    
    public Date getCreatedDate(){
        return createdDate;
    }
    public void setCreatedDate(Date createdDate){
        this.createdDate = createdDate;
    }
    
    public ProductCart getProductCart(String productID){
        return productCarts.get(productID);
    }
    public ProductCart removeProductCart(String productID){
        return productCarts.remove(productID);
    }
    public void addProductCart(ProductCart productCart){
        productCarts.put(productCart.getProductID(), productCart);
    }
    public Collection<ProductCart> getProductCarts(){
        return productCarts.values();
    }
}
