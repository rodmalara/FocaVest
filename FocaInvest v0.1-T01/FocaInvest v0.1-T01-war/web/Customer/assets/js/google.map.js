window.onload = function () {
  "use strict";
  var styles =  [
    {
      stylers: [
        { "saturation": -100 }, 
        { "visibility": "simplified" },
        { "lightness": 20 }, 
        { "gamma": 0.5 } 
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];  
  var options = {  
  mapTypeControlOptions: {  
      mapTypeIds: ['Styled']  
  },  
      center: new google.maps.LatLng(-22.56057,-47.422791),
      scrollwheel: false,
      navigationControl: false,
      mapTypeControl: false,
      scaleControl: false,
      draggable: true,
      //mapTypeId:google.maps.MapTypeId.ROADMAP,
      zoom: 16,  
      disableDefaultUI: true,   
      mapTypeId: 'Styled'  
  };  
  var div = document.getElementById('googleMap');  
  var map = new google.maps.Map(div, options);  
  var styledMapType = new google.maps.StyledMapType(styles, { name: 'Styled' });  
  map.mapTypes.set('Styled', styledMapType);  
};  
