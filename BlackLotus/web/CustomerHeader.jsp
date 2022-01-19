<%-- 
    Document   : CustomerHeader
    Created on : Feb 18, 2020, 2:50:18 AM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .header{
                    position: fixed;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    background-color: black;
                    color: white;
                    text-align: center;
                    
                   }
            .font-size{
                    font-size:25px; 
                      } 
        </style>
    </head>
    <body>
        <header>
            <center><img src="Black-Lotus-Logo.png" width='40%' height="150"></center>
      
                <table width='100%' align='center'>                
                
                    <tr class='font-size'>
                        <td align='center' bgcolor='Black'><a href='index.html'>Home</a></td>
                        <td align='center' bgcolor='Black'><a href='Customer.jsp'>My Profile</a></td>
                        <td align='center' bgcolor='Black'><a href='OrderList.jsp'>Order List</a></td>
                        <td align='center' bgcolor='Black'><a href='AboutUs.jsp'>About Us</a></td>                        
                        <td align='center' bgcolor='Black'><a href='Login.jsp'>Log Out</a></td>
                    </tr>
                </table>
        </header>
    </body>
</html>
