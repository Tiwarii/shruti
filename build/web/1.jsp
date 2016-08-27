<%-- 
    Document   : 1
    Created on : Jul 19, 2016, 5:51:50 AM
    Author     : Sweychya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <h4>Add a Coffee Order</h4>
<form name="form1" id="form1">
            <p> Candidate name:</p><input type="text" name="CandidateName" id="name"></p>
            Wish:<input type="text" style="font-size: 18pt; height: 300px; width:1000px; " name="wish">
         <input type="submit" value="submit" id="submit">
 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
    
          var frm=$('#form1');
          frm.submit(function(){
              
                   $.ajax({
                       type:'POST',
                      
                     data:frm.serialize(),
                     url:'AjaxController',
                 })
                         .success:function(data){
                          $('#result1').html(data)
                          );
                       }
                       
                   });
                   
                   return false;
               }) ;
                
           
            
            
        </script>