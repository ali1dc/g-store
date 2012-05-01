/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;



/**
 *
 * @author Taidg
 */

public class Category{
    
    private String categoryName, description;
    private int categoryID;
    
    
    public int getCategoryID(){
        return categoryID;
    }
    public void setCategoryID(int categoryID){
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
    
    
}
