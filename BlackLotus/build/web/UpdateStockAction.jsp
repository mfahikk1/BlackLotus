<%-- 
    Document   : UpdateStockAction
    Created on : Feb 15, 2020, 4:32:19 PM
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
            String FlavourCategory=request.getParameter("FlavourCategory");
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                if (Pid !=null && PName !=null && PQuantity !=null && EventCategory !=null && FlavourCategory !=null)
            {
                
                String Val1=("UPDATE stock SET ProductName = '"+PName+"',Quantity='"+PQuantity+"',EventCategory='"+EventCategory+"',FlavourCategory='"+FlavourCategory+"' WHERE ProductID='"+Pid+"'");
                //String Val2="UPDATE * FROM  stock where ProductID='"+Pid+"')";//"UPDATE * FROM  stock where ProductName (ProductName,Quantity,EventCategory,FlavourCategory)values('"+Pid+"','"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"')";
                st.executeUpdate(Val1);
                //out.println(Val1);
                //out.println("Product Updated Successfully");
            
                
            }
                
                                
            }
            catch(Exception e)
            {
                out.println(e);
            }          
        %>
    </body>
</html>
