// CARGAR CAMBIO FORMATO NUMERO PRECIO LISTING

window.addEventListener('load', onLoadCalc, false);

// Función para SEARCH BUTTON 

$(".seach-button").click(function(){
    var launchValue = $('.searchbar').val();
    var tabvalue = $(".tabs-2.ui-tabs-active").text();
    window.location = 'https://www.hausi.io/listings?badge=' + tabvalue + '&lugar=' + launchValue;
});

// Función para llamar a SearchBar

var listalista = ["Quito Centro Norte","Quito Norte","Quito Sur","Tumbaco"];

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);
autocomplete(document.getElementById("myInput2"), autoLugares,autoQueries,);
