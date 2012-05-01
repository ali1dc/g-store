/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;




/**
 *
 * @author Taidg
 */

public class Address{
    
    private String  address1, address2, city, state, postalCode;
    private int addressID;
    
    public Address() {}
    
    public int getAddressID(){
        return addressID;
    }
    public void setAddressID(int addressID){
        this.addressID = addressID;
    }
    
    public String getAddressOne(){
        return address1;
    }
    public void setAddressOne(String addressOne){
        address1 = addressOne;
    }
    
    public String getAddressTwo(){
        return address2;
    }
    public void setAddressTwo(String addressTwo){
        address2 = addressTwo;
    }
    
    public String getCity(){
        return city;
    }
    public void setCity(String city){
        this.city =  city;
    }
    
    public String getState(){
        return state;
    }
    public void setState(String state){
        this.state = state;
    }
    
    public String getPostalCode(){
        return postalCode;
    }
    public void setPostalCode(String postalCode){
        this.postalCode = postalCode;
    }
}
