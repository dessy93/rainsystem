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
    
 #results{
  top: 100px;
  left: 20px;
  width: 300px;
  height: 100px;
}
        
#finalList{
  top: 240px;
  left: 20px;
  width: 300px;
  max-height: 60%; 
  z-index: 30;
  visibility: hidden;
  overflow-y: auto;
}        
    
#title{
  top: 20px;
  width: 50%; 
  height: 50px;;
  padding-top: 5px;
  text-align: center;
  margin: 0 0 0 25%;
}
.mainStyle{
  position: absolute;
  z-index: 99;
  background-color: black;
  color: whitesmoke;
  border-radius: 8px;
  border-width: medium;
  border-color: cornflowerblue;
  padding: 15px;
  opacity: 0.75;
}
#geostyle, #diffstyle, #planarstyle, #perstyle{
  font-weight: bolder;
  color: beige;
}
   
    
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
      
      "esri/Color",
      "esri/layers/GraphicsLayer",
       "esri/symbols/SimpleLineSymbol",
       "esri/symbols/Font",
       "esri/symbols/TextSymbol",
       "esri/geometry/geometryEngine",
       "esri/geometry/Polyline",
           
     
       
      
      "dojo/domReady!"
    ], function(
      MapView, WebMap,
      Graphic, Point, 
      SimpleMarkerSymbol,
       Color,GraphicsLayer, SimpleLineSymbol, Font, TextSymbol, geometryEngine, Line
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
        longitude: 114.391572,
        latitude: 30.502193 
      });
      
       var point1 = new Point({
        longitude: 114.383313,
        latitude: 30.505726
      });
      
      var point2 = new Point({
        longitude: 114.371491,
        latitude: 30.512748
      });
      
      var point3 = new Point({
        longitude: 114.413893,
        latitude: 30.510701
      });
      
      var point4 = new Point({
        longitude: 114.360367,
        latitude: 30.527245
      });
      
      var point5 = new Point({
        longitude: 114.398301,
        latitude: 30.521021
      });
      
      var point6 = new Point({
        longitude: 114.396495 ,
        latitude: 30.506032
      });
      
      //支局
       var point7 = new Point({
        longitude: 114.409663  ,
        latitude:  30.516873
      });
      
       var point8 = new Point({
        longitude: 114.375608   ,
        latitude: 30.490481
      });
      
       var point9 = new Point({
        longitude: 114.382573  ,
        latitude:  30.532614
      });
      
       var point10 = new Point({
        longitude: 114.439712  ,
        latitude:  30.509272
      });
      
      //物质中心
      
       var point11 = new Point({
        longitude: 114.396495 ,
        latitude: 30.506032
      });
      
       var point12 = new Point({
        longitude: 114.406817  ,
        latitude: 30.502310
      });
      
      

      // Create a symbol for drawing the point
      var markerSymbol = new SimpleMarkerSymbol({
        color: [226, 119, 40],       
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
          content: "华科大支局"
        }
      });
      
                var pointGraphic8 = new Graphic({
        geometry: point8,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "南湖支局"
        }
      });
      
                var pointGraphic9 = new Graphic({
        geometry: point9,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "东湖支局 "
        }
      });
      
                var pointGraphic10 = new Graphic({
        geometry: point10,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "支局信息",
          content: "马鞍山支局"
        }
      });
      
                var pointGraphic11 = new Graphic({
        geometry: point11,
        symbol: markerSymbol2,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "物质信息",
          content: "光谷物质中心 "
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
      
               
        
 
      
    });
  </script>
</head>

<body>
  <div id="viewDiv"></div>
</body>

</html>