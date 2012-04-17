/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.util.Collection;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class Category {
    
    private String categoryID, categoryName, description;
    private HashMap<String, Product> products = new HashMap<String, Product>();
    
    @Id
    public String getCategoryID(){
        return categoryID;
    }
    public void setCategoryID(String categoryID){
        this.categoryID = categoryID;
    }
    
    public String getCategoryName(){
        return categoryName;
    }
    public void setCategoryName(String categoryName){
        this.categoryName = categoryName;
    }
    
    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }
    
    public Product getProduct(String productID){
        return products.get(productID);
    }
    public Product removeProduct(String productID){
        return products.remove(productID);
    }
    public void addProduct(Product product){
        products.put(product.getProductID(), product);
    }
    public Collection<Product> getProducts(){
        return products.values();
    }
    
}
