<%-- 
    Document   : OrderList
    Created on : Feb 18, 2020, 6:20:31 AM
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
        <%@include file="CustomerHeader.jsp" %>
    </head>
    <body>
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
                 
                String sqlselect = "SELECT * FROM POrder";

                ResultSet res = st.executeQuery(sqlselect);
                
               // out.println("Hello"+type);


        %>
        <br><br>
        <form name="vieworder" action="deleteorder.jsp" method="POST" align="center">
        <table bgcolor="#4D66E8" border="1" width="50%" cellpadding="10" align='center'>
                    
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Product Name</th>
                            <th>Customer Name</th>
                            <th>Address</th>
                            <th>Telephone</th>
                            
                        </tr>
                    </thead>
                    
                    <%
                while (res.next()) 
                {                
               
                    %>
                    
                    <tbody>
                        <tr>
                            <td><input type="text" name="ProductID" readonly value="<%=res.getString("OrderID")%>" /></td>
                            <td><input type="text" name="ProductName" readonly value="<%=res.getString("ProductName")%>" /></td>
                            <td><input type="text" name="CustomerName" readonly value="<%=res.getString("CustomerName")%>" /></td>
                            <td><input type="text" name="Address" readonly value="<%=res.getString("Address")%>" /></td>
                            <td><input type="text" name="Telephone" readonly value="<%=res.getString("Telephone")%>" /></td>
                            <td><input type="submit" value="Cancel" name="btncancelorder" />
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
        </form>


            </div>
        </form>
        
        
        
        

    </body>
    <%@include file="Footer.jsp" %>
    
</html>
