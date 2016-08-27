

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript" src="Date.jsp"></script>
    <title>Login Form</title>
    <link rel="stylesheet" href="css/login_style.css">
 <script type="text/javascript">
       
    function notify_date(){
        var value;
          $.ajax({
              url:'Date.jsp',
              success:function(data){
                    $('.result1').html(data);
                      value=document.getElementById("value").value;
                },
        complete:function(){
                          if(value>=50){
                           document.getElementById('voter').style.display = 'block';
                    document.getElementById('result').style.display = 'block';
                           $.ajax({
                               url:'SetResult.jsp',
                               success:function(data){
                                   $('.result').html(data);
                               }
                           });
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
  
     <div id="voter">  <a href="VoterLogin?page=VoterLogin" >Voter</a><br /></div>
     <p id="result"> <a href="result?page=result" >Result</a></p><br />

 
    <a href="AdminLogin?page=AdminLogin">Admin</a>
    <br />
    <a href="VotedList?page=VotedList">voterList</a>
        <a href="ForumPage?page=ForumPage">ForumPage</a>
              

        

</body>
</html>
