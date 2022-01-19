<%-- 
    Document   : Vendors
    Created on : Feb 18, 2020, 1:13:27 AM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="VendorHeader.jsp" %>
        <h2 align="center">Welcome to</h2>
        <h1 align="center">Black Lotus</h1>
    </head>
    <body>
        <%
            String type ="";
        Cookie mycookieArr[]=request.getCookies();
        
        for(Cookie coo:mycookieArr)
        {
            if(coo.getName().equals("mycookie"))
            {
                type=coo.getValue();
            }
        }
        
        //out.println("Hello"+type);
        %>
        <style>
            img {
  border-radius: 50%;
}
        </style>
         <br><br>
        <div>
  <table border="0" style="float: left">
    <table border="0" width="30%" cellpadding="10px;" align='left'>
            
            <tbody>
                <tr>
                    <td><table border="0" width="50%" cellpadding="10px;" align='left'>
                            
                            <tbody>
                                <thead >User Profile<br><hr align="Center" width="100%"><br><img src="Profile.png" alt="Profile" style="width:200px"></thead>
                                <tr>
                                    <td>Email</td>
                                    <td>Christina@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>United Kingdom</td>
                                </tr>
                                <tr>
                                    <td>Telephone</td>
                                    <td>0122213355</td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td>Christina</td>
                                </tr>                               
                            </tbody>
                        </table>
                    </td>
                    
                </tr>
               
                
            </tbody>
            
        </table>
  </table><br><br>
  <table border="0" style="float: right">
    <table border="0" width="30%" cellpadding="10px;" align='right'>
            
            <tbody>
                <tr>
                    <td><table border="0" width="50%" cellpadding="10px;" align='left'>
                            
                            <tbody>
                                <thead>Order Confirmation<br><hr align="Center" width="100%"></thead>
                                <tr>
                                    <td>Ordered Product</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Customer Name</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Telephone</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Availability</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td align='center'><input type="submit" value="Order Now" name="btnorderAdd" /></td>
                                </tr>
                            </tbody>
                        </table><br><br>
                    </td>
                    
                </tr>
               
                
            </tbody>
            
        </table<br><br>
  </table><br><br>
</div>
    </body>
    <%@include file="Footer.jsp" %>
</html>
