<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Your Service</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>

  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker(
    		{ minDate:+1, maxDate:+3 } );
  } );
  </script>
</head>
<body>

 <%@ include file="/header.jsp" %> 
 <%

 String sp=request.getParameter("serviceprice");
 String sid=request.getParameter("subserviceid");
 String cid=request.getParameter("cartypeid");
 String sname=request.getParameter("servicename");
 String ctype=request.getParameter("cartype"); 
 %>
 
<form action="./BookService" method="post" style="border:1px solid #ccc">
  <div class="container">
    <h1>Book A Service for your <%=ctype %> </h1>
    <p>Please fill in this form to get A Slot for Your Pick Up.</p>
    <hr>
	<input type="hidden" name="subserviceid" value="<%=sid%>"/>
	<input type="hidden" name="cartypeid" value="<%=cid%>"/>
	<input type="hidden" name="cartype" value="<%=ctype%>"/>
	
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email"  required>
  	<br>
  	 <label for="phone"><b>Phone Number</b></label>
    <input type="number" placeholder="Enter Phonenumber" name="phone" maxlength="10" required>
  	<br><br>
    <label for="carmodel"><b>Car Model</b></label>
    <input type="text" placeholder="Enter Car Model" name="carmodel"  required>
    <br>
  	<label for="pickup"><b>Select Pick Up date</b></label>
    <input type="date" id="datepicker" name="pickup" required="required">
    <br>
    <br>
     <label for="Price"><b>In the total Price</b></label>
    <input type="text"  name="price"  value="<%=sp %>" readonly="readonly" required>
  	
     <label for="subid"><b>For the Service of</b></label>
    <input type="text" name="subid"  value="<%=sname %>" readonly="readonly" required>
    <br>
    <br>
    <label for="pay"><b>Payment By</b></label>
    <input type="text" name="pay"  value="Payment by cash only" readonly="readonly" >
  	<br>
   
  
  <p>By Booking a Service you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <a href="Homepage"><button type="button" class="cancelbtn">Cancel</button></a>
      <button type="submit" class="signupbtn">Book A Service</button>
    </div>
  </div>
</form>
 
 	     <%@ include file="/footer.jsp" %>
</body>
</html>