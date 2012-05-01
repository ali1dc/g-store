/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;



/**
 *
 * @author Taidg
 */

public class Product{
    
    private String asin, productName, productDescription, 
            categoryName, indexImage, productImage;
    private int productID, quantityInStock, indexHeight, indexWidth,
            productHeight, productWidth;
    private double price;
    
    
    public int getProductID(){
        return productID;
    }
    public void setProductID(int productID){
        this.productID = productID;
    }
    
    public String getASIN(){
        return asin;
    }
    public void setASIN(String asin){
        this.asin = asin;
    }
    
    public String getProductName(){
        return productName;
    }
    public void setProductName(String productName){
        this.productName = productName;
    }
    
    public String getProductDescription(){
        return productDescription;
    }
    public void setProductDescription(String productDescription){
        this.productDescription = productDescription;
    }
    
    public int getQuantityInStock(){
        return quantityInStock;
    }
    public void setQuantityInStock(int quantityInStock){
        this.quantityInStock = quantityInStock;
    }
    
    public double getPrice(){
        return price;
    }
    public void setPrice(double price){
        this.price = price;
    }
    
    public String getCategoryName(){
        return categoryName;
    }
    public void setCategoryName(String categoryName){
        this.categoryName = categoryName;
    }
    
    public String getIndexImage(){
        return indexImage;
    }
    public void setIndexImage(String indexImage){
        this.indexImage = indexImage;
    }
    
    public String getProductImage(){
        return productImage;
    }
    public void setProductImage(String productImage){
        this.productImage = productImage;
    }
    
    public int getIndexImageHeight(){
        return indexHeight;
    }
    public void setIndexImageHeight(int indexHeight){
        this.indexHeight = indexHeight;
    }
    
    public int getIndexImageWidth(){
        return indexWidth;
    }
    public void setIndexImageWidth(int indexWidth){
        this.indexWidth = indexWidth;
    }
    
    public int getProductImageHeight(){
        return productHeight;
    }
    public void setProductImageHeight(int productHeight){
        this.productHeight = productHeight;
    }
    
    public int getProductImageWidth(){
        return productWidth;
    }
    public void setProductImageWidth(int productWidth){
        this.productWidth = productWidth;
    }
    
}