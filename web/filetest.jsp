<%-- 
    Document   : filetest
    Created on : 2017-4-6, 14:56:12
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        　<form action="fileUpload.action" method="post" enctype="multipart/form-data">
    　　
        username: <input type="text" name="username"><br>
        file: <input type="file" name="file"><br>
        
        <input type="submit" value="submit">
    </form>
    </body>
</html>
