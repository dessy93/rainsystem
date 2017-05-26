<%-- 
    Document   : systemindex
    Created on : 2017-3-6, 16:14:45
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
   
   <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>基于Gis的洪涝监测系统</title>
       
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    
    <!-- Custom styles for this template -->
    <link href="bootstrap/cover.css" rel="stylesheet">
        
 
  <script language="javascript" type="text/javascript">
function time()

{

  var now= new Date();
  var year=now.getFullYear();
  var month=now.getMonth();
  var date=now.getDate();
  var hour=now.getHours();       //获取当前小时数(0-23)
  var minu=now.getMinutes();     //获取当前分钟数(0-59)

//  var mtime=now.toLocaleString( );  
//写入相应id
document.getElementById("time").innerHTML="当前时间:" + year + "/" + (month+1) + "/"+date + " " +  hour + ":" +minu;
//document.getElementById("time").innerHTML="当前时间:" + mtime;

} 

</script>

<script type="text/javascript" language="javascript">  
 function iFrameHeight() {  
  var ifm = document.getElementById("iframe1");  
  var subWeb = document.frames ? document.frames["iframe1"].document  
    : ifm.contentDocument;  
  if (ifm != null && subWeb != null) {  
   ifm.height = subWeb.body.scrollHeight;  
  }  
 }  
</script>  
    
    
    <style>
    html, body, #mapDiv {
      padding: 0;
      margin: 0;
      height: 100%;
    }
     </style>
     
     <style>
     .navbar{ width:16%px;
           height:70%px;
           background-color:#000000; 
           position:absolute; 
           left:80%; 
           top:5%;    
           filter:alpha(Opacity=80);
            -moz-opacity:0.5;
            opacity: 0.5; }        <!--右侧div大小以及透明度设置-->
     
   </style>
         
 
  
  <style>
         .navbarr{ width:55%;
           height:17%;
           background-color:#000000; 
           position:absolute; 
           left:20%; 
           top:33%;
           display:none;
                      filter:alpha(Opacity=80);
            -moz-opacity:0.9;
            opacity: 0.9;
                     
          
           }   <!--右侧div大小以及透明度设置-->
           
           .cancle{
           position:absolute;        
           top:450px; 
           font-size:16px;
 
           }
  </style>   
  
  <style>
            .navbarr1{ width:55%;
           height:17%;
           background-color:#000000; 
           position:absolute; 
           left:20%;
           top:33%;
           display:none;
           
             filter:alpha(Opacity=80);
            -moz-opacity:0.9;
            opacity: 0.9;
      </style>
  

  </head>
  
  
  <body class="claro" onload="time()">
      
  
  
          <div class="masthead clearfix">
             
              
            <div class="inner">
                
              <h3 >基于Gis的洪涝监测系统</h3>
              <a id="time"> </a> </br>
              <a>更新时间: 2017/3/1 11:00</a>
               <p> <a href="R_F_manage.action">更新数据</a> </p>
              <nav>
                <ul class="nav masthead-nav">
                  <li><a id = "c1"  onclick='$("#div2").show()' >实时监测</a></li>
                  <li><a  id = "c2"  onclick='$("#div3").show();$("#iframe2").show()'>汛情管理</a></li>
                   <li><a  id = "c2"  onclick='$("#div5").show()'>历史查询</a></li>
                  <li><a id="c3" onclick='$("#div4").show()'>系统管理  </a></li>
                  
                  
                </ul>
              </nav>
            </div>
          </div>
 <iframe src="shishi/1.jsp"   id="iframe1" frameBorder=0 scrolling=no width="100%"  height="100%">
                 
                      
            </iframe>
            
        <div id = "div1" > 
            
            <div class="navbarr1" id ="div2">
               
                <div style = "height:50px;width:33%;float: left"><a href = "R_F_manage1.action" target="mainframe1" >降雨量监测</a></div>
                  <div style = "height:50px;width:33%;float: left"><a href="manage_W_T.action" target="mainframe1" >气象监测</a></div>
                    <div style = "height:50px;width:34%;float: left"><a href="show_R_P.action" target="mainframe1">市民上报</a></div>
                   <iframe src="shishi/rainmonitor.jsp" name="mainframe1"  height="330px" width="100%" allowtransparency="true">
              
                      
                  </iframe>                 
          
                <div class="cancle" onclick='$("#div2").hide();$("#iframe2").hide()' >关闭</div>
            </div>
            
              <div class="navbarr" id ="div3">
               
                <div style = "height:50px;width:25%;float: left"><a href = "F_W_manage.action" target="mainframe2">防汛预警</a></div>
                  <div style = "height:50px;width:25%;float: left"><a href="floodmanage/staffdispatcher.jsp" target="mainframe2">人员安排</a></div>
                    <div style = "height:50px;width:25%;float: left"><a href="floodmanage/materialdispatcher.jsp" target="mainframe2">物质调度</a></div>
                        <div style = "height:50px;width:25%;float: left"><a href="floodmanage/floodpublish.jsp" target="mainframe2">汛情发布</a></div>
                        
                   <iframe src="floodmanage/floodwarning.jsp" name="mainframe2"  height="330px" width="100%" allowtransparency="true">
              
                      
                  </iframe>
                <div class="cancle" onclick='$("#div3").hide();$("#iframe2").hide()' >关闭</div>
            </div>
            
            
                 <div class="navbarr" id ="div4">
               
                <div style = "height:50px;width:50%;float: left"><a href = "systemmanage/user.jsp" target="mainframe3">用户注册</a></div>
                  <div style = "height:50px;width:50%;float: left"><a href="floodmanage/staffdispatcher.jsp" target="mainframe3">权限管理</a></div>
                    
                        
                   <iframe src="systemmanage/user.jsp" name="mainframe3"  height="330px" width="100%" allowtransparency="true">
              
                      
                  </iframe>
                <div class="cancle" onclick='$("#div4").hide();$("#iframe2").hide()' >关闭</div>
            </div>
            
              <div class="navbarr" id ="div5">
               
                <div style = "height:50px;width:50%;float: left"><a href = "find/findrainfull.jsp" target="mainframe4">降雨量查询</a></div>
                  <div style = "height:50px;width:50%;float: left"><a href="find/findwaterlevel.jsp" target="mainframe4">水位查询</a></div>
                    
                        
                   <iframe src="find/findrainfull.jsp" name="mainframe4"  height="330px" width="100%" allowtransparency="true">
              
                      
                  </iframe>
                <div class="cancle" onclick='$("#div5").hide()' >关闭</div>
            </div>
            
         
              
             <div class="navbar">
                 <h4>实时水位监测</h4>
                 </br>
                   </br>
                     </br>
                     
            
                 <table class="table table-hover">
                     
                   <thead>
                   <tr>
                        <th>监测站点</th>
                        <th>水位</th>
                        <th>警戒值</th>
                        <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp测量时间</th>
                    </tr>
                    </thead>
                    
                    
            <tbody>
                
          <s:iterator value="#session.manage1" id="it">
            <tr>                  
          <td><s:property value="#it.site"/></td>
          <td><s:property value="#it.number"/></td>
          <td><s:property value="#it.warning"/></td>
          <td><s:property value="#it.time"/></td> 
           </tr>
           </s:iterator> 

            </tbody>
                    
                   
                 </table>
                         
               
                     
             </div>
            
           
            

            
          
                 
        </div>
    
          

   
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   

   
    

  </body>
</html>
