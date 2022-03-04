// CARGAR CAMBIO FORMATO NUMERO PRECIO LISTING

window.addEventListener('load', onLoadCalc, false);

// Función para mover Carrousel

// Función para SEARCH BUTTON 

$(".home-serach-tab").click(function(){
    var tabvalue = $('this').attr('data-w-tab');
    $('.seach-button').attr('tipo',tabvalue);
    if(tabvalue==='Vender'){
        $("#autocomplete-comprar").hide();
        $("#autocomplete-vender").show();
    }
    else{
        $("#autocomplete-comprar").show();
        $("#autocomplete-vender").hide();        
    }
});

$(".seach-button").click(function(){
    var launchValue = $('.searchbar').val();
    var tabvalue = $(this).attr('tipo');
    window.location = 'https://www.hausi.io/listings?badge=' + tabvalue + '&lugar=' + launchValue;
});

// Función para llamar a SearchBar

var listalista = ["Quito Centro Norte","Quito Norte","Quito Sur","Tumbaco"];

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);
autocomplete(document.getElementById("myInput2"), autoLugares,autoQueries,);
