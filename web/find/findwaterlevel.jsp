<%-- 
    Document   : findrainfull
    Created on : 2017-4-19, 16:29:19
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

        
          <form role="form" action="../show_W_L_Q.action" method="post" >

       <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>按什么查询</th>
                  <th>关键词</th>                 
                </tr>
             
             
                <tr>
                  <td> <select class="form-control" id="query" name="query">
      <option>站点</option>
      <option>日期</option>
    </select>
          </td>
                  <td><input type="text" class="form-control" id="keyword" placeholder="关键词" name="keyword"></td>                               
                  
                </tr>               
                
               </thead>
               
               
            </table>
          </div> 
    
          <button type="submit" class="btn btn-default">查询</button>
         
        </form>
        
        <br/>
        
        <table class="table table-hover">                                                 
                  <thead>
                   <tr>
                        <th>监测站点</th>
                        <th>水位</th>
                        <th>预警值</th>
                        <th>测量时间</th>
                    </tr>
                    </thead>
                    
                    
            <tbody>
                
          <s:iterator value="#session.manage" id="it">
            <tr>                  
          <td><s:property value="#it.site"/></td>
          <td><s:property value="#it.number"/></td>
            <td><s:property value="#it.warning"/></td>
          <td><s:property value="#it.time"/></td> 
           </tr>
           </s:iterator> 

            </tbody>
    
                 </table>
        
            
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
