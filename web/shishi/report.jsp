<%-- 
    Document   : report
    Created on : 2017-3-2, 16:45:34
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
    <body>
        
            <form role="form" action="manage_R_P.action" method="post" >

       <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>地点</th>
                  <th>描述</th>
                  <th>时间</th>
     
    
                </tr>
             
             
                <tr>
                  <td><input type="text" class="form-control" id="client" placeholder="地点" name="place"></td>
                  <td><input type="text" class="form-control" id="order_number" placeholder="描述" name="level"></td>
                  <td><input type="datetime" class="form-control" id="item_number" placeholder="时间" name="time"></td>
                  <td>   <button type="submit" class="btn btn-default">提交</button></td>
               
                  
                </tr>
             
               
                
               </thead>
               
               
            </table>
          </div> 
    
       
         
        </form>
        
      
    
 <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                 <th>地点</th>
                  <th>描述</th>
                  <th>时间</th>

                </tr>
              </thead>
              <tbody>
                 <s:iterator value="#session.manage" id="it">
             <tr>      
    <td><s:property value="#it.place"/></td>
    <td><s:property value="#it.level"/></td>
    <td><s:property value="#it.time"/></td>
           </tr>
           </s:iterator> 
                
              </tbody>
            </table>
          </div> 
        
     

        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        
    </body>
</html>
