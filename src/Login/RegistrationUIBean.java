/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

/**
 *
 * @author James
 */
public class RegistrationUIBean {
    private String loginMsg = "SIGN IN";
    
    public RegistrationUIBean()
    {
    }
    
    public void setLoginMsg(String name)
    {
        this.loginMsg = "Welcome " + name;
    }
    
    public String getLoginMsg()
    {
        return this.loginMsg;
    }
}
