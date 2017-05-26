<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
  <title>Load a basic WebMap - 4.3</title>

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
    require([
      "esri/views/MapView",
      "esri/WebMap",
      "dojo/domReady!"
    ], function(
      MapView, WebMap
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
          id: "adbf6a7995cc4d05b367236f979ec057"
        }
      });

      /************************************************************
       * Set the WebMap instance to the map property in a MapView.
       ************************************************************/
      var view = new MapView({
        map: webmap,
        container: "viewDiv"
      });
    });
  </script>
</head>

<body>
  <div id="viewDiv"></div>
</body>

</html>