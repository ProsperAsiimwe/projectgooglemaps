<!DOCTYPE html>
<html>
  <head>
    <style>
      #map {
       height: 500px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var christTK = {lat: 0.314444, lng: 32.584444};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,              
          center: christTK
        });


 var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Static Marker</h1>'+
            '<div id="bodyContent">'+
            '<p><b>Sample</b>, also referred to as <b>Ayers Rock</b>, is a large .</p>' +
            '</div>'+
            '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });



        var marker = new google.maps.Marker({
          position: christTK,         
          map: map
          
        });

          marker.addListener('click', function() {
          infowindow.open(map, marker);
        });

      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAq1_gFmxJMDYAHrc2VmlWvzPcdakWzTrc&callback=initMap">
    </script>
  </body>
</html>