<%-- 
    Document   : leftmenu
    Created on : Apr 30, 2012, 11:01:18 PM
    Author     : bchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<nav id="primary-nav" class="embeddable primary-nav">
    <h2 class="primary-nav-heading">
        Cart Information:
    </h2>
    <ul class="nav-links">
        <li>No Item in Cart!</li>
    </ul>
    <h2 class="primary-nav-heading">
        Categories:
    </h2>
    <ul class="nav-links">
        <sql:query var="category" dataSource="jdbc/gstore">
            SELECT * FROM categories where category_name NOT IN ('Specials', 'Consider', 'Slide')
        </sql:query>

        <c:forEach var="row" items="${category.rows}">
            <li><a href="category?categoryName=<c:out value="${row.category_name}"/>"><c:out value="${row.category_name}"/></a></li>
        </c:forEach>
    </ul>
    <h2 class="primary-nav-heading">
        Today's Special:
    </h2>
    <ul class="nav-links">
        <sql:query var="specials" dataSource="jdbc/gstore">
            select p.*, c.category_name from products p
            join category_product cp ON cp.product_id=p.product_id
            join categories c ON c.category_id=cp.category_id where c.category_name=?
            <sql:param value="Specials" />
        </sql:query>

        <c:forEach var="row" items="${specials.rows}">
            <li><a href="product?productId=<c:out value="${row.product_id}"/>"><c:out value="${row.product_name}"/></a></li>
        </c:forEach>
    </ul>
</nav>
