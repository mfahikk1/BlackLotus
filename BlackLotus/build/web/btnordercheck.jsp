<%-- 
    Document   : btnordercheck
    Created on : Feb 17, 2020, 6:00:40 AM
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
    
        String ProductName =request.getParameter("ProductName");

        Cookie ProductCookie=new Cookie("mycookie",ProductName+"");
        ProductCookie.setMaxAge(30);
        response.addCookie(ProductCookie);
            
        if(request.getParameter("btnorderAdd")!=null)
            {
                 
                    response.sendRedirect("addorder.jsp");
                    
            }   
            
            else if(request.getParameter("btnorderUpdate")!=null)
            {
                
                    response.sendRedirect("updateorder.jsp");            
            }
        
            else if(request.getParameter("btnorderDelete")!=null)
            {
                
                    response.sendRedirect("deleteorder.jsp");            
            }
        %>
    </body>
 
    
</html>
