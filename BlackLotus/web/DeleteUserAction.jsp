<%-- 
    Document   : DeleteUserAction
    Created on : Feb 17, 2020, 5:17:15 AM
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
        <meta http-equiv = "refresh" content = "0.1; url = UserManagement.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Email=request.getParameter("Email");
            String Password=request.getParameter("Password");
            String UserRole=request.getParameter("UserRole");
            String Address=request.getParameter("Address");
            String Telephone=request.getParameter("Telephone");
            String CustomerName=request.getParameter("CustomerName");
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                if (Email !=null && Password !=null && UserRole !=null && Address !=null && Telephone !=null && CustomerName !=null)
            {
                
                String Val1="Delete FROM users where Email='"+Email+"'";
                //String Val2="UPDATE * FROM  stock where ProductID='"+Pid+"')";//"UPDATE * FROM  stock where ProductName (ProductName,Quantity,EventCategory,FlavourCategory)values('"+Pid+"','"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"')";
                st.executeUpdate(Val1);
                //out.println(Val1);
                out.println("User Deleted Successfully");
            
                
            }
                
                                
            }
            catch(Exception e)
            {
                out.println(e);
            }          
        %>
    </body>
</html>
