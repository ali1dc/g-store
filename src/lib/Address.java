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
@Table(name="Addresses")
public class Address implements Serializable{
    
    private String  address1, address2, city, state, postalCode;
    private int addressID;
    
    public Address() {}
    
    @Id
    @Column(name="AddressID")
    public int getAddressID(){
        return addressID;
    }
    public void setAddressID(int addressID){
        this.addressID = addressID;
    }
    
    @Column(name="Address1")
    public String getAddressOne(){
        return address1;
    }
    public void setAddressOne(String addressOne){
        address1 = addressOne;
    }
    
    @Column(name="Address2")
    public String getAddressTwo(){
        return address2;
    }
    public void setAddressTwo(String addressTwo){
        address2 = addressTwo;
    }
    
    @Column(name="City")
    public String getCity(){
        return city;
    }
    public void setCity(String city){
        this.city =  city;
    }
    
    @Column(name="State")
    public String getState(){
        return state;
    }
    public void setState(String state){
        this.state = state;
    }
    
    @Column(name="PostalCode")
    public String getPostalCode(){
        return postalCode;
    }
    public void setPostalCode(String postalCode){
        this.postalCode = postalCode;
    }
}
