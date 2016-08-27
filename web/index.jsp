

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
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
 <script type="text/javascript">
       
    function notify_date(){
        var value;
        var db;
          $.ajax({
              url:'Date.jsp',
              success:function(data){
                    $('.result1').html(data);
                       db=document.getElementById("db").value;
                        value=document.getElementById("value").value;   
//                 
                      
                     
                    
                },
        complete:function(){
                          if(value>=59){
                            
                           document.getElementById('voter').style.display = 'none';
                    document.getElementById('result').style.display = 'block';
                      document.getElementById("dbi").innerHTML=db;
                    if(db==0)
                    {
                           $.ajax({
                               url:'SetResult.jsp',
                               success:function(data){
                                   $('.result').html(data);
                               }
                           });
                       }
        }
                          else{
                        
                               document.getElementById('result').style.display = 'none';
                    document.getElementById('voter').style.display = 'block';
                     setTimeout(notify_date(),1000);
                 }
                 }
                  });
              }
                            
            
          </script>
    
</head>
<body onload="notify_date()">
        
 <div class="result1"></div>
  <div id="dbi"></div>
     <div id="voter">  <a href="VoterLogin?page=VoterLogin" >Voter</a><br /></div>
     <p id="result"> <a href="define?page=map" >Result</a></p><br />
<a href="foru?page=CandidateList">Candidate List</a>
 
    <a href="AdminLogin?page=AdminLogin">Admin</a>
    <br />
    <a href="VotedList?page=VotedList">voterList</a>
        <a href="ForumPage?page=ForumPage">ForumPage</a>
              

        

</body>
</html>
