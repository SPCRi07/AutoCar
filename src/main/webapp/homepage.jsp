<%@ page import="java.util.* ,ecj.project.stu141.data.* ,ecj.project.stu141.Utils.*  , ecj.project.stu141.Servlets.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head><title>AutoCars</title>

<link rel="stylesheet" href="css/homepage.css">

</head>
<% List<Carsdata> cars=(List<Carsdata>) request.getAttribute("CarList"); %>
<% String name=(String) request.getAttribute("Name"); %>

<body>

 <%@ include file="/header.jsp" %> 
 	<table> 
 	
 		<%= name
 		
 			%>
	<% for(Carsdata data:cars) { %>
	<tr >
	<td> <img src="<%=data.getCarimage().toString() %>" class="pic" /></td>
	<td> <%=data.getName().toString() %> </td>
	<td> <%= data.getCartype().toString() %> </td>
	</tr>
	<% } %> 
 	</table>       
 	     <%@ include file="/footer.jsp" %>
</body>
</html>
