<%@ page import="java.util.* ,ecj.project.stu141.data.* ,ecj.project.stu141.Utils.*  , ecj.project.stu141.Servlets.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head><title>AutoCars</title>

<link rel="stylesheet" href="css/homepage.css">

</head>
<% List<Carsdata> cars=(List<Carsdata>) request.getAttribute("CarList"); %>
<<<<<<< Updated upstream
<% String name=(String) request.getAttribute("Name"); %>
=======

 <%! String cname;%>
<%

if (session != null) {
	cname = (String) session.getAttribute("Name"); 
} 
else
{
	cname="User";}
%>
>>>>>>> Stashed changes

<body>

 <%@ include file="/header.jsp" %> 
 	<table> 
<<<<<<< Updated upstream
 	
 		<%= name
 		
 			%>
	<% for(Carsdata data:cars) { %>
	<tr >
	<td> <img src="<%=data.getCarimage().toString() %>" class="pic" /></td>
	<td> <%=data.getName().toString() %> </td>
	<td> <%= data.getCartype().toString() %> </td>
	</tr>
=======
 			
 			<h2>  Hello,<%= cname %>     </h2>
 		
 		<% for(Carsdata data:cars) { %>
	
	<td><a href='Cars.jsp?cartype=<%= data.getCartype().toString() %>'> <img src="<%=data.getCarimage().toString() %>" class="pic" /> </a></td>
	<td> <%=data.getName().toString() %> </td>
	<td> <%= data.getCartype().toString() %> </td>
		</tr>
	
>>>>>>> Stashed changes
	<% } %> 
 	</table>       
 	     <%@ include file="/footer.jsp" %>
</body>
</html>
