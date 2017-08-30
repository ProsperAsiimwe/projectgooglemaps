<!DOCTYPE html>
<html>
  <head>
    <style>
      #map {
        height: 500px;
        width: 100%;
       }
       
       h1 {
           color: maroon;
           margin-left: 40px;
           } 
           
        p {
           color: green;
           margin-left: 40px;
           } 
    </style>
  </head>

  <body>
    <h3>Drainage Problems Reports</h3>
    <div id="map"></div>

     <script>                 
         
         var map;   
      function initMap() {
        
        var initialCenter = new google.maps.LatLng(0.314444, 32.578333);
        var myOptions = {
            zoom: 14, 
            center: initialCenter            
        };        
        
        map = new google.maps.Map(document.getElementById("map"), myOptions);
        
 //Start fetching locations from the db
 
 <?php foreach ($view_content as $view_content):?>
         
         var latitude = "<?php echo $view_content->lat;?>"; 
         var longitude = "<?php echo $view_content->lng;?>";
         var desc = "<?php echo $view_content->description;?>";  
         
         setmarker(latitude,longitude);
         
 <?php endforeach;?>    
//End Fetching locations from the db
  }   
   
      
 //Start setmarker function     
function setmarker(latitude,longitude){    
        var latlongMarker = new google.maps.LatLng(latitude,longitude);
        
        
        var contentString = '<div id="content">'+ 
            '<div id="siteNotice">'+ 
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Sample title</h1>'+
            '<div id="bodyContent">'+ 
            '<p>Sample Data </p>'+
            '</div>'+
            '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });        
        
    
        var marker = new google.maps.Marker({
          
          position: latlongMarker,
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