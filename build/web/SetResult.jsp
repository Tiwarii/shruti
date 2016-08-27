<%-- 
    Document   : abc1
    Created on : Jun 12, 2016, 4:39:53 PM
    Author     : swagat
--%>

<%@page import="utils.Database_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
       

       
    <% 
  
            String query="insert into tblresult(party,value) select party,sum(value) from tblcandidate  group by party ";
        PreparedStatement pstm=new Database_connection().getPreparedStatement(query);
          
          try {
              pstm.execute();
                            

          } catch (SQLException ex) {
             out.print("this is catch");
          }
         
             
    %>
   
  

    </body>
</html>
