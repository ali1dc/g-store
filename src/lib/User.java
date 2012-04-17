/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor. 
 */
package lib;


import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class User {
    
    private String userID="", email="", password="", userRoleID="", firstName="", lastName="", primaryPhone="",
            secondaryPhone="", primaryAddressID="";
    
    private Date registerDate, lastLoginDate;
    
    private HashMap<String, Order> orders = new HashMap<String, Order>();
    
@Id    
    public String getUserID(){
        return userID;
    }
    public void setUserID(String userID){
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
    
    public String getUserRoleID(){
        return userRoleID;
    }
    public void setUserRoleID(String userRoleID){
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
    
    public String getPrimaryAddressID(){
        return primaryAddressID;
    }
    public void setPrimaryAddressID(String primaryAddressID){
        this.primaryAddressID = primaryAddressID;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getRegistrationDate(){
        return registerDate;
    }
    public void setRegistrationDate(Date registerDate){
        this.registerDate = registerDate;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getLastLoginDate(){
        return lastLoginDate;
    }
    public void setLastLoginDate(Date lastLoginDate){
        this.lastLoginDate = lastLoginDate;
    }
    
    public Order getOrder(String orderID){
        return orders.get(orderID);
    }
    public Order removeOrder(String orderID){
        return orders.remove(orderID);
    }
    public void addOrder(Order order){
        orders.put(order.getOrderID(), order);
    }
    public Collection<Order> getOrders(){
        return orders.values();
    }
}
