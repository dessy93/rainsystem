<%-- 
    Document   : weather
    Created on : 2017-3-2, 16:29:32
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:iterator value="#session.link" id="it">
           
            <img src= <s:property value="#it"/>  height="300" width= 100%>
        </s:iterator>
        
    </body>
</html>
