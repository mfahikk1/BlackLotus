<%-- 
    Document   : Admin
    Created on : Jan 12, 2020, 11:35:51 AM
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
        
        
        out.println("Hello "+type);
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
                                    <td>admin</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>Hambantota</td>
                                </tr>
                                <tr>
                                    <td>Telephone</td>
                                    <td>0777926989</td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td>Fahik</td>
                                </tr>                               
                            </tbody>
                        </table>
                    </td>
                    
                </tr>
               
                
            </tbody>
            
        </table>
  </table>
 <br><br>
</div>
        
        
        

       <%@include file="Footer.jsp" %>
    </body>
     
</html>
