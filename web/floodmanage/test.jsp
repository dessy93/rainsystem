<%-- 
    Document   : test
    Created on : 2017-3-27, 10:15:17
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<table id="testTbl" border=1>
<tr>
<td>
产品名称
</td>
<td>
产品数量
</td>
<td>
产品单价
</td>
</tr>
<tr>
<td>
<select name="a">
   <option value="电子">电子</option>
   <option value="电器">电器</option>
</select></td>
<td>
    <input type="text" name="b">
     </td>
<td>
    <input type="text" name="c">
     </td>
</td>
</table>
<input type="button" name="Submit2" value="添加" onclick="addRow()">
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
newTd0.innerText = document.all("a").options[document.all("a").selectedIndex].text;
newTd1.innerText = document.all("b").value;
newTd2.innerText = document.all("c").value;
newTd3.innerHTML= '<input type="button" name="del" value="删除" onclick="del(this)">';
}
function del(o)
{
var   t=document.getElementById('testTbl');
t.deleteRow(o.parentNode.parentNode.rowIndex)
}
</script>
</body>
</html>
