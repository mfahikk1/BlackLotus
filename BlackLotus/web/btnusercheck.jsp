<%-- 
    Document   : btnusercheck
    Created on : Feb 16, 2020, 6:15:29 PM
    Author     : Fahik's PC
--%>

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
        
        Cookie UserCookie=new Cookie("mycookie",Email+"");
        UserCookie.setMaxAge(30);
        response.addCookie(UserCookie);
            
        if(request.getParameter("btnuserAdd")!=null)
            {
                 
                    response.sendRedirect("adduser.jsp");
                    
            }   
            
            else if(request.getParameter("btnuserUpdate")!=null)
            {
                
                    response.sendRedirect("updateuser.jsp");            
            }
        
            else if(request.getParameter("btnuserDelete")!=null)
            {
                
                    response.sendRedirect("deleteuser.jsp");            
            }
        %>
    </body>
</html>
