<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome to our online store</title>
    <link href="css/base.css" rel="stylesheet" type="text/css" />
    <link href="css/item.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
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
            <section class="threecol main">
                <div class="slide-block">
                    <div class="bluebox" id="featured" style="height: 200px;">
                        <div class="fadein">
                            <div class="ui-tabs-panel" id="fragment-1" style="display: block;">
                                <img alt="image for product 1" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">Product 1 title</a></h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-2" style="display: none;">
                                <img alt="product 2 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 2 title</a>
                                    </h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-3" style="display: none;">
                                <img alt="product 3 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 3 title</a>
                                    </h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-4" style="display: none;">
                                <img alt="product 4 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 4 detail</a></h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-5" style="display: none;">
                                <img alt="product 5 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 5 title</a></h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                        </div>
                        <ul class="ui-tabs-nav">
                            <li id="nav-fragment-1" class="ui-tabs-nav-item ui-tabs-selected"><a href="#fragment-1">1</a></li>
                            <li id="nav-fragment-2" class="ui-tabs-nav-item"><a href="#fragment-2">2</a></li>
                            <li id="nav-fragment-3" class="ui-tabs-nav-item"><a href="#fragment-3">3</a></li>
                            <li id="nav-fragment-4" class="ui-tabs-nav-item"><a href="#fragment-4">4</a></li>
                            <li id="nav-fragment-5" class="ui-tabs-nav-item"><a href="#fragment-5">5</a></li>
                        </ul>
                    </div>
                </div>

                <div id="seg-level-2">
                    <div class="seg-block seg-block-L">
                        <h2>product title</h2>
                        <img alt="prosuct image here" src="#" />
                        <p>product description</p>
                    </div>
                    <div class="seg-block seg-block-R">
                        <h2>product title</h2>
                        <img alt="prosuct image here" src="#" />
                        <p>product description</p>
                    </div>
                </div>
                <div id="seg-level-2">
                    <div class="seg-block seg-block-L">
                        <h2>product title</h2>
                        <img alt="prosuct image here" src="#" />
                        <p>product description</p>
                    </div>
                    <div class="seg-block seg-block-R">
                        <h2>product title</h2>
                        <img alt="prosuct image here" src="#" />
                        <p>product description</p>
                    </div>
                </div>
            </section>
            <aside id="secondary-content" class="right sidebar">
                <div>
                    <h2 class="primary-nav-heading">
                        More Items to Consider:
                    </h2>
                    <ul class="nav-links">
                        <li><a href="#">Product 1</a></li>
                        <li><a href="#">Product 2</a></li>
                        <li><a href="#">Product 3</a></li>
                        <li><a href="#">Product 4</a></li>
                        <li><a href="#">Product 5</a></li>
                    </ul>
                </div>
            </aside>
        </div>
        <!-- Footer -->
        <jsp:include page="includes/footer.jsp"/>
        <!-- End of Footer -->
    </div>
</body>
</html>