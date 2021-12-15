<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* ,ecj.project.stu141.data.* ,ecj.project.stu141.Utils.*  , ecj.project.stu141.Servlets.* , java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Car Service</title>
<link rel="stylesheet" href="css/price.css">
<Style>
.box img {
    width: 10%;
    height: 10%;
}

.box2 img {
    object-fit: contain;
}

* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
</Style>
</head>
<body>
<div class="pricing-wrapper clearfix">
    <% 

Cookie cs[]=request.getCookies(); 
String name=cs[0].getValue();
%>

    	
 <%@ include file="/header.jsp" %> 
 <%
 String sid=request.getParameter("cartype");
 
 if(name != null) { %>
  		<h2>Welcome,<%= name %></h2>
    <% } %>
    <center>
    <div class="wrapper">
    <div class="box box2"><img src="pics/<%=sid %>.jpg" alt="a car" width="300px" height="300px"></div>
</div>  
</center>
  <h1 class="pricing-table-title">Select Service Type of <%=sid %></h1>
 
   <%! int i=1; %>
  
    <%
//getting param from request


//TODO

//For DB Connection 
String URL="jdbc:mysql://localhost:3306/autocar";
String uname="root";
String pwd="root";

Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver");
conn=DriverManager.getConnection(URL,uname,pwd);

String psql="select * from cartype";
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(psql);
while(rs.next())
{
	
	 %>
	   <div class="pricing-table recommended">
      <h3 class="pricing-title">Premium</h3>
	 <div class="price"><%=rs.getString(sid) %><sup></sup></div>
	 <div class="price"><%=rs.getString("subservicename") %><sup></sup></div>
	   <div class="table-buy">
        <p><sup></sup></p>
           <a href='BookService.jsp?serviceprice=<%=rs.getString(sid) %>&servicename=<%=rs.getString("subservicename") %>&subserviceid=<%=rs.getString("SubServiceID") %>&cartypeid=<%=rs.getString("CarTypeID") %>&cartype=<%= sid %>'> <li  class="pricing-action" >Add to Cart</li> </a>
        
     
      </div>
   		</div> 		
  </div>
 			
	<%
	}
%> 
 	     <%@ include file="/footer.jsp" %>
</body>
</html>