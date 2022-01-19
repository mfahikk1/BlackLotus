<%-- 
    Document   : DeleteStockAction
    Created on : Feb 16, 2020, 2:16:33 PM
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
        <meta http-equiv = "refresh" content = "0.1; url = StockManagement.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Pid=request.getParameter("Pid");
            String PName=request.getParameter("PName");
            String PQuantity=request.getParameter("PQuantity");
            String EventCategory=request.getParameter("EventCategory");
            String FlavourCategory=request.getParameter("FlavorCategory");
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                if (Pid !=null && PName !=null && PQuantity !=null && EventCategory !=null && FlavourCategory !=null)
            {
                 
                String Val1="Delete FROM stock where ProductID='"+Pid+"'";
                st.executeUpdate(Val1);
                
                //out.println("Product Deleted Successfully");
           
                
            }
                
                                
            }
            catch(Exception e)
            {
                out.println(e);
            }          
        %>
    </body>
</html>
