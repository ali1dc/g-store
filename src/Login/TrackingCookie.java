/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lib.GStoreDataAccess;
import lib.User;

/**
 *
 * @author James
 */
public class TrackingCookie
{
    public TrackingCookie()
    {
    }
    
    public static void setCookie(HttpServletResponse response, String email)
    {
        Cookie trackingCookie = new Cookie("user", email);
        trackingCookie.setMaxAge(60*60); // Track for one hour
        trackingCookie.setPath("/");
        trackingCookie.setSecure(true);
        response.addCookie(trackingCookie);
    }
    
    public static String getCookie(HttpServletRequest request)
    {
        Cookie[] cookies = request.getCookies();
        String cookieName = "user";
        String cookieValue = "";
        
        if (cookies != null)
        {
            for (int i=0; i<cookies.length; i++)
            {
                Cookie cookie = cookies[i];
                if (cookieName.equals(cookie.getName()))
                {
                    cookieValue = cookie.getValue();
                    GStoreDataAccess gsda = GStoreDataAccess.getInstance();
                    User user = gsda.getUser(cookieValue);
                    if (user != null)
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("user", user);

                        RegistrationUIBean regUI = (RegistrationUIBean)session.getAttribute("regUI");
                        if (regUI == null)
                        {
                            regUI = new RegistrationUIBean();
                        }
                        regUI.setLoginMsg(user.getFirstName());
                        session.setAttribute("regUI", regUI);
                    }
                }
            }
        }
        return cookieValue;
    }
}
