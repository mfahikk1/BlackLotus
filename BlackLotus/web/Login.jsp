<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:218px;
	top:83px;
	width:444px;
	height:89px;
	z-index:1;
        }
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

div{
                
width: 40%;
border: 1px solid black;
border-radius: 8px;
/*background-color: lightseagreen;*/
width:35%;
margin-left:auto;
margin-right:auto;
opacity:90%;
background-attachment: fixed;
                
   }

   
<%   
     
     
%>
           

<%@include file="Header.jsp" %>
            
            


</style>

</head>

<body>
    
    

 <div1>&nbsp;</div1>

     <form  id="form1" name="form1" method="post" action="CheckUser.jsp" ">
         
<div>
    <h1 align='center'><hr align="left" width="25%"><hr align="left" width="35%"><hr align="left" width="45%">Login<hr align="right" width="45%"><hr align="right" width="35%"><hr align="right" width="25%"></h1>
  <table align="center" width="75%">
       
    <tr>
      <td width="23%">User name</td>
      <td width="77%"><input type="text" name="UserName" /></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input type="password" name="password" value="" /></td>
    </tr>
    <tr>
      <td></td>
      <td align="center" width="100%"><input  type="submit" name="btnlogin" id="btnlogin" value="Login" /><br><br><hr align="center" width="100%"><hr align="center" width="80%"><p align="center">Or</p><hr align="center" width="80%"><hr align="center" width="70%"></td>
    </tr>
    <tr>
        
      <td>E-mail Address</td>
      <td><input type="text" name="Email" value="" class="form-control" /></td>
      
    </tr>
      <tr>
      <td></td>
      <td align="center"><input  type="submit" name="btnSignup" id="btnsignup" value="Signup" />
      </td>
    </tr>
      <tr>
      <td>&nbsp;</td>
    <label>
        <td><input type="checkbox" checked="checked" name="remember"> Remember me</td>
      </label>
      <tr/>
      
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td></td>
      <tr/>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td><span class="psw">Forgot <a href="#">password?</a></span></td>
      <tr/>
      
  </table>
   
    </div>
</form>
    <%@include file="Footer.jsp" %>
                
</body>
</html>

