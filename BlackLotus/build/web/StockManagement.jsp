<%-- 
    Document   : StockManagement
    Created on : Feb 13, 2020, 12:42:10 AM
    Author     : Fahik's PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="AdminHeader.jsp" %>
    </head>
    <body>
        <h1 align="center">Administration</h1>
        <% 
            String type = "";
        Cookie mycookieArr[]=request.getCookies();
        
        for(Cookie coo: mycookieArr)
        {
            if(coo.getName().equals("UserRole"))
            {
            type=coo.getValue();
            }
        }
        
        
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                 
                 String sqlselect = "SELECT * FROM stock";

                ResultSet res = st.executeQuery(sqlselect);
                
                out.println("Hello "+type);
        %>
            
        
        
        &nbsp;<div>&nbsp;</div>
        <h2 align='center'>Stock Management</h2>
        <form name="stock" action="btnstockcheck.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>  
                    
                    <tbody>
                        <tr>
                            <td  align="right">Product Name</td>
                            <td><input type="text" name="PName" value="" required /></td>                          
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Add" name="btnAdd" />&nbsp;<input type="submit" value="Update" name="btnUpdate" />&nbsp;<input type="submit" value="Delete" name="btnDelete" /></td>                           
                        </tr>
                    </tbody>
                </table>
                
                <table bgcolor="#90EE90" border="1" width="50%" cellpadding="10" align='center'>
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Event Category</th>
                            <th>Flavor Category</th>
                        </tr>
                    </thead>
                    <%
                while (res.next()) 
                {                
               
                    %>                    
                    <tbody>
                        <tr>
                            <td><input type="text" name="Pid" readonly value="<%=res.getString("ProductID")%>" /></td>
                            <td><input type="text" name="PName" readonly value="<%=res.getString("ProductName")%>" /></td>
                            <td><input type="text" name="PQuantity" readonly value="<%=res.getString("Quantity")%>" /></td>
                            <td><input type="text" name="PQuantity" readonly value="<%=res.getString("EventCategory")%>" /></td>
                            <td><input type="text" name="PQuantity" readonly value="<%=res.getString("FlavourCategory")%>" /></td>
                        </tr>                     
                        <%
                    }
                %>
                    </tbody>                    
                </table>
                 <%
                out.println("");
            }
           catch(Exception e)
            {
                out.println(e);
            }
        %>


            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
