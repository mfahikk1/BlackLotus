<%-- 
    Document   : btncheck
    Created on : Feb 15, 2020, 2:19:11 PM
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
    
        String PName =request.getParameter("PName");
        
        Cookie UserCookie=new Cookie("mycookie",PName+"");
        UserCookie.setMaxAge(30);
        response.addCookie(UserCookie);
            
        if(request.getParameter("btnAdd")!=null)
            {
                 
                    response.sendRedirect("addstock.jsp");
                    
            }   
            
            else if(request.getParameter("btnUpdate")!=null)
            {
                
                    response.sendRedirect("updatestock.jsp");            
            }
        
            else if(request.getParameter("btnDelete")!=null)
            {
                
                    response.sendRedirect("deletestock.jsp");            
            }
        %>
    </body>
</html>
