<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Bookings</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<% ResultSet rs= (ResultSet) request.getAttribute("bookings"); %>
 <%! String sname;%>
<%

if (session != null) {
	sname = (String) session.getAttribute("Name"); 
} 
else
{
	sname="User";}
%>

<body>

 <%@ include file="/header.jsp" %> 
 
 <table  border=1 width=50% height=50%  >
				<tr><th>Id</th><th>SubserviceName</th><th>Date</th><th>Cartype</th><th>CarModel</th> <th>Paid By</th> <th>Total Price</th><tr>
				
 <% 
 while (rs.next()) {
				%>
				<tr><td><%=rs.getString("BookingID") %></td><td><%=rs.getString("SubserviceName") %></td><td><%=rs.getString("DateAndTIme") %></td><td><%=rs.getString("CarType") %></td></td><td><%=rs.getString("CarModel") %></td><td><%=rs.getString("Paymentstatus") %></td> <td><%=rs.getString("employeeid") %></td></tr>	
							
<%} %>
</table>
 	     <%@ include file="/footer.jsp" %>

</body>
</html>