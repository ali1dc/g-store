/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

/**
 *
 * @author Diarmuid
 */
public class ItemImage{
    private String imageID;
    private int width, height;
    
    public ItemImage(String imageID, int height, int width){
        this.imageID = imageID;
        this.height = height;
        this.width = width;
    }
    
    public String getImageID(){
        return imageID;
    }
    public void setImage(String imageID){
        this.imageID = imageID;
    }
    
    public int getHeight(){
        return height;
    }
    public void setHeight(int height){
        this.height = height;
    }
    
    public int getWidth(){
        return width;
    }
    public void setWidth(int width){
        this.width = width;
    }
}
