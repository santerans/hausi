
window.onload = function(){
    
    //Capturar parámetros del URL

    var badge = getUrlParameter('badge');
    var place = getUrlParameter('lugar');

    if (place !== false) {
        var ubi = place.replace('-',' ').toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        ubicacionSplit = ubi.split(",");
        var posUbi = ubicacionSplit[0];
        $('.searchbar').val(posUbi);
        $('.seach-button').attr('filter-by',ubi);
        $('.seach-button').click();
        
    }
    
    if (badge !== false) {$('.'+badge).click();}

    $('#search-output').text($('#search-input').val());
    
    setTimeout(function(){
        generarMapa();
        $('#ok-load').text('OK');
        $('.shimmer-wrap').css('display', 'none');
    },500);

}

// Botón General para mostrar filtrar y generar mapa

$(".filter-button").click(function(){
    if ($('#ok-load').text() ==='OK'){
    setTimeout(function(){generarMapa();},500);
    }
});

// Función para llamar a SearchBar

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);


// Función para cerrar drop-wrapper (DIV que contiene filtros) al dar click en ventana

$(document).click(function(event) {
    var $target = $(event.target);
    if(!$target.closest('.drop-wrapper').length && $('.drop-wrapper').is(":visible") && window.innerWidth >= 991 ) {
        $('.drop-wrapper').hide();
    }
});

// Función al cambiar opciones de menu desplegable (<li>) de filtros: se actualiza filter-by (FinSweet) y otros...

$(".menu-desplegable").change(function(){
    var parent = $(this).closest('.drop-filter');
    var min = parent.find('.min').children("option:selected").val();
    var max = parent.find('.max').children("option:selected").val();
    var min_text = parent.find('.min').children("option:selected").text();
    var max_text = parent.find('.max').children("option:selected").text();
    parent.find('.boton-desplegable').text(function(i, thisText){
        if(min !== '0' &&	max === '999999999'){
            return thisText = "desde " + min_text;
        } else if (min === '0' &&	max !== '999999999') {
            return thisText = "hasta " + max_text; 
        } else if (min === '0' &&	max === '999999999') {
            return thisText = "Área"; 
        } else {
            return thisText = min_text +" a "+ max_text;
        }
    });
    parent.find('.apply-button').attr('filter-by',min +"-"+ max).click();
});

//

$('.limpiar-filtro-indv').click(function() {
    var parent = $(this).closest('.drop-filter');
    parent.find('.menu-desplegable').prop('selectedIndex',0);
    //parent.find('.max').prop('selectedIndex',0);
    var botonDesplegable = parent.find('.boton-desplegable');
    botonDesplegable.text(botonDesplegable.attr('val'));
});

$('.menu-desp-sort').change(function() {
    var parent = $(this).closest('.drop-filter');
var sortSelected =$(this).children("option:selected").val();
parent.find('.apply-button').attr('sort-by',sortSelected);
});

$('.query-item').click(function() {
    var parent = $(this).closest('.query-item');
    var query = parent.find('.query-uno').text();
    $('.searchbar').val(query);
    $('.seach-button').attr('filter-by',query);
});

// FUNCIONES COMPLEMENTARIAS //

// Función para actualizar parámetros

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
    sParameterName = sURLVariables[i].split('=');

    if (sParameterName[0] === sParam) {
        return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
    }
    }
    return false;
};

// OnHover change marker class

function setMapOnAll(map) {
    for (let i = 0; i < tempMarkers.length; i++) {
        tempMarkers[i].setMap(map);
    }
  }

$('.place').hover(
    function() {
        
        var costo = (this).find('.property-cost').text();
        var price = kFormatter(costo);
        var ubicacion = (this).find('.ubicacion').text();
        var ubicacion_array = ubicacion.split(', ');
        var lat = ubicacion_array[0];
        var long = ubicacion_array[1];
        var pLat = parseFloat(lat);
        var pLong = parseFloat(long);

        let tempMarkers = [];
        for (var i = 0; i < 1; i++) {
            tempMarkers[i] =
            createMarker(new google.maps.LatLng(pLat, pLong),price,1,2,3,4,5,6,7, // passing lat and long
                                    8,"price-label-selected"); // passing Info-window information
        }
    }, 
    function() {
        setMapOnAll(null);
        tempMarkers = [];
    }
);
