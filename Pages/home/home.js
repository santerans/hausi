// CARGAR CAMBIO FORMATO NUMERO PRECIO LISTING

window.addEventListener('load', onLoadCalc, false);

// Función para SEARCH BUTTON 

$(".seach-button").click(function(){
    var launchValue = $('.searchbar').val();
    window.location = 'https://hausi.biz/projects?badge=venta&lugar='+ launchValue;
});

// Función para llamar a SearchBar

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);
autocomplete(document.getElementById("myInput2"), autoLugares,autoQueries,);