<%-- 
    Document   : admin
    Created on : Jul 7, 2016, 6:49:15 AM
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
      <div> <center>admin=${admin.name};</center></div>
        <br>
        <a href="AddCandidate?page=AddCandidate">add candidate</a>
         <a href="CandidateList?page=CandidateList">Candidate List</a>
          <a href="result?page=result">Result</a>
    </body>
</html>
