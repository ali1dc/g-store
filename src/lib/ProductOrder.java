/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;


/**
 *
 * @author Taidg
 */

public class ProductOrder {
    
    private int quantity, productOrderID, productID, orderID;
    
    public int getProductOrderID(){
        return productOrderID;
    }
    public void setProductOrderID(int productOrderID){
        this.productOrderID = productOrderID;
    }
    
    public int getProductID(){
        return productID;
    }
    public void setProductID(int productID){
        this.productID = productID;
    }
    
    public int getQuantity(){
        return quantity;
    }
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    
    public int getOrderID(){
        return orderID;
    }
    public void setOrderID(int orderID){
        this.orderID = orderID;
    }
}
