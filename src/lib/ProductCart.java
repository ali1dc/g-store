/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class ProductCart{
    
    private String productID, shoppingCartID;
    private int quantity;
    private Date lastUpdateDate;
    
    @Id
    public String getProductID(){
        return productID;
    }
    public void setProductID(String productID){
        this.productID = productID;
    }
    
    public String getShoppingCartID(){
        return shoppingCartID;
    }
    public void setShoppingCartID(String shoppingCartID){
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
