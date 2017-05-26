<%-- 
    Document   : 2
    Created on : 2017-2-21, 10:14:48
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
  <title>Load a basic WebMap - 4.2</title>

 

  <link rel="stylesheet" href="https://js.arcgis.com/4.2/esri/css/main.css">

  <script>
      var con = new ActiveXObject("ADODB.Connection");
con.ConnectionString = "DRIVER={MySQL ODBC 5.7 Driver};OPTION=3;SERVER=127.0.0.1;User ID=root;Password=1234;Database=raindata;Port=3306";  
con.open;
var rs = new ActiveXObject("ADODB.Recordset");
rs.open("select * from rainfull", con);
while (!rs.eof) {
var u = rs.Fields("site");
document.write(u);
rs.moveNext;
}
rs.close();
rs = null; 
con.close();
con = null;
  </script>


</head>

<body>
  
</body>

</html>