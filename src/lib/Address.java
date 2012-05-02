/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

public class Address {
    
    private String  recipient, address1, address2, city, state, postalCode, phone, email;
    private int addressID;
    
    public Address() {}
    
    public int getAddressID(){
        return addressID;
    }
    public void setAddressID(int addressID){
        this.addressID = addressID;
    }
    
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String title) {
		this.recipient = title;
	}

    public String getAddress1(){
        return address1;
    }
    public void setAddress1(String address1){
        this.address1 = address1;
    }
    
    public String getAddress2(){
        return address2;
    }
    public void setAddress2(String address2){
        this.address2 = address2;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
