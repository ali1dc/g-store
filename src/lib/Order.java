/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
@Entity
public class Order implements Serializable{
    
    private String shipperCompany, paymentMethod, status,
            trackingNumber, orderNumber;
    private int userID, orderID, billingAddressID,
            shippingAddressID;
    private Date orderDate, paymentDate;
    private boolean paymentConfirmed;
    private double totalCost;
    
    public Order() {}
    
    @Id
    public int getOrderID(){
        return orderID;
    }
    public void setOrderID(int orderID){
        this.orderID = orderID;
    }
    
    public int getUserID(){
        return userID;
    }
    public void setUserID(int userID){
        this.userID = userID;
    }
    
    public String getShipperCompany(){
        return shipperCompany;
    }
    public void setShipperCompany(String shipperCompany){
        this.shipperCompany = shipperCompany;
    }
    
    public String getPaymentMethod(){
        return paymentMethod;
    }
    public void setPaymentMethod(String paymentMethod){
        this.paymentMethod = paymentMethod;
    }
    
    public String getStatus(){
        return status;
    }
    public void setStatus(String status){
        this.status = status;
    }
    
    public int getBillingAddressID(){
        return billingAddressID;
    }
    public void setBillingAddressID(int billingAddressID){
        this.billingAddressID = billingAddressID;
    }
    
    public int getShippingAddressID(){
        return shippingAddressID;
    }
    public void setShippingAddressID(int shippingAddressID){
        this.shippingAddressID = shippingAddressID;
    }
    
    public String getOrderNumber(){
        return orderNumber;
    }
    public void setOrderNumber(String orderNumber){
        this.orderNumber = orderNumber;
    }
    
    public String getTrackingNumber(){
        return trackingNumber;
    }
    public void setTrackingNumber(String trackingNumber){
        this.trackingNumber = trackingNumber;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getOrderDate(){
        return orderDate;
    }
    public void setOrderDate(Date orderDate){
        this.orderDate = orderDate;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getPaymentDate(){
        return paymentDate;
    }
    public void setPaymentDate(Date paymentDate){
        this.paymentDate = paymentDate;
    }
    
    public boolean getIsPaymentConfirmed(){
        return paymentConfirmed;
    }
    public void setIsPaymentConfirmed(boolean trueOrFalse){
        paymentConfirmed = trueOrFalse;
    }
    
    public double getTotalCost(){
        return totalCost;
    }
    public void setTotalCost(double totalCost){
        this.totalCost = totalCost;
    }
    
}

