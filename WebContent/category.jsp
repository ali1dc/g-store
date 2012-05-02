<%-- 
    Document   : category
    Created on : Apr 28, 2012, 1:38:51 PM
    Author     : bchan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome to our online store</title>
        <link href="css/base.css" rel="stylesheet" type="text/css" />
        <link href="css/item.css" rel="stylesheet" type="text/css" />
        <link href="css/jquery-ui.custom.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/slide.js"></script>
    </head>
    <body>
        <div id="page">
            <!-- Header -->
            <jsp:include page="includes/header.jsp"/>
            <!-- End of Header -->
            <jsp:include page="includes/leftmenu.jsp"/>
            <section class="threecol main">
                <div id="slide-block">
                    <c:set var="categoryName" value="<%=request.getParameter("categoryName")%>"/>
                    <sql:query var="items" dataSource="jdbc/gstore">
                        select p.*, c.category_name from products p
                        join category_product cp ON cp.product_id=p.product_id
                        join categories c ON c.category_id=cp.category_id where c.category_name=?
                        <sql:param value="${categoryName}" />
                    </sql:query>

                    <table id="productTable">
                        <c:forEach var="row" items="${items.rows}">
                            <tr class="lightBlue">
                                <td><a href="product?productId=<c:out value="${row.product_id}"/>">
                                        <img src="<c:out value="${row.index_image}"/>"
                                             alt="<c:out value="${row.product_name}"/>"></a> 
                                </td>
                                <td><c:out value="${row.product_name}"/></td>
                                <td><c:out value="${row.description}"/></td>
                                <td>$<c:out value="${row.price}"/></td>
                                <td>
                                    <form action="addToCart" method="post">
                                        <input type="hidden"
                                               name="productId"
                                               value="<c:out value="${row.product_id}"/>">
                                        <input type="submit"
                                               value="add to cart">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </section>

        </div>
        <!-- Footer -->
        <jsp:include page="includes/footer.jsp"/>
        <!-- End of Footer -->
    </div>
</body>
</html>
