<%-- 
    Document   : ballot
    Created on : Jul 10, 2016, 12:26:49 AM
    Author     : Shruti Shrestha
--%>

<%@page import="Domain.Candidate.Candidate"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="table/css/reset.css">

    
        <link rel="stylesheet" href="css/table_style.css">

        <script src="bootstrap/js/jquery.js"></script>
        
        <script >
            <%@include file="bootstrap/js/bootstrap.js" %>
        </script>
        
        <!--<link rel="stylesheet" type="text/css" >-->
       
     </head>
    <% 
       
        boolean readOnly = true;
        
       %>

<body >
      
    
        <%@include file="Header1.jsp" %>
       <div class="main">
          
                </div>
                   </center>
               <br>
               
               <br>
               <center>
                   <h4> </h4>
               </center>
               <br>
                <h1>Candidates  <span>of</span> ${sessionScope.voter.district} District</span></h1>
 <section> <!--for demo wrap-->
    <font align="right"> <div class="result1"></div></font>

<div  class="tbl-header">
<table cellpadding="0" cellspacing="0" border="0">
  <thead>
    <tr>
      <th>NAME</th>
      <th>LOGO</th>
      <th>PARTY</th>
      <th>VOTE</th>

     
    </tr>
  </thead>
</table>
</div>
<div  class="tbl-content">
<table cellpadding="0" cellspacing="0" border="0">
   <form action="submit" method="post">
     <% List<Candidate> candidateList = (List<Candidate>)request.getAttribute("candidateList");


                            for (Candidate candidate: candidateList){ 
                                int count=0;
                        %>
                            

                        <tr> 
                            
                            
                           <td><%=candidate.getName()%></td>
                          
                            <td><%=candidate.getLogo()%></td>
                           <td><%=candidate.getParty()%></td>
                        
                       
                          <input type="hidden" name="page" value="Form">
                           <td> <input type="radio" name="radioName" value="<%=candidate.getId()%>" /></td>
                           
                            
                            </tr>
                            <%}%>
                        </tbody></table>
                        <input type="submit" value="submit">
                                                    </form>

</div>
</section>


<!-- follow me template -->

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    

</body>
</html>