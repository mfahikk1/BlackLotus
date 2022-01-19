<%-- 
    Document   : DBConnector
    Created on : Feb 17, 2020, 5:40:53 PM
    Author     : Fahik's PC
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String DRIVER_NAME="com.mysql.jdbc.Driver";
            String Connection_URL="jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull";
            String USER_NAME="root";
            String PASSWORD="1997";
            
            Connection connect=null;
            
          
        %>
    </body>
</html>
