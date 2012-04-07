/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

/**
 *
 * @author Taidg
 */
public class ProductOrder extends Order{
    
    private String productOrderID, productID;
    private int quantity;
    
    public String getProductOrderID(){
        return productOrderID;
    }
    public void setProductOrderID(String productOrderID){
        this.productOrderID = productOrderID;
    }
    
    public String getProductID(){
        return productID;
    }
    public void setProductID(String productID){
        this.productID = productID;
    }
    
    public int getQuantity(){
        return quantity;
    }
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
}
