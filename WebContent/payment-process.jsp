<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Secure Payment Process</title>
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
            	<form action="payment-process" method="post">
		            <div class="bluebox">
		            	<h2 class="primary-heading">Billing Address</h2> <a id="address-populator" href="javascript:void(0)">same as shipping address?</a>
		            	<ol>
		            		<li>
		            			<label class="required">Full Name: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="billing-name" name="billing-name" class="checkout-input required" />
		            		</li>
		            		<li>	
		            			<label class="required">Address Line 1: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="billing-address1" name="billing-address1" class="checkout-input required" style="width: 70%" />
		            		</li>
		            		<li>	
		            			<label class="required">Address Line 2:</label>
		            			<input type="text" id="billing-address2" name="billing-address2" class="checkout-input" style="width: 70%"/>
		            		</li>
		            		<li>	
		            			<label class="required">City: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="billing-city" name="billing-city" class="checkout-input required" style="width: 40%"/>
		            		</li>
		            		<li>	
		            			<label class="required">State/Province: <span>&nbsp;(required)</span></label>
		            			<select id="billing-state" name="billing-state" class="stateprov checkout-input required" style="height:30px;width:30%" >
			        				<option value="">--- Please Select ---</option>
				        			<option value="AL">Alabama</option><option value="AK">Alaska</option><option value="AZ">Arizona</option><option value="AR">Arkansas</option><option value="CA">California</option><option value="CO">Colorado</option><option value="CT">Connecticut</option><option value="DE">Delaware</option><option value="FL">Florida</option><option value="GA">Georgia</option><option value="HI">Hawaii</option><option value="ID">Idaho</option><option value="IL">Illinois</option><option value="IN">Indiana</option><option value="IA">Iowa</option><option value="KS">Kansas</option><option value="KY">Kentucky</option><option value="LA">Louisiana</option><option value="ME">Maine</option><option value="MD">Maryland</option><option value="MA">Massachusetts</option><option value="MI">Michigan</option><option value="MN">Minnesota</option><option value="MS">Mississippi</option><option value="MO">Missouri</option><option value="MT">Montana</option><option value="NE">Nebraska</option><option value="NV">Nevada</option><option value="NH">New Hampshire</option><option value="NJ">New Jersey</option><option value="NM">New Mexico</option><option value="NY">New York</option><option value="NC">North Carolina</option><option value="ND">North Dakota</option><option value="OH">Ohio</option><option value="OK">Oklahoma</option><option value="OR">Oregon</option><option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option><option value="SD">South Dakota</option><option value="TN">Tennessee</option><option value="TX">Texas</option><option value="UT">Utah</option><option value="VT">Vermont</option><option value="VA">Virginia</option><option value="WA">Washington</option><option value="WV">West Virginia</option><option value="WI">Wisconsin</option><option value="WY">Wyoming</option>
		        				</select>
		            		</li>
		            		<li>	
		            			<label class="required">Zip / Postal Code: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="billing-zip" name="billing-zip" class="checkout-input required postalcode" style="width: 20%"/>
		            		</li>
		            		<li>	
		            			<label class="required">Phone Number: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="billing-phone" name="billing-phone" class="checkout-input required phoneUS" style="width: 30%" />
		            		</li>
		            	</ol>
		            	<div class="spacer"></div>
		            	<h2 class="primary-heading">Payment Information</h2>
		            	<ol id="payment-info">
		            		<li>	
		            			<label class="required">Credit Card Type: <span>&nbsp;(required)</span></label>
		            			<select id="card-type" name="card-type" class="required checkout-input" style="height:30px;width:30%">
		            				<option value="">Select Cart Type</option>
                                    <option value="amax">American Express</option>
                                    <option value="discover">Discover</option>
                                    <option value="master">Master Card</option>
                                 	<option value="visa">Visa Card</option>
                                 </select>
		            		</li>
		            		<li>	
		            			<label class="required">Credit Card Number: <span>&nbsp;(required)</span></label>
		            			<input type="text" id="credit-card-number" name="card-number" autocomplete="off" class="checkout-input required" />
		            		</li>
		            		<li>	
		            			<label class="required">Expiration Date: <span>&nbsp;(required)</span></label>
		            			<select id="exp_month" name="exp_month" class="required checkout-input" style="height:30px;width:25%;display:inline;">
		            				<option value="">Month</option>
                                	<option value="1">January</option>
                                    <option value="2">February</option>
                                    <option value="3">March</option>
                                    <option value="4">April</option>
                                    <option value="5">May</option>
                                    <option value="6">June</option>
                                    <option value="7">July</option>
                                    <option value="8">August</option>
                                    <option value="9">September</option>
                                    <option value="10">October</option>
                                    <option value="11">November</option>
                                    <option value="12">December</option>
                                </select>
		            			<select id="exp_year" name="exp_year" class="required checkout-input" style="height:30px;width:25%;display:inline;" >
		            				<option value="">Year</option>
                                	<option value="2012">2012</option>
                                    <option value="2013">2013</option>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                </select>                                
		            		</li>
		            		<li>
		            			<label class="required">Verification Code: <span>&nbsp;(required) From back of your card</span></label>
		            			<input type="text" id="cvv-code" name="cvv-code" autocomplete="off" class="checkout-input required" style="width: 10%" />
		            		</li>
		            	</ol>
		            	
						<div class="formsubmit">
							<input type="submit" id="checkout-submit" value="Complete Your Transaction" class="green-btn" style="float: right;" />
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