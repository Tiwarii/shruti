<%-- 
    Document   : main
    Created on : Jun 2, 2016, 5:41:01 PM
    Author     : Rashmi Tiwari
--%>

<%@page import="com.ovp.entities.Commisner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>main</title>
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
    </head>
    <body>
       
         <%@include file="Header.jsp" %>
         <% 
       
        boolean readOnly = true;
        if(verifiedCommisner!= null){
            out.println("welcome  "+verifiedCommisner.getUserName());
            readOnly = false;
            
        }
       %>
       
        <div class="main">
            <div class="box1">
            
             
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >  campaign:</legend>
                      <form role="form">
                        <div class="form-group" >
                            <label for="start-date">Start date:</label>
                            <input type="date" class="form-control" id="start-date" value="2017/06/02" <%=readOnly==true?"readonly":""%>>
                        </div>
                          
                        <div class="form-group">
                             <label for="endDate">End Date:</label>
                             <input class="form-control"  type="date" id="endDate" value="2017/07/22" <%=readOnly==true?"readonly":""%>>
                         </div>
                          <div class="form-group" >
                            <label for="start-Time">Start date:</label>
                            <input type="time" class="form-control" id="start-Time" value="" <%=readOnly==true?"readonly":""%>>
                        </div>
                          
                        <div class="form-group">
                             <label for="endTime">End Date:</label>
                             <input class="form-control"  type="time" id="endTime" value="" <%=readOnly==true?"readonly":""%>>
                         </div>
                        <a href="logout.jsp">Logout</a><br>
                        
                        </form>
                    </fieldset>
                          
        
       
      
                
                    
            </div>    
        </div>
        
    </body>
</html>
