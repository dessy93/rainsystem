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
    支局信息
  </a>
  <a href="../S_D_manage.action" class="list-group-item" target="mainframe">洪山区支局</a>
  <a href="../S1_D_manage.action" class="list-group-item" target="mainframe">汉阳区支局</a>
  <a href="../S2_D_manage.action" class="list-group-item" target="mainframe">青山区支局</a>
  <a href="../S3_D_manage.action" class="list-group-item" target="mainframe">江夏区支局</a>
</div>
    
     <div style="width:80%;float:right">
               <iframe src="../floodmanage/stafflist.jsp" name="mainframe"  height="300px" width="100%" allowtransparency="true" frameborder="no">
              
                      
                </iframe>           
         
         
         
         
         
         
             <%
        if (exportToExcel == null) {
    %>
    <a  class="btn btn-primary" href="staffdispatcher.jsp?exportToExcel=YES">生成报表</a>
    <%
        }
    %>
         </div>
    

         <script>
function addRow(){
//添加行
var newTr = testTbl.insertRow();
//添加列
var newTd0 = newTr.insertCell();
var newTd1 = newTr.insertCell();
var newTd2 = newTr.insertCell();
var newTd3 = newTr.insertCell();
//设置列内容和属性
newTd0.innerText = document.getElementById("name").innerHTML;
newTd1.innerText = document.getElementById("tel").innerHTML;
newTd2.innerText =  document.getElementById("group").innerHTML;
newTd3.innerHTML= '<input type="button" name="del" value="删除" onclick="del(this)">';
}
function del(o)
{
var   t=document.getElementById('testTbl');
t.deleteRow(o.parentNode.parentNode.rowIndex)
}
</script>
        
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
