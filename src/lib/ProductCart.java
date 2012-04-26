/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
@Table(name="CartItems")
public class ProductCart implements Serializable{
    
    private int productID, shoppingCartID, quantity;
    private Date lastUpdateDate;
    
    @Id
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
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getLastUpdateDate(){
        return lastUpdateDate;
    }
    public void setLastUpdateDate(Date lastUpdateDate){
        this.lastUpdateDate = lastUpdateDate;
    }
}
