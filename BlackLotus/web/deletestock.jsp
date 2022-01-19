<%-- 
    Document   : deletestock
    Created on : Feb 16, 2020, 2:13:27 PM
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
             
             String PName=request.getParameter("PName"); 
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                 
                 String sqlselect = "SELECT * FROM stock where ProductName='"+type+"'";

                ResultSet res = st.executeQuery(sqlselect);
            
          
        %>
    </head>
    <body>
        <form name="deletastock" action="DeleteStockAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>
                    <%
                while (res.next()) 
                {                
               
                    %>
                    <tbody>
                        <tr>
                            <td  align="right">Product ID</td>
                            <td><input type="text" name="Pid" readonly value="<%=res.getString("ProductID")%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Product Name</td>
                            <td><input type="text" name="PName" readonly value="<%=res.getString("ProductName")%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Quantity</td>
                            <td><input type="text" name="PQuantity" readonly value="<%=res.getString("Quantity")%>" /></td>                           
                        </tr>
                        <tr>
                        <td  align="right">Event Category</td>
                        <td><select name="EventCategory" readonly value=""><option><%=res.getString("EventCategory")%></option><option>Wedding</option><option>Birthday</option></select></td>
                        </tr>
                        <tr>
                        <td  align="right">Flavor Category</td>
                        <td><select name="FlavorCategory" readonly value=""><option><%=res.getString("FlavourCategory")%></option></option><option>Vanilla</option><option>Chocolate</option></select></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Delete" id="btnUpdate" onclick="myFunction()" />&nbsp;</td>                           
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
       <script>
        function myFunction() 
        {
          alert("Product Deleted Successfully");
        }
        </script>
    </body>
</html>
