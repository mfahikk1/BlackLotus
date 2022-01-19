<%-- 
    Document   : AddUserAction
    Created on : Feb 16, 2020, 6:31:29 PM
    Author     : Fahik's PC
--%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.StandardCopyOption"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv = "refresh" content = "0.1; url = UserManagement.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Email=request.getParameter("Email");
            String Password=request.getParameter("Password");
            String UserRole=request.getParameter("UserRole");
            String Address=request.getParameter("Address");
            String Telephone=request.getParameter("Telephone");
            String CustomerName=request.getParameter("CustomerName");
            String UserImage=request.getParameter("UserImage");
            
             //String cimg=request.getParameter("imgsel");
             
             //String dst="E:\\BlackLotus\\web\\Images\\";
             
             //Path sourcepath = Paths.get(cimg);
        //Path destinationepath = Paths.get("E:\\BlackLotus\\web\\Images\\"+Email+".jpg");        
    
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                //String val="insert into stock (ProductName,Quantity,EventCategory,FlavourCategory)values('"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"')";
                //out.println(val);
                st.executeUpdate("insert into users (Email,Password,UserRole,Address,Telephone,CustomerName)values('"+Email+"','"+Password+"','"+UserRole+"','"+Address+"','"+Telephone+"','"+CustomerName+"')");
          
                //java.io.File f1=new java.io.File(cimg);
               //f1.renameTo(f2);
               //out.println(f1.renameTo(f2));

                
                //out.println("User Added Successfully");
                
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
      
        %>
        
    </body>
</html>
