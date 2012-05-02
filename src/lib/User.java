/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor. 
 */
package lib;


import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */

public class User{
    
    private String email="", password="", firstName="", lastName="", primaryPhone="",
            secondaryPhone="";
    private int userID, primaryAddressID, userRoleID;
    
    private Date registerDate, lastLoginDate;
    
    public User()
    {
    }
    
    public User(String firstName, String lastName, String email)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }
        
    public int getUserID(){
        return userID;
    }
    public void setUserID(int userID){
        this.userID = userID;
    }
    
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    
    // Really should use a cryptographic hash, rather than a plaintext password
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    public int getUserRoleID(){
        return userRoleID;
    }
    public void setUserRoleID(int userRoleID){
        this.userRoleID = userRoleID;
    }
    
    public String getFirstName(){
        return firstName;
    }
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }
    
    public String getLastName(){
        return lastName;
    }
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    
    public String getPrimaryPhone(){
        return primaryPhone;
    }
    public void setPrimaryPhone(String primaryPhone){
        this.primaryPhone = primaryPhone;
    }
    
    public String getSecondaryPhone(){
        return secondaryPhone;
    }
    public void setSecondaryPhone(String secondaryPhone){
        this.secondaryPhone = secondaryPhone;
    }
    
    public int getPrimaryAddressID(){
        return primaryAddressID;
    }
    public void setPrimaryAddressID(int primaryAddressID){
        this.primaryAddressID = primaryAddressID;
    }
    
    public Date getRegisterDate(){
        return registerDate;
    }
    public void setRegisterDate(Date registerDate){
        this.registerDate = registerDate;
    }
    
    public Date getLastLoginDate(){
        return lastLoginDate;
    }
    public void setLastLoginDate(Date lastLoginDate){
        this.lastLoginDate = lastLoginDate;
    }
        
   
}
