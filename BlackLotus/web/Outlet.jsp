<%-- 
    Document   : Outlet
    Created on : Feb 15, 2020, 2:02:21 AM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@include file="AdminHeader.jsp" %>
    </head>
    <body>
        
        <h1 align="center">Outlet</h1>
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
        
        
        //out.println("Hello "+type);
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
                                    <td>Thamindusahan@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>Thalpawila</td>
                                </tr>
                                <tr>
                                    <td>Telephone</td>
                                    <td>0712354673</td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td>Thamindu</td>
                                </tr>                               
                            </tbody>
                        </table>
                    </td>
                    
                </tr>
               
                
            </tbody>
            
        </table>
  </table><br><br>
 
</div>
        
        <%@include file="Footer.jsp" %>
    </body>
</html>
