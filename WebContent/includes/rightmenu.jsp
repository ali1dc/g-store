<%-- 
    Document   : rightmenu
    Created on : Apr 28, 2012, 11:01:18 PM
    Author     : bchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.util.Random" %> 
<aside id="secondary-content" class="right sidebar">
    <div>
        <h2 class="primary-nav-heading">
            More Items to Consider:
        </h2>
        <ul class="nav-links">
            <sql:query var="specials" dataSource="jdbc/gstore">
                select p.*, c.category_name from products p
                join category_product cp ON cp.product_id=p.product_id
                join categories c ON c.category_id=cp.category_id where c.category_name=?
                <sql:param value="Consider" />
            </sql:query>

            <c:forEach var="row" items="${specials.rows}">
                <li><a href="product?productId=<c:out value="${row.product_id}"/>"><c:out value="${row.product_name}"/></a></li>
            </c:forEach>
        </ul>
    </div>
</aside>