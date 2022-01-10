
window.onload = function(){

    setTimeout(function(){
        generarMapa ();
        $('#ok-load').text('OK');
    },1500);

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