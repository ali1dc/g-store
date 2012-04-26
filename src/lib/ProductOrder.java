/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import javax.persistence.*;
/**
 *
 * @author Taidg
 */
@Entity
@Table(name="OrderItems")
public class ProductOrder implements Serializable{
    
    private int quantity, productOrderID, productID, orderID;
    
    @Id
    @Column(name="OrderItemID")
    public int getProductOrderID(){
        return productOrderID;
    }
    public void setProductOrderID(int productOrderID){
        this.productOrderID = productOrderID;
    }
    
    @Column(name="ProductID")
    public int getProductID(){
        return productID;
    }
    public void setProductID(int productID){
        this.productID = productID;
    }
    
    @Column(name="Quantity")
    public int getQuantity(){
        return quantity;
    }
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    
    @Column(name="OrderID")
    public int getOrderID(){
        return orderID;
    }
    public void setOrderID(int orderID){
        this.orderID = orderID;
    }
}
