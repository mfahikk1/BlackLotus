<%-- 
    Document   : updateuser
    Created on : Feb 17, 2020, 4:25:44 AM
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
             
             String PName=request.getParameter("PName"); 
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
        <form name="updateuser" action="UpdateUserAction.jsp" method="POST" align="center">
            <div>
                <table border="0" width="60%" cellpadding="10px;" align='center'>
                    <%
                while (res.next()) 
                {                
               
                    %>
                    <tbody>
                        <tr>
                            <td  align="right">Email</td>
                            <td><input type="text" name="Email" value="<%=res.getString("Email")%>" readonly /></td>                          
                        </tr>
                        <tr>
                            <td  align="right">Password</td>
                            <td><input type="Password" name="Password" value="<%=res.getString("Password")%>" required/></td>                          
                        </tr>
                        <tr>
                            <td  align="right">User Role</td>
                            <td><select name="UserRole" value="" required><option><%=res.getString("UserRole")%></option><option>Outlet</option><option>Vendors</option><option>Customer</option></select></td>                           
                        </tr>
                        <tr>
                        <td  align="right">Address</td>
                        <td><input type="text" name="Address" value="<%=res.getString("Address")%>" required /></td>
                        </tr>
                        <tr>
                        <td  align="right">Telephone</td>
                        <td><input type="text" name="Telephone" value="<%=res.getString("Telephone")%>" required/></td>
                        </tr>
                        <tr>
                        <td  align="right">Customer Name</td>
                        <td><input type="text" name="CustomerName" value="<%=res.getString("CustomerName")%>" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Update" id="btnUpdate" onclick="myFunction()"/>&nbsp;</td>                           
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
          alert("User Updated Successfully");
        }
        </script>
    </body>
</html>
