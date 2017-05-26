<%-- 
    Document   : chart
    Created on : 2017-3-14, 9:13:14
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <!-- Bootstrap -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    
    <!-- Custom styles for this template -->
 
    <script type="text/javascript" src="../js/ichart.1.2.min.js"></script>
    
    <script>
    
$(function(){
				//创建数据
				var data = [
				        	{
				        		name : 'A产品',
				        		value:[8.2,8.0,9.0,10,11,8],
				        		color:'#01acb6',
				        		line_width:2
				        	}
				       ];
				//创建x轴标签文本   
			    var labels = ["00:00:00","04:00:00","08:00:00","12:00:00","16:00:00","20:00:00"];
			       
				var chart = new iChart.Area2D({
						render : 'canvasDiv',
						data: data,
						
						footnote:{
							text:'更新时间:2017/03/13',
							color:'#708794',
							padding:'0 20',
							background_color:'#102c3c',
							height:30,
							border:{
								enable:true,
								width:[3,0,0,0],//只显示上边框
								color:'#0f2b3a'
							}
						},
						padding:'5 1',//设置padding,以便title能占满x轴
						sub_option:{
							label:false,
							hollow_inside:false,//设置一个点的亮色在外环的效果
							point_size:10
						},
						tip:{
							enable:true,
							listeners:{
								 //tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
								parseText:function(tip,name,value,text,i){
									return "降雨量" + value;
								}
							}
						},
						width : 800,
						height : 400,
						background_color:'#0c222f',
						gradient:true,
						shadow:true,
						shadow_blur:2,
						shadow_color:'#4e8bae',
						shadow_offsetx:0,
						shadow_offsety:0,
						gradient_mode:'LinearGradientDownUp',//设置一个从下到上的渐变背景
						border:{
							radius:5
						},
						coordinate:{
							width : 600,
							height : 240,
							grid_color:'#506e7d',
							background_color:null,//设置坐标系为透明背景
							scale:[{
								 position:'left',	
								 label:{
									 color:'#eff4f8',
									 fontsize:14,
									 fontweight:600
								 },
								 start_scale:0,
								 end_scale:30,
								 scale_space:500
							},{
								 position:'bottom',	
								 label:{
									 color:'#506673',
									 fontweight:600
								 },
								 labels:labels
							}]
						}
					});
				
				chart.draw();
			});
		



        </script>
    </head>
    
    <body>
        
      
        <div id='canvasDiv'></div>
        
        
        
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
