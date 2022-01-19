<%-- 
    Document   : newuser
    Created on : Feb 12, 2020, 3:26:12 PM
    Author     : Fahik's PC
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv = "refresh" content = "0.2; url = Login.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String pass=request.getParameter("Password");
            String uRole="Customer";
            String Cname=request.getParameter("CustomerName");
            String tel=request.getParameter("Telephone");
            String Address=request.getParameter("Address");
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                st.executeUpdate("insert into users (Email,Password,UserRole,Address,Telephone,CustomerName)values('"+email+"','"+pass+"','"+uRole+"','"+Address+"','"+tel+"','"+Cname+"')");
                out.println("You are Successfully Registered<br>Welcome to Black Lotus");
                
                st.executeUpdate("delete from users (Email,Password,UserRole,Address,Telephone,CustomerName)values('"+email+"','"+pass+"','"+uRole+"','"+Address+"','"+tel+"','"+Cname+"')");
                out.println("Account Successfully Deleted");
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
      
        %>
        
    </body>
</html>
