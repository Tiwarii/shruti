<%-- 
    Document   : registrationForm
    Created on : Jun 2, 2016, 10:25:23 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
         <script type="text/javascript">
             function pig(){
                                     document.getElementById('emailpin').style.display = 'none';
                                    
                                }

                                
  
//   var form=$("#myForm");
//$("#btn1").click(function(){
//$.ajax({
//        type:"POST",
//        url:frm(),
//        data:form.serialize(),
//        success: function(response){
//              document.getElementById('emailpin').style.display = 'block';
//        }
//    });
//});
//                      
                     
                    
                
                            
                        </script>
    </head>
    <body onload="pig()">
         <%@include file="Header1.jsp" %>
        <div class="main">
            <div class="box1">
            
              
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >Registration:</legend>
                      <form role="form"  method="post" action="submitreg" id="myForm">
                             <input type="hidden" name="page" value="regemail" >
                             <h1>${mes}</h1>
                        <div class="form-group" >
                            <label for="first-name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder=" name">
                        </div>
                           <div class="form-group" >
                            <label for="first-name">District:</label>
                            <input type="text" class="form-control" id="district" name="district" placeholder=" name">
                        </div>
                        
                       
                         
                          <div class="form-group">
                            <label for="ctn">Citizenship No.:</label>
                            <input type="text" class="form-control" id="citizenship" name="citizenship" placeholder="enter your citizenship number">
                        </div>
                        <div class="form-group">
                            <label for="vid">Voter ID:</label>
                            <input type="text" class="form-control" id="voter_id" name="voter_id" placeholder="enter your voter id">
                        </div>
                          <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                          </div>
                          
                         <input type="submit" id="btn1" value="submit" >
                        </form>
                        <div class="form-group" id="emailpin">
                        <form action="FirstPinForm.jsp" method="post"> 
                         
                            <label >Pin:</label>
                            <input type="text" class="form-control" id="pin" name="pin" placeholder="pin">
                           <input type="submit" id="btn2" value="submit" >
                        
                       </form>  </div>
                    </fieldset>
                
                    
            </div>   
            
        </div>
                       
    </body>
</html>
