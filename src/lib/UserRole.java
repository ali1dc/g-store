/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

/**
 *
 * @author Taidg
 */
public class UserRole {
    
    private String userRole, role;
    
    private static final String USER = "User";
    private static final String ADMIN = "Admin";
    
    public String getUserRole(){
        return userRole;
    }
    public void setUserRole(String userRole){
        this.userRole = userRole;
    }
    
    public String getRole(){
        return role;
    }
    public void setRole(String role){
        this.role = role;
    }
}
