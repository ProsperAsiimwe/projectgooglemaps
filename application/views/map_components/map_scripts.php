    <script>
      function initMap() {
        var christTK = {lat: 0.297874, lng: 32.600341};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,              
          center: christTK
        });


 var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Sample Title</h1>'+
            '<div id="bodyContent">'+
            '<p>Sample Data </p>'+
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