<%-- 
    Document   : AboutUs
    Created on : Feb 13, 2020, 11:40:07 AM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="Header.jsp" %>
        
        <title>JSP Page</title>
        <style>.aboutimg{background-repeat: no-repeat; background-image: url('AboutUs.jpg');background-attachment: fixed;
  background-position: center;}</style>
    </head>
    <body>
        
        <form  id="form3" name="form3" method="post" action="CheckUser.jsp">
            
            &nbsp;<div>&nbsp;</div>
            <div>
            <h3 align="center">Welcome to</h3>
            <h1 align='center'>Black Lotus</h1>
            &nbsp;
        </div>
        <div class="aboutimg">
            <p><font size="6" color="white"><center>Black Lotus is a well reputed<br>company in Sri Lanka<br>Especially made for both foreigners<br>who visits Sri Lanka and for Local<br>
            Customers who enjoy our products<br>for low rates. Providing you with<br>the perfect and best quality services,<br>there is no place to experience<br>
            a delicious cakes better than<br><b>Black Lotus.<b> </center></font></p>
            &nbsp;
        </div>
        </form>
        
        <%@include file="Footer.jsp" %>
    </body>
</html>
