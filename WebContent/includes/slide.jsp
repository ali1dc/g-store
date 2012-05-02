<%-- 
    Document   : slide
    Created on : Apr 28, 2012, 11:01:18 PM
    Author     : bchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.util.Random" %> 
<div class="slide-block">
    <div class="bluebox" id="featured" style="height: 200px;">
        <c:set var="count" value="1" scope="page" />
        <sql:query var="slide" dataSource="jdbc/gstore">
            select p.*, c.category_name from products p
            join category_product cp ON cp.product_id=p.product_id
            join categories c ON c.category_id=cp.category_id where c.category_name=?
            <sql:param value="Slide" />
        </sql:query>
        <div class="fadein">
            <c:forEach var="row" items="${slide.rows}">
                <div class="ui-tabs-panel" id="fragment-<c:out value="${count}"/>">
                    <li><a href="product?productId=<c:out value="${row.product_id}"/>"><c:out value="${row.product_name}"/></a></li>
                
                    <c:set var="count" value="${count + 1}" scope="page"/>
                    <img src="<c:out value="${row.product_image}"/>" 
                         alt="<c:out value="${row.description}"/>"
                         height="200"/>"
                    <div class="info">
                        <h2>
                            <a href="#"><c:out value="${row.product_name}"/></a></h2>
                        <p class="long">
                            <c:out value="${row.description}"/>
                        </p>
                        <a class="find-more" href="product?productId=<c:out value="${row.product_id}"/>">more detail</a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <ul class="ui-tabs-nav">
            <c:forEach var="row" begin="0" end="0" items="${slide.rows}">
                <li id="nav-fragment-1" class="ui-tabs-nav-item ui-tabs-selected"><a href="#fragment-1"><c:out value="${row.product_name}"/></a></li>
            </c:forEach>
            <c:set var="counts" value="2" scope="page" />
            <c:forEach var="row" begin="1" end="5" items="${slide.rows}">
                <li id="nav-fragment-<c:out value="${counts}"/>" class="ui-tabs-nav-item"><a href="#fragment-<c:out value="${counts}"/>"><c:out value="${row.product_name}"/></a></li>
                <c:set var="counts" value="${counts + 1}" scope="page"/>
            </c:forEach>
        </ul>
    </div>
</div>