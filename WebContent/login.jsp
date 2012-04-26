<!DOCTYPE html>
<html>
    <head>
        <title>Log In</title>
        <meta name="description" content=""/>
        <meta name="author" content="James Harrison Parsons"/>
        <link href="css/base.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            body {background-color: white;}
            th {font-size: large; text-align: left; font-family: arial; color: #02647e;}
            sup {font-size: small;}
            table {margin: 0 auto auto auto; background-color: #f5fbfc;}
            table#outerTable {width: 1000px; border: 1px solid #e0eef1;}
            table#innerleft {width: 100%; padding: 0 70px 0 70px;}
            table#innerright {width: 100%; border-left: 2px solid #02647e; padding: 0 70px 0 70px;}
            input {float: right;}
        </style>
        <script type="text/javascript">
        </script>
    </head>
    <body>
        <div id="page">
            <!-- Header -->
            <jsp:include page="includes/header.jsp"/>

            <jsp:useBean id="user" scope="session" class="lib.User"/>
            <table id="outerTable">
                <tr>
                    <td>
                        <form action="./welcome" method="post"><!-- Must replace ./welcome with j_security_check -->
                            <table id="innerleft">
                                <tr>
                                    <th colspan="2">Log In</th>
                                </tr>
                                <tr>
                                    <td>Email Address:</td>
                                    <td><input type="text" size="30" name="j_username" value="<jsp:getProperty name="user" property="email"/>"/></td>
                                </tr>
                                <tr>
                                    <td>
                                        Password:
                                    </td>
                                    <td>
                                        <input type="password" size="30" name="j_password" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="submit" class="button" value="Log In"/>
                                    </td>
                                </tr>
                            </table>
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
                                        <input size="30" type="text" name="firstname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Last Name:
                                    </td>
                                    <td>
                                        <input size="30" type="text" name="lastname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Email Address:
                                    </td>
                                    <td>
                                        <input size="30" type="text" name="email"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Confirm Email Address:
                                    </td>
                                    <td>
                                        <input size="30" type="text" name="confirmEmail"/>
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
                                    <td colspan="2">
                                        <input type="submit" class="button" value="Register"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
