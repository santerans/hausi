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