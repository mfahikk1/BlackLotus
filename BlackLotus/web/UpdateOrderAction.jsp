<%-- 
    Document   : UpdateOrderAction
    Created on : Feb 18, 2020, 5:47:30 AM
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
            String OrderID=request.getParameter("OrderID");
            String ProductName=request.getParameter("ProductName");
            String CustomerName=request.getParameter("CustomerName");
            String Address=request.getParameter("Address");
            String Telephone=request.getParameter("Telephone");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                if (OrderID !=null && ProductName !=null && CustomerName !=null && Address !=null && Telephone !=null)
            {
                
                String Val1=("UPDATE POrder SET OrderID = '"+OrderID+"',ProductName='"+ProductName+"',CustomerName='"+CustomerName+"',Address='"+Address+"' ,Telephone='"+Telephone+"' WHERE OrderID='"+OrderID+"'");
                //String Val2="UPDATE * FROM  stock where ProductID='"+Pid+"')";//"UPDATE * FROM  stock where ProductName (ProductName,Quantity,EventCategory,FlavourCategory)values('"+Pid+"','"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"')";
                st.executeUpdate(Val1);
                //out.println(Val1);
                //out.println("User Updated Successfully");
            
                
            }
                
                                
            }
            catch(Exception e)
            {
                out.println(e);
            }          
        %>
    </body>
</html>
