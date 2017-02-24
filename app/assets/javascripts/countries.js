
// function myMap() {
//   var lat; 
//   var lng;
//   var markers = [];

//   var mapProp = {
//       center: new google.maps.LatLng(22,98),
//       zoom: 4,
//       mapTypeId: google.maps.MapTypeId.HYBRID
//   };

//   var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

//   var countries = <%= @countries.to_json.html_safe %>; 

//   countries.forEach(function (country) {
//     placeMarker({id: country.id, lat: country.latitude, lng: country.longitude});
//   });

//   function placeMarker(latLng) {
//     var marker = new google.maps.Marker({
//       id: latLng.id,
//       position: latLng,
//       map: map,
//       draggable: false,
//       animation: google.maps.Animation.DROP
//     });
//     google.maps.event.addListener(marker, 'click', function() { 
//        console.log("I am marker " + marker.id); 
//        location.href = `/countries/${marker.id}`;
//     }); 
//     return marker; 
//     markers.push(latLng);
//   }
