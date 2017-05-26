<%-- 
    Document   : floodwarning
    Created on : 2017-3-13, 9:40:31
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
          <!-- Custom styles for this template -->
    <link href="../res/signin.css" rel="stylesheet">
    </head>
    <body style="color:black">

      <div class="container">

      <form class="form-signin"  role="form" action="../manage_S_M.action" method="post">
        
       <center> <h2 class="form-signin-heading">用户注册</h2></center>
        <label for="inputUsername" class="sr-only">用户名</label>
        <input type="text" id="inputUsername" class="form-control" placeholder="Username" required name="username" />
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password"/>

        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
      </form>

    </div> <!-- /container -->
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        
    </body>
</html>

