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
    
    private String role;
    private int userRoleID;    
  
    public int getUserRoleID(){
        return userRoleID;
    }
    public void setUserRoleID(int userRoleID){
        this.userRoleID = userRoleID;
    }
    
    public String getRoleName(){
        return role;
    }
    public void setRoleName(String role){
        this.role = role;
    }
}
