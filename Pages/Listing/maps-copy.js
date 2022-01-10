 
    function generarMapa () {
    
        function kFormatter(i) {
          var number = parseFloat(i);
  
          if(number > 999999){
            var num = numConvert.format(number/1000000) + 'M';
          }
          else if(number > 999) {
            var num =numConvert.format(number/1000) + 'K';
          }
          else {
            var num = numConvert.format(number/1);
          }
          return num;
        }
  
        let numConvert = Intl.NumberFormat("en-US", {
          style: "currency",
          currency: "USD",
          maximumFractionDigits: 0,
          minimumFractionDigits: 0,
        });
  
        var pricesVenta = document.querySelectorAll("#price-venta");
        var costosVenta = document.querySelectorAll("#costo-venta");
        var pricesRenta = document.querySelectorAll("#price-renta");
        var costosRenta = document.querySelectorAll("#costo-renta");
  
        for (var i = 0, len = pricesVenta.length; i < len; i++) {
          var precio = parseFloat(costosVenta[i].innerText);
          pricesVenta[i].innerText = numConvert.format(precio);
        }
  
        for (var i = 0, len = pricesRenta.length; i < len; i++) {
          var precio = parseFloat(costosRenta[i].innerText);
          pricesRenta[i].innerText = numConvert.format(precio);
        }      
  
        var locations = [];
        var dynPlaces = document.querySelectorAll('.w-dyn-item.place');
  
        dynPlaces.forEach(function(elem) {
  
          var place = [];
          var costoVenta = elem.querySelector('#costo-venta').innerText;
          var priceVenta = kFormatter(costoVenta);
          var costoRenta = elem.querySelector('#costo-renta').innerText;
          var priceRenta = kFormatter(costoRenta);
          var infoText = elem.querySelector('.property-listing-bottom-wrap').innerHTML;
          var slideuno = elem.querySelector('.slide1').style.backgroundImage;
          var slidedos = elem.querySelector('.slide2').style.backgroundImage;
          var slidetres = elem.querySelector('.slide3').style.backgroundImage;
          var slidecuarto = elem.querySelector('.slide4').style.backgroundImage;
          var href = elem.querySelector('.property-card-link').href;
          var display = elem.style.display;
          var ubicacion = elem.querySelector('.ubicacion').innerText;
          var ubicacion_array = ubicacion.split(', ');
          var lat = ubicacion_array[0];
          var long = ubicacion_array[1];
          var title = elem.querySelector('.property-street').innerText;
          var anchorID = elem.querySelector('.anchor-id').getAttribute('id');
          var pLat = parseFloat(lat);
          var pLong = parseFloat(long);
  
          if (window.getComputedStyle(elem).display !== "none" && priceVenta !== "$0") {
            place.push(title, infoText, pLat, pLong, priceVenta, anchorID, display, slideuno, slidedos, slidetres, slidecuarto, href,); // Adding required info about each place to the array of places
            locations.push(place);
          }
  
          if (window.getComputedStyle(elem).display !== "none" && priceRenta !== "$0") {
            place.push(title, infoText, pLat, pLong, priceRenta, anchorID, display, slideuno, slidedos, slidetres, slidecuarto, href,); // Adding required info about each place to the array of places
            locations.push(place);
          }
        });
  
          let map = new google.maps.Map(document.getElementById('map'), {
          //zoom: 15,
          center: new google.maps.LatLng(locations[0][2], locations[0][3]),
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          gestureHandling: "greedy",
          streetViewControl: false,
          fullscreenControl: false,
          mapTypeControl: false,
          mapId: '7165bcdc8480f69d',
        });
       
        var latlngbounds = new google.maps.LatLngBounds();
  
        const svgMarker = {
            path:
              "M0,101.08h404.308L202.151,303.229L0,101.08z",
            fillColor: "#282e38",
            fillOpacity: 1.0,
            strokeWeight: 0,
            rotation: 0,
            scale: 0.03,
            anchor: new google.maps.Point(0, 0),
          };    
  
          const svgMarker2 = {
            path:
              "M0,101.08h404.308L202.151,303.229L0,101.08z",
            fillColor: "#282e38",
            fillOpacity: 0,
            strokeWeight: 0,
            rotation: 0,
            scale: 0.03,
            anchor: new google.maps.Point(0, 0),
          };    
        
        function createMarker(latlng, price, anchorid, svg, slideuno, slidedos,slidetres, slidecuarto, href, html, markerClass) {
  
          var marker = new MarkerWithLabel({
            position: latlng,
            map: map,
            url: anchorid,
            icon: svg,
            labelContent: price,
            labelAnchor: new google.maps.Point(-8, -12),
            labelClass: markerClass,
          });
          latlngbounds.extend(marker.position);   
          
          google.maps.event.addListener(marker, 'click', function() {
  
            if(window.innerWidth <= 478){
                 document.getElementById('list-button').style.display = "none";
                 document.getElementById('house').style.display = "block";
                 document.getElementById('house-detail').innerHTML = html;
                 document.getElementById('property-card-link').href = href;
                 document.getElementById('slider1').style.backgroundImage = slideuno;
                 document.getElementById('slider2').style.backgroundImage = slidedos;
                 document.getElementById('slider3').style.backgroundImage = slidetres;
                 document.getElementById('slider4').style.backgroundImage = slidecuarto;
                 document.getElementById('slider5').style.backgroundImage = slidetres;
                 $('.price-label-selected').addClass('price-label');
                 $('.price-label-selected').removeClass('price-label-selected');
                 marker.set("labelClass", "price-label-selected")
  
                 offsetCenter(marker.position,-8,142);
  
            } else {
              var element = document.getElementById(anchorid);
              var bodyRect = document.body.getBoundingClientRect();
              var elementPosition = element.getBoundingClientRect().top - bodyRect.top;
              var offsetPosition = elementPosition - 200;
                 window.scrollTo({
                top: offsetPosition,
                behavior: "smooth"
                          });
              $('.try').removeClass('try');
              $('.price-label-selected').addClass('price-label');
              $('.price-label-selected').removeClass('price-label-selected');
              $('#'+anchorid+"-selected").addClass('try');
              $('#'+anchorid+"-selected2").addClass('try');
              marker.set("labelClass", "price-label-selected")
              }
          });
  
          return marker;
        }
  
        let gmarkers = [];
        for (var i = 0; i < locations.length; i++) {
          gmarkers[locations[i][0]] =
            createMarker(new google.maps.LatLng(locations[i][2], locations[i][3]),locations[i][4],locations[i][5],svgMarker,locations[i][7],locations[i][8],locations[i][9],locations[i][10],locations[i][11], // passing lat and long
                                    locations[i][1],"price-label"); // passing Info-window information
        }
  
    var styles = [{
        width: 40,
        height: 40,
        className: "cluster-text",
      },
      {
        width: 50,
        height: 50,
        className: "cluster-text",
      },
      {
        width: 60,
        height: 60,
        className: "cluster-text",
      },
    ];
  
        new MarkerClusterer(map, gmarkers, {
          styles: styles,
          clusterClass: "cluster-text",
      });
  
        var bounds = new google.maps.LatLngBounds();
        map.setCenter(latlngbounds.getCenter());
        map.fitBounds(latlngbounds);
  
      // OnHover change marker class
  
      $('.listing-card').hover(
        function() {
            
            var placeParent= $(this).closest('.listing-card');
            var costo = placeParent.find('#costo-venta').text();
            var price = kFormatter(costo);  
            var ubicacion = placeParent.find('.ubicacion').text();
            var ubicacion_array = ubicacion.split(', ');
            var lat = ubicacion_array[0];
            var long = ubicacion_array[1];
            var pLat = parseFloat(lat);
            var pLong = parseFloat(long);
  
            let tempMarkers = [];
            for (var i = 0; i < 1; i++) {
                tempMarkers[i] =
                createMarker(new google.maps.LatLng(pLat, pLong),price,1,svgMarker2,3,4,5,6,7, // passing lat and long
                                        8,"price-label-selected-2"); // passing Info-window information
            }
  
        }, 
        function() {
          $('.price-label-selected-2').hide();
        }
      );
  
      function offsetCenter(latlng, offsetx, offsety) {
  
        var scale = Math.pow(2, map.getZoom());
  
        var worldCoordinateCenter = map.getProjection().fromLatLngToPoint(latlng);
        var pixelOffset = new google.maps.Point((offsetx/scale) || 0,(offsety/scale) ||0);
  
        var worldCoordinateNewCenter = new google.maps.Point(
            worldCoordinateCenter.x - pixelOffset.x,
            worldCoordinateCenter.y + pixelOffset.y
        );
  
        var newCenter = map.getProjection().fromPointToLatLng(worldCoordinateNewCenter);
  
        map.setCenter(newCenter);
  
      }
  
  }
  