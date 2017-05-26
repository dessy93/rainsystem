<%-- 
    Document   : rainmonitor
    Created on : 2017-3-2, 16:17:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    </head>
    <body style="color:black">

        <table class="table table-hover">                                                 
                  <thead>
                   <tr>
                        <th>监测站点</th>
                        <th>降雨量</th>
                        <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp测量时间</th>
                    </tr>
                    </thead>
                    
                    
            <tbody>
                
          <s:iterator value="#session.manage" id="it">
            <tr>                  
          <td><a href="/rainsystem/shishi/chart.jsp" target="mainframe3"><s:property value="#it.site"/></a></td>
          <td><s:property value="#it.number"/></td>
          <td><s:property value="#it.time"/></td> 
           </tr>
           </s:iterator> 

            </tbody>
    
                 </table>
        
                <iframe src="../shishi/chart.jsp" name="mainframe3"  height="400px" width="100%" allowtransparency="true">
              
                      
                  </iframe>
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   
   <script>
$(function () { 
	$("[data-toggle='popover']").popover();
});
</script>

    </body>
</html>
