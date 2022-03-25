
$('listing-prop-collection-list').change(function(){
    generarMapa();
});

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

