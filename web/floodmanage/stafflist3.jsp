<%-- 
    Document   : stafflist
    Created on : 2017-3-27, 14:26:50
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
         <table class="table table-condensed">
               
                 </br>                 
                                      
                  <thead>
                   <tr>
                        
                        <th>姓名</th>
                        <th>电话</th>
                        <th>所属支局</th>
                        <th>操作</th>
                       
                    </tr>
                    </thead>
                    
                    
            <tbody>                
             <% int i = 0;%>       
             <s:iterator value="#session.manage3" id="it">
              
            <tr>  
                
                <td id =<%="name" + i%> ><s:property value="#it.name"/></td>
          <td  id = <%="tel" + i%> ><s:property value="#it.tel"/></td>  
          <td id = <%="army" + i%> ><s:property value="#it.army"/></td> 
          <td><a onclick="addRow(<%=i%>)">添加</a></td>
          <% i++ ;%>
           </tr>
           </s:iterator> 
           
            </tbody>
    
            </table>
        
        
           <table  id = "testTbl" class="table table-condensed">
               
                 </br>                 
                                      
                  <thead>
                   <tr>
                       
                        <th>姓名</th>
                        <th>电话</th>
                        <th>所属支局</th>
                        <th>操作</th>
                       
                    </tr>
                    </thead>
                    
                    
            <tbody>                
       
        
           
            </tbody>
    
            </table>
        
        
             <script>
function addRow(i){
//添加行
var newTr = testTbl.insertRow();
//添加列
var newTd0 = newTr.insertCell();
var newTd1 = newTr.insertCell();
var newTd2 = newTr.insertCell();
var newTd3 = newTr.insertCell();

//设置列内容和属性
newTd0.innerText = document.getElementById("name"+i ).innerHTML;
newTd1.innerText = document.getElementById("tel"+i).innerHTML;
newTd2.innerText =  document.getElementById("army"+i).innerHTML;
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
