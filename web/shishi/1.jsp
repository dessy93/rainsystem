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
  </style>

  <link rel="stylesheet" href="https://js.arcgis.com/4.2/esri/css/main.css">

  <script src="https://js.arcgis.com/4.2/"></script>

 
  <script> 
     
  // var s="<%=session.getAttribute("manage1")%>";
      
var site = "<%=session.getAttribute("site")%>";
var number = "<%=session.getAttribute("number")%>";
var siteArray=new Array();
var numberArray=new Array();
var c=new Array();
var i=0;
var j=0; 
<c:forEach var="obj" items="${site} "> 

siteArray[i] = "${obj}";

i++;
</c:forEach> 
    
<c:forEach var="obj" items="${number} "> 

numberArray[j] = "${obj}";

  if(parseInt(numberArray[j])<10)
        c[j] = "markerSymbol1";
   if(parseInt(numberArray[j])>=10 && numberArray[j]<20)
        c[j] = "markerSymbol2";
   if(parseInt(numberArray[j])>=20)
        c[j] = "markerSymbol";

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

      // Create a symbol for drawing the point
      var markerSymbol = new SimpleMarkerSymbol({
        color: [226, 119, 40],       
      });//红
      
         var markerSymbol1 = new SimpleMarkerSymbol({
        color: [155,205 ,155],       
      });//绿色
      
       var markerSymbol2 = new SimpleMarkerSymbol({
        color: [238 ,238, 0],       
      });//黄色
      
      var date = " 2017/03/01 11:00 PM ";
      var rain = 12;
       // Create a graphic and add the geometry and symbol to it
       var c = new Array() ;
       
    for(var j=0;j<7;j++){
          if(parseInt(numberArray[j])<10)
        c[j] = markerSymbol1;
   if(parseInt(numberArray[j])>=10 && numberArray[j]<20)
        c[j] = markerSymbol2;
   if(parseInt(numberArray[j])>=20)
        c[j] = markerSymbol ;
    }
      var pointGraphic = new Graphic({
        geometry: point,
        symbol: c[6],
        popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content:"站点:"+siteArray[6] + "<br/>"+" 降雨量:" + numberArray[6] 
                  
        }
      });
      
       var pointGraphic1 = new Graphic({
        geometry: point1,
        symbol: c[4],
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[4] + "<br/>"+"  降雨量:" + numberArray[4]
        }
      });
      
             var pointGraphic2 = new Graphic({
        geometry: point2,
        symbol: c[5],
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[5] +"<br/>"+ "  降雨量:" + numberArray[5]
        }
      });
      
             var pointGraphic3 = new Graphic({
        geometry: point3,
        symbol: markerSymbol1,
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[0] +"<br/>"+ "  降雨量:" + numberArray[0]
        }
      });
      
             var pointGraphic4 = new Graphic({
        geometry: point4,
        symbol: c[1],
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[1] +"<br/>"+ "  降雨量:" + numberArray[1]
        }
      });
      
             var pointGraphic5 = new Graphic({
        geometry: point5,
        symbol: c[3],
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[3] +"<br/>"+ "  降雨量:" + numberArray[3]
        }
      });
      
             var pointGraphic6 = new Graphic({
        geometry: point6,
        symbol: c[2],
           popupTemplate: { // autocasts as new PopupTemplate()
          title: "雨量信息",
          content: "站点:"+siteArray[2] +"<br/>"+ "  降雨量:" + numberArray[2]
        }
      });
        
        // Add the graphics to the view's graphics layer
      view.graphics.addMany([pointGraphic,pointGraphic1,pointGraphic2,pointGraphic3,pointGraphic4
                             ,pointGraphic5,pointGraphic6]); 
      
    });
  </script>
</head>

<body>
  <div id="viewDiv"></div>
</body>

</html>