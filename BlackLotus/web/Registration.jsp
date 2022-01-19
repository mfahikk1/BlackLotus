<%-- 
    Document   : Registration
    Created on : Feb 12, 2020, 2:31:21 PM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <link href = https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css rel="stylesheet">
        
        <style>
            div{
                
                width: 50%;
                border: 1px solid black;
                border-radius: 8px;
                background-color: lightseagreen;
                width:50%;
                margin-left:auto;
                margin-right:auto;
            }
            <%@include file="Header.jsp" %>
            
            
            </style>
            
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
        &nbsp;
        <form name="useradding" action="RegistrationAction.jsp" method="POST" align="center">
            <div>
                <center><h1>Registration</h1></center>
            <table align="center" width="75%">
                <tbody>
                    <tr>
                        <td>E-mail Address</td>
                        <td><input type="text" name="email" value="<%out.println(""+type);%>" class="form-control" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="Password" value="" class="form-control" required/></td>
                    </tr>
                    <tr>
                        <td>Customer Name</td>
                        <td><input type="text" name="CustomerName" value="" class="form-control" required/></td>
                    </tr>
                    <tr>
                        <td>Telephone</td>
                        <td><input type="text" name="Telephone" value="" class="form-control" maxlength="10" required/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="Address" value="" class="form-control" required/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><br><input type="submit" value="Register" name="Register" class="btn-reply"/></td>
                    </tr>
                </tbody>
            </table>
                
            </div>

        </form>
    </body>
</html>
