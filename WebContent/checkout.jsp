<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Checkout</title>
    <link href="../css/base.css" rel="stylesheet" type="text/css" />
    <link href="../css/item.css" rel="stylesheet" type="text/css" />
    <link href="../css/jquery-ui.custom.css" rel="stylesheet" type="text/css"/>
    <link href="../js/plugins/reveal/reveal.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../js/plugins/reveal/jquery.reveal.js"></script>
	<script type="text/javascript" src="../js/gstore-jquery.js"></script>
        
</head>
<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
			<jsp:include page="includes/nav-left.jsp"/>
            <section class="threecol main">
            	<form action="checkout" method="post">
		            <div class="bluebox">
		            	<h2 class="primary-heading">Shipping Address</h2>
		            	<ol>
		            		<li>	
		            			<label class="required">Full Name: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="shipping-name" name="shipping-name" class="checkout-input required" />
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">Address Line 1: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="shipping-address1" name="shipping-address1" class="checkout-input required" style="width: 70%" />
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">Address Line 2:</label>
		            			<input type="text" id="shipping-address2" name="shipping-address2" class="checkout-input" style="width: 70%"/>
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">City: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="shipping-city" name="shipping-city" class="checkout-input required" style="width: 40%"/>
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">State/Province: <span>&nbsp;(required)</span></label>
		            			<select id="shipping-state" name="shipping-state" class="stateprov checkout-input required" style="height:30px;width:30%" >
			        				<option value="">--- Please Select ---</option>
				        			<option value="AL">Alabama</option><option value="AK">Alaska</option><option value="AZ">Arizona</option><option value="AR">Arkansas</option><option value="CA">California</option><option value="CO">Colorado</option><option value="CT">Connecticut</option><option value="DE">Delaware</option><option value="FL">Florida</option><option value="GA">Georgia</option><option value="HI">Hawaii</option><option value="ID">Idaho</option><option value="IL">Illinois</option><option value="IN">Indiana</option><option value="IA">Iowa</option><option value="KS">Kansas</option><option value="KY">Kentucky</option><option value="LA">Louisiana</option><option value="ME">Maine</option><option value="MD">Maryland</option><option value="MA">Massachusetts</option><option value="MI">Michigan</option><option value="MN">Minnesota</option><option value="MS">Mississippi</option><option value="MO">Missouri</option><option value="MT">Montana</option><option value="NE">Nebraska</option><option value="NV">Nevada</option><option value="NH">New Hampshire</option><option value="NJ">New Jersey</option><option value="NM">New Mexico</option><option value="NY">New York</option><option value="NC">North Carolina</option><option value="ND">North Dakota</option><option value="OH">Ohio</option><option value="OK">Oklahoma</option><option value="OR">Oregon</option><option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option><option value="SD">South Dakota</option><option value="TN">Tennessee</option><option value="TX">Texas</option><option value="UT">Utah</option><option value="VT">Vermont</option><option value="VA">Virginia</option><option value="WA">Washington</option><option value="WV">West Virginia</option><option value="WI">Wisconsin</option><option value="WY">Wyoming</option>
		        				</select>
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">Zip / Postal Code: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="shipping-zip" name="shipping-zip" class="checkout-input required postalcode" style="width: 20%"/>
		            		</li>
		            	</ol>
		            	<ol>
		            		<li>	
		            			<label class="required">Phone Number: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="shipping-phone" name="shipping-phone" class="checkout-input required phoneUS" style="width: 30%" />
		            		</li>
		            	</ol>
		            	<div class="spacer"></div>
						<div class="formsubmit">
							<input type="submit" id="checkout-submit" value="Payment" class="green-btn" style="float: right;" />
						</div>					
					</div>
				</form>

            </section>
            <jsp:include page="includes/nav-shopping-cart.jsp"/>
        </div>
        
        <jsp:include page="includes/footer.jsp"/>
    </div>
</body>
</html>