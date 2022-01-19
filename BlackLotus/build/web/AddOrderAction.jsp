<%-- 
    Document   : AddOrderAction
    Created on : Feb 17, 2020, 6:04:29 AM
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
        <meta http-equiv = "refresh" content = "0.1; url = OrderManagement.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //String OrderID=request.getParameter("OrderID");
            String ProductName=request.getParameter("ProductName");
            String CustomerName=request.getParameter("CustomerName");
            String Address=request.getParameter("Address");
            String Telephone=request.getParameter("Telephone");
            
            
                         
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
               
                st.executeUpdate("insert into POrder (ProductName,CustomerName,Address,Telephone)values('"+ProductName+"','"+CustomerName+"','"+Address+"','"+Telephone+"')");
          
               
                
                //out.println("Order Added Successfully");
                
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
      
        %>
    </body>
</html>
