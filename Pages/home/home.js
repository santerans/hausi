// CARGAR CAMBIO FORMATO NUMERO PRECIO LISTING

window.addEventListener('load', onLoadCalc, false);

// Función para SEARCH BUTTON 

$(".seach-button").click(function(){
    var launchValue = $('.searchbar').val();
    var tabvalue = $('.home-serach-tab w--current').text();
    window.location.href = '/projects?badge='+ tabvalue &'lugar='+ launchValue;
});

// Función para llamar a SearchBar

var listalista = ["Quito Centro Norte","Quito Norte","Quito Sur","Tumbaco"];

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);
autocomplete(document.getElementById("myInput2"), autoLugares,autoQueries,);
