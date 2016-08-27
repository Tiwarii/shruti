<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login Form</title>
    <link rel="stylesheet" href="css/login_style.css">
    <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
<section class="container">

    <h1>admin</h1>
        <form method="post" action="alogin">
            <input type="hidden" name="page" value="AdminForm">
    <div class="message_error">${message}</div>
    <p><input type="text" name="aname" value="" placeholder="name"></p>
           
                      
            <p><input type="text" name="apassword" value="" placeholder="password"></p>

            <p class="submit"><input type="submit" name="Login" value="Login"></p>
        </form>
    

    <div class="login-help">
        <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
</section>
</body>
</html>
