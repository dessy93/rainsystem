<%-- 
    Document   : dispatcher
    Created on : 2017-3-13, 9:41:13
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
    <body  style="color:black">
        
    <%
        String exportToExcel = request.getParameter("exportToExcel");
        if (exportToExcel != null
                && exportToExcel.toString().equalsIgnoreCase("YES")) {
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "inline; filename="
                    + "excel.xls");

        }
    %>
   
    
    <div class="list-group"  style="width:16%;float:left">
  <a  class="list-group-item active">
    物质中心信息
  </a>
  <a href="../M_D_manage.action" class="list-group-item" target="mainframe">硚口物质中心</a>
  <a href="../M1_D_manage.action" class="list-group-item" target="mainframe">团山物质中心</a>
 
</div>
    
     <div style="width:80%;float:right">
              
                                      
               <iframe src="../floodmanage/materiallist.jsp" name="mainframe"  height="300px" width="100%" allowtransparency="true" frameborder="no">             
                      
                </iframe>           
     
         
             <%
        if (exportToExcel == null) {
    %>
    <a  class="btn btn-primary" href="staffdispatcher.jsp?exportToExcel=YES">生成报表</a>
    <%
        }
    %>
         </div>
    

        
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
