<%-- 
    Document   : addorder
    Created on : Feb 17, 2020, 6:03:50 AM
    Author     : Fahik's PC
--%>

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
        
        
        
        for(Cookie coo: mycookieArr)
        {
            if(coo.getName().equals("UserRole"))
            {
            type=coo.getValue();
            }
        }
        
        
        //out.println("Hello "+type);
        

        %>
    </head>
    <body>
        <form name="addorder" action="AddOrderAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>                    
                    <tbody>
                        <tr>
                            <td  align="right">Product Name</td>
                            <td><input type="text" name="ProductName" value="<%out.println(""+type);%>" readonly/></td>                          
                        </tr>                       
                        <tr>
                            <td  align="right">Customer Name</td>
                            <td><input type="text" name="CustomerName" value="" required/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Customer Address</td>
                            <td><input type="text" name="Address" value="" required/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Telephone</td>
                            <td><input type="text" name="Telephone" value="" required/></td>                          
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
          alert("Order Added Successfully");
        }
        </script>
    </body>
</html>
