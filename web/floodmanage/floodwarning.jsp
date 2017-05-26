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
    </head>
    <body style="color:black">
    <center>                
             <s:iterator value="#session.manage3" id="it">
                                    
           <h3 ><s:property value="#it.site"/>  水位达 <s:property value="#it.number"/> 超过警戒线  </h3>
        
        
        

        
           </s:iterator> 

  
      <a  class="btn btn-danger" href="/rainsystem/shishi/2.jsp">启动预警Danger</a>
    </center>
  
        
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        
    </body>
</html>

