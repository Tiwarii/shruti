<%-- 
    Document   : yo
    Created on : Aug 7, 2016, 12:22:46 PM
    Author     : acer
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
         String vemail=request.getParameter("email");
        
                
        %>
      ${vemail}
        <h1>Hello World!</h1>
    </body>
</html>
