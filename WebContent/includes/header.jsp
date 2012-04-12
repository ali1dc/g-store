<%-- 
    Document   : header
    Created on : Apr 10, 2012, 3:46:15 PM
    Author     : Diarmuid
--%>

<header>
    <jsp:useBean id="regUI" scope="session" class="Login.RegistrationUIBean"/>
    <div id="header-content" class="embeddable">
        <!--<div id="bbb-logo"></div>-->
        <div id="header-sub-container">
            <div id="masthead">
                <h1 class="site-title"><a href="/">Online Generic Store<sup>&reg;</sup></a></h1>
                <h2 class="bbb-location">
                    <!-- if user is not logged in -->
                    <!--<a class="find-bbb" href="#">Member Login</a>-->
                    <!-- else user is logged in -->
                    <label class="find-bbb"><a href="login"><jsp:getProperty name="regUI" property="loginMsg"/></a></label>
                </h2>
            </div>
            <nav id="global-nav">
                <ul class="level1">
                    <li class="mega here"><a href="#">Products</a></li>
                    <li class="mega"><a href="#">Categories</a></li>
                    <li class="mega"><a href="#">Specials</a></li>
                    <li class="mega"><a href="#">About Us</a></li>
                    <li class="mega"><a href="#">Contact Us</a></li>
                    <li class="search" style="float:right;float:right;margin-top:10px;margin-right:5px">
                        <input type="text" style="width:150px" placeholder="search by keyword or item#" />
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>