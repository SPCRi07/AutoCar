<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style type="text/css">
        body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
    </head>
    <body>
    
 <%@ include file="/header.jsp" %> 
  <div class="container">
        <form method="post" action="./SignupClient">
          
            <table border="2" width="30%" cellpadding="5" cellspacing="10">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="fname"  required="required"/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" required="required" /></td>
                    </tr>
                     <tr>
                        <td>State</td>
                        <td><input type="text" name="State" required="required"/></td>
                    </tr>
                     <tr>
                        <td>City</td>
                        <td><input type="text" name="City" required="required"/></td>
                        
                    </tr>
                     <tr>
                        <td>Land Mark</td>
                        <td><input type="text" name="lmarks" required="required"/></td>
                        
                    </tr>
                  
                    <tr>
                        <td>Contact No</td>
                        <td><input type="text" name="uname" required="required" /></td>
                    </tr>
                      <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required="required" /></td>
                    </tr>
                    
                    <tr>
                        <td><button type="submit" value="Submit" />Submit</button></td>
                        <td><button type="reset" value="Reset" />Reset</button></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="Login.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
         </div>
        </form>
        
 	     <%@ include file="/footer.jsp" %>
    </body>
</html>