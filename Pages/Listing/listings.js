
window.onload = function(){
    
    //Capturar parámetros del URL

    var badge = getUrlParameter('badge');
    var place = getUrlParameter('lugar');
    var ubicacion = getUrlParameter('ubicacion');

    if (place !== false) {
        var lugar = place.replace('-',' ').toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });    
//        $('.searchbar').val(lugar);
//        if (ubicacion === false){
//            $('.place').attr('filter-by',lugar);
//            $('.place').click();
        }
    }

    if (ubicacion !== false) {
        var ubicacionSplit = ubicacion.split(",");
        var posUbi = ubicacionSplit[0];
        var ubi = ubicacion.replace('-',' ').toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        $('.searchbar').val(posUbi);
        $('.place').attr('filter-by',ubi);
        $('.place').click();
        
    }
    
    if (badge !== false) {$('.'+badge).click();}

    $('#search-output').text($('#search-input').val());
    setTimeout(function(){
        generarMapa();
        $('#ok-load').text('OK');
    },2000);
}

// Botón General para mostrar filtrar y generar mapa

$(".filter-button").click(function(){
    if ($('#ok-load').text() ==='OK'){
    setTimeout(function(){generarMapa();},500);
    }
});

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
    parent.find('.apply-button').attr('filter-by',min +"-"+ max);
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