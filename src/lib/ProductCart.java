/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;


import java.util.Date;


/**
 *
 * @author Taidg
 */

public class ProductCart {
    
    private int productID, shoppingCartID, quantity;
    private Date lastUpdateDate;
    
    
    public int getProductID(){
        return productID;
    }
    public void setProductID(int productID){
        this.productID = productID;
    }
    
    public int getShoppingCartID(){
        return shoppingCartID;
    }
    public void setShoppingCartID(int shoppingCartID){
        this.shoppingCartID = shoppingCartID;
    }
    
    public int getQuantity(){
        return quantity;
    }
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    
 
    public Date getLastUpdateDate(){
        return lastUpdateDate;
    }
    public void setLastUpdateDate(Date lastUpdateDate){
        this.lastUpdateDate = lastUpdateDate;
    }
}
