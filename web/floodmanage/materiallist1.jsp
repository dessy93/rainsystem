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
                        
                        <th>名称</th>
                        <th>单位</th>
                        <th>数量</th>
                        <th>管理人员</th>
                        <th>联系电话</th>
                        <th>所在仓库</th>
                       
                        <th>操作</th>
                       
                    </tr>
                    </thead>
                    
                    
            <tbody>                
             <% int i = 0;%>       
             <s:iterator value="#session.manage1" id="it">
              
            <tr>  
                
                <td id =<%="name" + i%> ><s:property value="#it.name"/></td>
          <td  id = <%="unit" + i%> ><s:property value="#it.unit"/></td>
          <td id = <%="number" + i%> ><s:property value="#it.number"/></td> 
          <td id = <%="staff" + i%> ><s:property value="#it.staff"/></td> 
          <td id = <%="staffphone" + i%> ><s:property value="#it.staffphone"/></td> 
          <td id = <%="storehouse" + i%> ><s:property value="#it.storehouse"/></td> 
         
          <td><a onclick="addRow(<%=i%>)">添加</a></td>
          <% i++ ;%>
           </tr>
           </s:iterator> 
           
            </tbody>
    
            </table>
        
            <a>输入数量:</a> <input type="text"  value="0" id="inputnumber"> 
     

        
           <table  id = "testTbl" class="table table-condensed">
               
                 </br>                 
                                      
                  <thead>
                   <tr>
                       
                       <th>名称</th>
                        <th>单位</th>
                        <th>数量</th>
                        <th>管理人员</th>
                        <th>联系电话</th>
                        <th>所在仓库</th>
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
var newTd4 = newTr.insertCell();
var newTd5 = newTr.insertCell();
var newTd6 = newTr.insertCell();

//设置列内容和属性
newTd0.innerText = document.getElementById("name"+i ).innerHTML;
newTd1.innerText = document.getElementById("unit"+i).innerHTML;
newTd2.innerText =  document.getElementById("inputnumber").value;
newTd3.innerText = document.getElementById("staff"+i ).innerHTML;
newTd4.innerText = document.getElementById("staffphone"+i).innerHTML;
newTd5.innerText =  document.getElementById("storehouse"+i).innerHTML;
newTd6.innerHTML= '<input type="button" name="del" value="删除" onclick="del(this)">';
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
