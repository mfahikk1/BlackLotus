<%-- 
    Document   : adduser
    Created on : Feb 16, 2020, 6:20:42 PM
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
        

        %>
    </head>
    <body>
        <form name="adduser" action="AddUserAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>                    
                    <tbody>
                        <tr>
                            <td  align="right">Email</td>
                            <td><input type="text" name="Email" value="<%out.println(""+type);%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Password</td>
                            <td><input type="Password" name="Password" value="" required/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">User Role</td>
                            <td><select name="UserRole" required><option>Outlet</option><option>Vendors</option><option>Customer</option></select></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Address</td>
                            <td><input type="text" name="Address" value="" required /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Telephone</td>
                            <td><input type="text" name="Telephone" value="" required /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Customer Name</td>
                            <td><input type="text" name="CustomerName" value="" required/></td>                          
                        </tr>

                        <tr>
                            <td align="right"><label>User Image</label></td>
                            <td><input type="file" name="UserImage" value="" /></td>
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
          alert("User Added Successfully");
        }
        </script>
    </body>
</html>
