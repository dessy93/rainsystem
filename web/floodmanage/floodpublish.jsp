<%-- 
    Document   : report
    Created on : 2017-3-2, 16:45:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    </head>
    <body >
  
  <center>      
<form class="form-horizontal"  role="form" action="../manage_F_P.action" method="post" enctype="multipart/form-data">
    <div style="width: 50%;text-align:center" >
 <div class="form-group">
    <label for="name">汛情描述</label>
    <textarea class="form-control" rows="3"  name="text"></textarea>
  </div>
    
    <div class="form-group">
    <label for="time">时间</label>
    <input type="date" class="form-control" name="time">
  </div>
    
    <div class="form-group">
    <label for="inputfile">上传附件</label>
    <input type="file"  name="inputfile">
  </div>
        
        
          <div class="form-group" >
   
      <button type="submit" class="btn btn-default">发布</button>
    
  </div>
        
        </div>
    
</form>
        
     </center>    
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        
    </body>
</html>
