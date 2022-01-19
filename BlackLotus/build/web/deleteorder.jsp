<%-- 
    Document   : deleteorder
    Created on : Feb 18, 2020, 9:21:14 AM
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
        <%
             String type = "";
        Cookie mycookieArr[]=request.getCookies();
        
        for(Cookie coo: mycookieArr)
        {
            if(coo.getName().equals("mycookie"))
            {
            type=coo.getValue();
            }
        }
             
             String PName=request.getParameter("OrderID"); 
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                 
                 String sqlselect = "SELECT * FROM POrder where OrderID='"+type+"'";

                ResultSet res = st.executeQuery(sqlselect);
            
          
        %>
    </head>
    <body>
        <form name="deleteorder" action="DeleteOrderAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>
                    <%
                while (res.next()) 
                {                
               
                    %>
                    <tbody>
                        <tr>
                            <td  align="right">Order ID</td>
                            <td><input type="text" name="OrderID" readonly value="<%=res.getString("OrderID")%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Product Name</td>
                            <td><input type="type" name="ProductName" readonly value="<%=res.getString("ProductName")%>" /></td>                          
                        </tr>
                        <tr>
                        <td  align="right">Customer Name</td>
                        <td><input type="text" name="CustomerName" readonly value="<%=res.getString("CustomerName")%>" /></td>
                        </tr>
                        <tr>
                        <td  align="right">Address</td>
                        <td><input type="text" name="Address" readonly value="<%=res.getString("Address")%>" /></td>
                        </tr>
                        <tr>
                        <td  align="right">Telephone</td>
                        <td><input type="text" name="Telephone" readonly value="<%=res.getString("Telephone")%>" /></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Delete" id="btnDelete" onclick="myFunction()" />&nbsp;</td>                           
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
       
       <script>
        function myFunction() 
        {
          alert("User Deleted Successfully");
        }
        </script>
    </body>
    <%@include file="Footer.jsp" %>
</html>
