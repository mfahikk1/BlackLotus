<%-- 
    Document   : CheckUser
    Created on : Jan 12, 2020, 10:21:35 AM
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
    </head>
    <body>
        <%
            String Email =request.getParameter("Email");
            String CustomerName =request.getParameter("CustomerName");
            String val1 =request.getParameter("UserName");
            String val2 =request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
            Statement st = con.createStatement();
            
            String sqlselect = "SELECT * FROM users where Email='"+val1+"' AND Password='"+val2+"'";
            ResultSet res = st.executeQuery(sqlselect); 
            
            


            if (val1 !=null && val2 !=null)
            {
                if(request.getParameter("btnlogin")!=null)
            {
                    

                if(res.next())
                {
                    if (res.getString(3).equals("Admin"))
                    {
                        Cookie UserCookie=new Cookie("UserRole","Admin");
                        UserCookie.setMaxAge(30);
                        response.addCookie(UserCookie);
                        response.sendRedirect("Admin.jsp");
                    }
                    else if (res.getString(3).equals("Customer"))
                    {
                        Cookie UserCookie=new Cookie("UserRole","Customer");
                        UserCookie.setMaxAge(30);
                        response.addCookie(UserCookie);
                        response.sendRedirect("Customer.jsp");
                        
                    }
                    else if (res.getString(3).equals("Outlet"))
                    {
                        Cookie UserCookie=new Cookie("UserRole","Outlet");
                        UserCookie.setMaxAge(30);
                        response.addCookie(UserCookie);
                        response.sendRedirect("Outlet.jsp");
                        
                    }
                    else if (res.getString(3).equals("Vendors"))
                    {
                        Cookie UserCookie=new Cookie("UserRole","Vendors");
                        UserCookie.setMaxAge(30);
                        response.addCookie(UserCookie);
                        response.sendRedirect("Vendors.jsp");
                        
                    }
                    else {
                        out.println("Invalid Login");
                        
                    }
                    
                }
                else
                {
                    
                    out.println("Invalid password or user name");
                   
                }
            }
            
            else if(request.getParameter("btnSignup")!=null)
            {
               Cookie UserCookie=new Cookie("mycookie",Email+"");
               UserCookie.setMaxAge(30);
               response.addCookie(UserCookie);
               response.sendRedirect("Registration.jsp");            
            }
            
            }
            
            
            
        %>
        
        
               
    </body>
</html>
