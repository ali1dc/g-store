/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 *
 * @author Taidg
 */
@Entity
@Table(name="UserRoles")
public class UserRole implements Serializable{
    
    private String role;
    private int userRoleID;    

    
@Id    
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
