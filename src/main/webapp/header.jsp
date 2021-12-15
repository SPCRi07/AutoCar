<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/header.css">
</head>

<body>
<div class="header">
  <a href="#default" class="logo">
  <img src="pics/logo.jpg"  alt="Logo"></a>
  <div class="header-right">
<<<<<<< Updated upstream
    <a class="active" href="Homepage">Home</a>
    <a onclick="window.location.href='Login.jsp'">Login</a>
    <a href="#contact">Contact</a>
    <a href="#about">About</a>
=======
 <%! String uname;%>
<%

if (session != null) {
	uname = "Login"; 
	
} 
else
{
	uname="Logout";}
%>

    <a class="active" href="Homepage">Home</a>
    <a onclick="window.location.href='Login.jsp'"><%=uname %></a>
     <a href="./ViewBooking">View Bookings</a>
    <a onclick="window.location.href='about.jsp'">About</a>
     <a href="Feedback.jsp">Feedback</a>
>>>>>>> Stashed changes
  </div>
</div>
</body>
</html>
