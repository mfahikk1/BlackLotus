<%-- 
    Document   : AddStockAction
    Created on : Feb 15, 2020, 3:39:11 PM
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
        <%-- <meta http-equiv = "refresh" content = "0.1; url = StockManagement.jsp" />--%>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String PName=request.getParameter("PName");
            String PQuantity=request.getParameter("PQuantity");
            String EventCategory=request.getParameter("EventCategory");
            String FlavourCategory=request.getParameter("FlavorCategory");
            
             String cimg=request.getParameter("imgsel");
             
             String dst="E:\\BlackLotus\\web\\Images\\";
             
            Path sourcepath = Paths.get(cimg);
            Path destinationepath = Paths.get("E:\\BlackLotus\\web\\Images\\"+PName+".jpg");        
    
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BlackLotus?zeroDateTimeBehavior=convertToNull", "root", "1997");
                Statement st = con.createStatement();
                
                //String val="insert into stock (ProductName,Quantity,EventCategory,FlavourCategory)values('"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"')";
                //out.println(val);
                st.executeUpdate("insert into stock (ProductName,Quantity,EventCategory,FlavourCategory,cImage)values('"+PName+"','"+PQuantity+"','"+EventCategory+"','"+FlavourCategory+"','"+cimg+"')");
          
                java.io.File f1=new java.io.File(cimg);
                 java.io.File f2=new java.io.File(dst);
               f1.renameTo(f2);
               out.println(f1.renameTo(f2));

                
                //out.println("Product Added Successfully");
                
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
      
        %>
    </body></html>
