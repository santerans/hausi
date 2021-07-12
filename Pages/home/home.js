// CARGAR CAMBIO FORMATO NUMERO PRECIO LISTING

window.addEventListener('load', onLoadCalc, false);

//FORMATO NUMERO PRECIO LISTING
function onLoadCalc() {

    let numConvert = Intl.NumberFormat("en-US", {
      style: "currency",
      currency: "USD",
      maximumFractionDigits: 0,
      minimumFractionDigits: 0,
    });

    var prices = document.querySelectorAll("#price");
    prices.forEach(function(elem) {
        var price = parseFloat(elem.innerText);
        elem.innerText = numConvert.format(price);
    });

}

// Función para SEARCH BUTTON 

$(".seach-button").click(function(){
    var launchValue = $(this).attr('filter-by');
    window.location = 'https://hausi.biz/projects?badge=venta&lugar='+ launchValue;
});

// Función para llamar a SearchBar

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);