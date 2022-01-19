<%-- 
    Document   : UserManagement
    Created on : Feb 13, 2020, 12:47:46 AM
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
        <h1 align="center">Administration</h1>
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
        
         
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                 
                 String sqlselect = "SELECT * FROM users";

                ResultSet res = st.executeQuery(sqlselect);
              
                out.println("Hello "+type);
        %>
        <h2 align='center'>User Management</h2>
        <form name="stock" action="btnusercheck.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>  
                    
                    <tbody>
                        <tr>
                            <td  align="right">Email</td>
                            <td><input type="text" name="Email" value="" required /></td>                          
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Add" name="btnuserAdd" />&nbsp;<input type="submit" value="Update" name="btnuserUpdate" />&nbsp;<input type="submit" value="Delete" name="btnuserDelete" /></td>                           
                        </tr>
                    </tbody>
                </table>
                
                
                
                
                <table bgcolor="#F06E6E" border="1" width="50%" cellpadding="10" align='center'>
                    
                    <thead>
                        <tr>
                            <th>Email</th>
                            <th>Password</th>
                            <th>User Role</th>
                            <th>Address</th>
                            <th>Telephone</th>
                            <th>Customer Name</th>
                        </tr>
                    </thead>
                    
                    <%
                while (res.next()) 
                {                           
                    %>        
                    <tbody>
                        <tr>
                            <td><input type="text" name="Email" readonly value="<%=res.getString("Email")%>" /></td>
                            <td><input type="text" name="Password" readonly value="<%=res.getString("Password")%>" /></td>
                            <td><input type="text" name="UserRole" readonly value="<%=res.getString("UserRole")%>" /></td>
                            <td><input type="text" name="Address" readonly value="<%=res.getString("Address")%>" /></td>
                            <td><input type="text" name="Telephone" readonly value="<%=res.getString("Telephone")%>" /></td>
                            <td><input type="text" name="CustomerName" readonly value="<%=res.getString("CustomerName")%>" /></td>
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
    </body>
</html>
