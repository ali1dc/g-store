<!-- Google "security constraint" for info on how to use the web.xml file to secure this file properly. -->
<!--
<security-constraint>
    <web-resource-collection>
        <web-resource-name>Protected Area</web-resource-name>
        <url-pattern>/secure/*</url-pattern>
        <http-method>GET</http-method>
        <http-method>POST</http-method>
    </web-resource-collection>
    <user-data-contraint>
        <transport-guarantee>CONFIDENTIAL</transport-guarantee>
    </user-data-contraint>
</security-contraint>
-->

<!DOCTYPE html>
<html>
    <head>
        <title>Log In</title>
        <meta name="description" content=""/>
        <meta name="author" content="James Harrison Parsons"/>
        <link href="css/base.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            body {background-color:white;}
            th {font-size:large; text-align:left; font-family:arial; color:#02647e;}
            sup {font-size:small;}
            table {margin:0 auto auto auto; background-color:#cbe0e5;}
            table#innerleft {margin-top:0;}
            table#innerright {border-left:2px solid #02647e; margin:0; padding:0 0 0 5px; background-color:#cbe0e5;}
            input.button {float:right;}
        </style>
        <script type="text/javascript">
        </script>
    </head>
    <body>
        <div id="page">
            <!-- Header -->
            <jsp:include page="includes/header.jsp"/>

            <jsp:useBean id="user" scope="session" class="lib.User"/>
            <table>
                <tr>
                    <td>
                        <form action="./welcome" method="post">
                            <table id="innerleft">
                                <tr>
                                    <th colspan="2">Log In</th>
                                </tr>
                                <tr>
                                    <td>Email Address:</td>
                                    <td><input type="text" size="30" name="email" value="<jsp:getProperty name="user" property="email"/>"/></td>
                                </tr>
                                <tr>
                                    <td>
                                        Password:
                                    </td>
                                    <td>
                                        <input type="password" size="30" name="password" value=""/>
                                    </td>
                                </tr>
                            </table>
                            <input type="submit" class="button" value="Log In"/>
                        </form>
                    </td>
                    <td>
                        <form action="./registered" method="post">
                            <table id="innerright">
                                <tr>
                                    <th colspan="2">Register</th>
                                </tr>
                                <tr>
                                    <td>
                                        First Name:
                                    </td>
                                    <td>
                                        <input type="text" name="firstname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Last Name:
                                    </td>
                                    <td>
                                        <input type="text" name="lastname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Email Address:
                                    </td>
                                    <td>
                                        <input type="text" name="email"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Password:
                                    </td>
                                    <td>
                                        <input size="30" type="password" name="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Confirm Password:
                                    </td>
                                    <td>
                                        <input size="30" type="password" name="confirmPassword"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Phone Number:
                                    </td>
                                    <td>
                                        <input size="20" type="text" name="telephone"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address Line 1:
                                    </td>
                                    <td>
                                        <input size="50" type="text" name="address1"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address Line 2:
                                    </td>
                                    <td>
                                        <input size="50" type="text" name="address2"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        City:
                                    </td>
                                    <td>
                                        <input type="text" name="city"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State/Province:
                                    </td>
                                    <td>
                                        <input size="3" type="text" name="state"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Postal Code:
                                    </td>
                                    <td>
                                        <input size="6" type="text" name="zip"/>
                                    </td>
                                </tr>
                                <!--
                                <tr>
                                    <td>
                                        Country:
                                    </td>
                                    <td>
                                        <input type="text" name="country"/>
                                    </td>
                                </tr>
                                -->
                            </table>
                            <input type="submit" class="button" value="Register"/>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
