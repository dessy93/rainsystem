<%-- 
    Document   : 2
    Created on : 2017-2-21, 10:14:48
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
  <title>Load a basic WebMap - 4.2</title>

  <style>
    html,
    body,
    #viewDiv {
      padding: 0;
      margin: 0;
      height: 100%;
      width: 100%;
    }
    
 
   .navbar{ width:200px;
           height:75px;
           background-color:#000000; 
           position:absolute; 
           color:white;
           left:7%; 
           top:6%;    
           filter:alpha(Opacity=80);
            -moz-opacity:0.5;
            opacity: 0.5; }        <!--右侧div大小以及透明度设置-->
  </style>

  <link rel="stylesheet" href="https://js.arcgis.com/4.2/esri/css/main.css">

  <script src="https://js.arcgis.com/4.2/"></script>

  <script> 
     
  // var s="<%=session.getAttribute("manage1")%>";
      
    var site = "<%=session.getAttribute("site")%>";
var number = "<%=session.getAttribute("number")%>";
var siteArray=new Array();
var numberArray=new Array();

var i=0;
var j=0; 
<c:forEach var="obj" items="${site} "> 

siteArray[i] = "${obj}";

i++;
</c:forEach> 
    
<c:forEach var="obj" items="${number} "> 

numberArray[j] = "${obj}";

j++;
</c:forEach> 

            
    require([
      "esri/views/MapView",
      "esri/WebMap",
      "esri/Graphic",
      "esri/geometry/Point",
      "esri/symbols/SimpleMarkerSymbol",
      "dojo/domReady!"
    ], function(
      MapView, WebMap,
      Graphic, Point, 
      SimpleMarkerSymbol
    ) {

      /************************************************************
       * Creates a new WebMap instance. A WebMap must reference
       * a PortalItem ID that represents a WebMap saved to
       * arcgis.com or an on-premise portal.
       *
       * To load a WebMap from an on-premise portal, set the portal
       * url in esriConfig.portalUrl.
       ************************************************************/
      var webmap = new WebMap({
        portalItem: { // autocasts as new PortalItem()
          id: "adbf6a7995cc4d05b367236f979ec057"   //wuhan-blue版
        }
      });
      
      

      /************************************************************
       * Set the WebMap instance to the map property in a MapView.
       ************************************************************/
      var view = new MapView({
        map: webmap,
        container: "viewDiv"
      });
      
        
       /**********************
       * Create a point graphic
       **********************/

      // First create a point geometry (this is the location of the Titanic)
   var point = new Point({
        longitude: 114.301013,
        latitude: 30.745906
      });
      
       var point1 = new Point({
        longitude: 114.384041,
        latitude: 30.521133
      });
      
      var point2 = new Point({
        longitude: 114.141211,
        latitude: 30.496234
      });
      
      var point3 = new Point({
        longitude: 114.324306,
        latitude:  30.371963
      });
      
      var point4 = new Point({
        longitude: 114.751148 ,
        latitude: 30.801454
      });
      
      var point5 = new Point({
        longitude: 114.091377 ,
        latitude:  30.571184
      });
      
      var point6 = new Point({
        longitude: 114.193636 ,
        latitude: 30.586912
      });
      
      //支局
       var point7 = new Point({
        longitude: 114.352148  ,
        latitude:  30.481105
      });
      
       var point8 = new Point({
        longitude: 114.217146   ,
        latitude: 30.559729
      });
      
       var point9 = new Point({
        longitude: 114.395406  ,
        latitude:  30.628472
      });
      
       var point10 = new Point({
        longitude: 114.321250  ,
        latitude:  30.371664
      });
      
      //物质中心
      
       var point11 = new Point({
        longitude: 114.212393 ,
        latitude: 30.598607
      });
      
       var point12 = new Point({
        longitude: 114.406817  ,
        latitude: 30.502310
      });
      
      

      // Create a symbol for drawing the point
      var markerSymbol = new SimpleMarkerSymbol({
        color: [155,205 ,155],       
      });
      
           var markerSymbol1 = new SimpleMarkerSymbol({
        color: [65, 105, 225],       
      });
      
           var markerSymbol2 = new SimpleMarkerSymbol({
        color: [240, 255, 255],       
      });

       // Create a graphic and add the geometry and symbol to it
      var pointGraphic = new Graphic({
        geometry: point,
        symbol: markerSymbol,
        popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content:"站点:"+siteArray[6] + "<br/>"+" 降雨量:" + numberArray[6]
                  
        }
      });
      
       var pointGraphic1 = new Graphic({
        geometry: point1,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[4] + "<br/>"+"  降雨量:" + numberArray[4]
        }
      });
      
             var pointGraphic2 = new Graphic({
        geometry: point2,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[5] +"<br/>"+ "  降雨量:" + numberArray[5]
        }
      });
      
             var pointGraphic3 = new Graphic({
        geometry: point3,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[0] +"<br/>"+ "  降雨量:" + numberArray[0]
        }
      });
      
             var pointGraphic4 = new Graphic({
        geometry: point4,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[1] +"<br/>"+ "  降雨量:" + numberArray[1]
        }
      });
      
             var pointGraphic5 = new Graphic({
        geometry: point5,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[3] +"<br/>"+ "  降雨量:" + numberArray[3]
        }
      });
      
             var pointGraphic6 = new Graphic({
        geometry: point6,
        symbol: markerSymbol,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[2] +"<br/>"+ "  降雨量:" + numberArray[2]
        }
      });
      
      
                var pointGraphic7 = new Graphic({
        geometry: point7,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "洪山区支局"
        }
      });
      
                var pointGraphic8 = new Graphic({
        geometry: point8,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "汉阳区支局"
        }
      });
      
                var pointGraphic9 = new Graphic({
        geometry: point9,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "青山区支局 "
        }
      });
      
                var pointGraphic10 = new Graphic({
        geometry: point10,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "江夏区支局"
        }
      });
      
                var pointGraphic11 = new Graphic({
        geometry: point11,
        symbol: markerSymbol2,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "物质信息",
          content: "硚口物质中心 "
        }
      });
      
                var pointGraphic12 = new Graphic({
        geometry: point12,
        symbol: markerSymbol2,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "物质信息",
          content: "团山物质中心"
        }
      });
      
               
        
        // Add the graphics to the view's graphics layer
      view.graphics.addMany([pointGraphic,pointGraphic1,pointGraphic2,pointGraphic3,pointGraphic4
                             ,pointGraphic5,pointGraphic6,pointGraphic7,pointGraphic8,pointGraphic9
                         ,pointGraphic10,pointGraphic11,pointGraphic12]); 
      
    });
  </script>
</head>
<body >

    <div id="viewDiv">
       
    </div>
 
  <div class="navbar" >
    <span>绿色---监测站点</span>
    <br/>
    <span>蓝色---支局位置</span>
    <br/>
      <span>白色---仓库位置</span>
  </div>  
</body>

</html>