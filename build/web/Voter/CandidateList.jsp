<%-- 
    Document   : CandidateList
    Created on : Jul 4, 2016, 12:57:11 PM
    Author     : Sweychya
--%>

<%@page import="Domain.Candidate.Candidate"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript" src="Date.jsp"></script>
                       <script type="text/javascript" src="js/time.js"></script>

    <title>Candidate List</title>
    <link rel="stylesheet" href="css/login_style.css">
 <script type="text/javascript">
</script>
    </head>
    <body onload="notify_date()">
        <div class="result1"></div>
        <h1>BALLOT PAGE</h1>
        ${sessionScope.voter.name};
         <table  border="10px" width="500px">
                        <thead>
                        <tr>
                            <th></th>
                            <th>s.no</th>
                            <th>name</th>
                            <th>logo</th>
                            <th>party</th>                            
                            <th>district</th>
                            <th>vote</th>
                        </tr>
                        </thead>

                        <tbody>
                            <form action="submit" method="post">
                            <% List<Candidate> candidateList = (List<Candidate>)request.getAttribute("candidateList");


                            for (Candidate candidate: candidateList){ 
                                int count=0;
                        %>
                            

                        <tr> 
                            <td><%=candidate.getId()%></td>
                            <td><%=candidate.getLogo()%></td>
                           <td><%=candidate.getName()%></td>
                           <td><%=candidate.getLogo()%></td>

                           <td><%=candidate.getParty()%></td>
                           <td><%=candidate.getDistrict()%></td>
                            <input type="hidden" name="page" value="Form">
                           <td> <input type="radio" name="radioName" value="<%=candidate.getId()%>" /></td>
                           
                            
                            </tr>
                            <%}%>
                        </tbody></table>
                        <input type="submit" value="submit">
                                                    </form>

    </body>
</html>
