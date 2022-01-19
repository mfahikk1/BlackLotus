<%-- 
    Document   : deleteuser
    Created on : Feb 17, 2020, 5:09:46 AM
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
             
             String PName=request.getParameter("Email"); 
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                 
                 String sqlselect = "SELECT * FROM users where Email='"+type+"'";

                ResultSet res = st.executeQuery(sqlselect);
            
          
        %>
    </head>
    <body>
        <form name="deleteuser" action="DeleteUserAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>
                    <%
                while (res.next()) 
                {                
               
                    %>
                    <tbody>
                        <tr>
                            <td  align="right">Email</td>
                            <td><input type="text" name="Email" readonly value="<%=res.getString("Email")%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Password</td>
                            <td><input type="Password" name="Password" readonly value="<%=res.getString("Password")%>" /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">User Role</td>
                            <td><select name="UserRole" readonly value=""><option><%=res.getString("UserRole")%></option><option>Outlet</option><option>Vendors</option><option>Customers</option></select></td>                           
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
                        <td  align="right">Customer Name</td>
                        <td><input type="text" name="CustomerName" readonly value="<%=res.getString("CustomerName")%>" /></td>
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
       <%@include file="Footer.jsp" %>
       <script>
        function myFunction() 
        {
          alert("User Deleted Successfully");
        }
        </script>
    </body>
</html>
