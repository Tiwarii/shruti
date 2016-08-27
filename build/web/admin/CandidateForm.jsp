<%-- 
    Document   : AddCandidate
    Created on : Jul 7, 2016, 8:23:39 AM
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
        
 <form method="post" action="addCandidateForm">
            <input type="hidden" name="page" value="CandidateForm">
    <div class="message_error">${message}</div>
            <p><input type="text" name="id" value="" placeholder="id"></p>
            <p><input type="text" name="name" value="" placeholder="name"></p>
            <p><input type="file" name="logo" value=""></p>
            <p><input type="text" name="party" value="" placeholder="party"></p>
            <p><input type="text" name="district" value="" placeholder="district"></p>
            <p class="submit"><input type="submit" name="submit" value="submit"></p>
           

                                    
        </form>
    
    </body>
</html>
