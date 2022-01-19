<%-- 
    Document   : addstock
    Created on : Feb 15, 2020, 11:31:08 AM
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
        

        %>
    </head>
    <body>
        <form name="addstock" action="AddStockAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>                    
                    <tbody>
                        <tr>
                            <td  align="right">Product Name</td>
                            <td><input type="text" name="PName" value="<%out.println(""+type);%>" readonly/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Quantity</td>
                            <td><input type="text" name="PQuantity" value="" required/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Event Category</td>
                            <td><select name="EventCategory" required><option>Wedding</option><option>Birthday</option><option>Open Ceremony</option><option>Anniversary Celebrations</option><option>New Year Celebrations</option><option>Christmas</option></select></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Flavor Category</td>
                            <td><select name="FlavorCategory" required><option>Vanilla</option><option>Chocolate</option><option>Butter</option><option>Cheese</option><option>Fruit Flavors</option></select></td>                          
                        </tr>

                        <tr>
                            <td align="right"><label>Cake Image</label></td>
                             <td><input type="file" name="imgsel" value="" /></td>                          
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Add" name="btnAdd" onclick="myFunction()" />&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
       <%@include file="Footer.jsp" %> 
       <script>
        function myFunction() 
        {
          alert("Product Added Successfully");
        }
        </script>
    </body>
</html>
