/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
@Table(name="ShoppingCarts")
public class ShoppingCart implements Serializable{
    
    private int shoppingCartID, sessionID, userID;
    private Date createdDate;
    private HashMap<String, ProductCart> productCarts = 
            new HashMap<String, ProductCart>();
    
    @Id
    public int getShoppingCartID(){
        return shoppingCartID;
    }
    public void setShoppingCartID(int shoppingCartID){
        this.shoppingCartID = shoppingCartID;
    }
    
    public int getSessionID(){
        return sessionID;
    }
    public void setSessionID(int sessionID){
        this.sessionID = sessionID;
    }
    
    public int getUserID(){
        return userID;
    }
    public void setUserID(int userID){
        this.userID = userID;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
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
    public Collection<ProductCart> getProductCarts(){
        return productCarts.values();
    }
}
