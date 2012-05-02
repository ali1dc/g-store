<nav id="primary-nav" class="embeddable primary-nav">
    <h2 class="primary-nav-heading">
        More Items:
    </h2>
    
    <jsp:useBean id="considerOne" class="lib.Product" scope="request"/>
    <jsp:useBean id="considerTwo" class="lib.Product" scope="request"/>
    <jsp:useBean id="considerThree" class="lib.Product" scope="request"/>
    <jsp:useBean id="considerFour" class="lib.Product" scope="request"/>
    <jsp:useBean id="considerFive" class="lib.Product" scope="request"/>
    
	<ul class="nav-links">
            <li><a href="ProductServlet?productID=<jsp:getProperty name="considerOne" property="productID"/>">
                    <jsp:getProperty name="considerOne" property="productName"/></a></li>
	    <li><a href="ProductServlet?productID=<jsp:getProperty name="considerTwo" property="productID"/>">
                    <jsp:getProperty name="considerTwo" property="productName"/></li>
	    <li><a href="ProductServlet?productID=<jsp:getProperty name="considerThree" property="productID"/>">
                    <jsp:getProperty name="considerThree" property="productName"/></li>
	    <li><a href="ProductServlet?productID=<jsp:getProperty name="considerFour" property="productID"/>">
                    <jsp:getProperty name="considerFour" property="productName"/></li>
            <li><a href="ProductServlet?productID=<jsp:getProperty name="considerFive" property="productID"/>">
                    <jsp:getProperty name="considerFive" property="productName"/></li>
	</ul>
	<h2 class="primary-nav-heading">
	    Categories:
	</h2>
	<ul class="nav-links">
	    <li><a href="#">Category 1</a></li>
	    <li><a href="#">Category 2</a></li>
	    <li><a href="#">Category 3</a></li>
	    <li><a href="#">Category 4</a></li>
	    <li><a href="#">show all</a></li>
	</ul>
	<h2 class="primary-nav-heading">
	    Today's Special:
	</h2>
	<ul class="nav-links">
	    <li><a href="#">today's special product</a></li>
	    <li><a href="/specials/">special items</a></li>
	</ul>
</nav>


