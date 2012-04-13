/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.awt.Image;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author Taidg
 */
public class Product {
    
    private String productID, asin, productName, productDescription;
    private int quantityOnHand;
    private double price;
    private ItemImage indexImageInfo, productImageInfo;
    private Image productImage;
    private HashMap<String, Category> categories = 
            new HashMap<String, Category>();
    
    public String getProductID(){
        return productID;
    }
    public void setProductID(String productID){
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
    
    public int getQuantityOnHand(){
        return quantityOnHand;
    }
    public void setQuantityOnHand(int quantityOnHand){
        this.quantityOnHand = quantityOnHand;
    }
    
    public double getPrice(){
        return price;
    }
    public void setPrice(double price){
        this.price = price;
    }
    
    public ItemImage getIndexImageInfo(){
        return indexImageInfo;
    }
    public void setIndexImageInfo(ItemImage imageInfo){
        this.indexImageInfo = imageInfo;
    }
    
    public ItemImage getProductImageInfo(){
        return productImageInfo;
    }
    public void setProductImageInfo(ItemImage productImageInfo){
        this.productImageInfo = productImageInfo;
    }
    
    public Image getProductImage(){
        return productImage;
    }
    public void setProductImage(Image productImage){
        this.productImage = productImage;
    }
    
    public Category getCategory(String categoryID){
        return categories.get(categoryID);
    }
    public Category removeCategory(String categoryID){
        return categories.remove(categoryID);
    }
    public void addCategory(Category category){
        categories.put(category.getCategoryID(), category);
    }
    public Collection<Category> getCategories(){
        return categories.values();
    }
    
}
