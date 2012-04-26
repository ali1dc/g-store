/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class Category implements Serializable{
    
    private String categoryName, description;
    private int categoryID;
    
    @Id
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
