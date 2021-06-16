// SEARCHBAR

function normalizarQuery(texto) {
    return texto.normalize('NFD').replace(/[\u0300-\u036f]/g,"");
}

function autocomplete(inp, arr, query) {
  var currentFocus;
  inp.addEventListener("input", function(e) {
      var a, b, i, c, d, val = normalizarQuery(this.value);
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      this.parentNode.appendChild(a);
      
    for (i = 0; i < arr.length; i++) {
      var itm = arr[i].toUpperCase();
      var valUpp = val.toUpperCase();
      var q= normalizarQuery(arr[i].substr(0, val.length)).toUpperCase();
      //revisar si palabra inicia con la query escrita
      if (q == valUpp) {
        b = document.createElement("DIV");
        b.setAttribute("class", "autocomplete-item");
        b.addEventListener("click", function(e) {
          inp.value = this.getElementsByTagName("input")[0].value;
          $('.seach-button').attr('filter-by',this.getElementsByTagName("input")[1].value);
          closeAllLists();
        });
        a.appendChild(b);

        c = document.createElement("DIV");
        c.setAttribute("class", "query-princial");
        c.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
        c.innerHTML += arr[i].substr(val.length);
        c.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
        b.appendChild(c);

        d = document.createElement("DIV");
        d.setAttribute("class", "query-secundaria");
        d.innerHTML += query[i];
        d.innerHTML += "<input type='hidden' value='" + query[i] + "'>";
        b.appendChild(d);

      }
    }
      
      for (i = 0; i < arr.length; i++) {
        var itm = arr[i].toUpperCase();
        var valUpp = val.toUpperCase();
        var q= normalizarQuery(arr[i].substr(0, val.length)).toUpperCase();
        if (q != valUpp && itm.includes(valUpp)) {
          var pos = itm.indexOf(valUpp);
          b = document.createElement("DIV");
          b.setAttribute("class", "autocomplete-item");
          b.addEventListener("click", function(e) {
            inp.value = this.getElementsByTagName("input")[0].value;
            $('.seach-button').attr('filter-by',this.getElementsByTagName("input")[1].value);
            closeAllLists();
          });
          a.appendChild(b);

          c = document.createElement("DIV");
          c.setAttribute("class", "query-princial");
          c.innerHTML = arr[i].substr(0, pos);
          c.innerHTML += "<strong>" + arr[i].substr(pos, val.length) + "</strong>";
          c.innerHTML += arr[i].substr(pos+val.length);
          c.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          b.appendChild(c);

          d = document.createElement("DIV");
          d.setAttribute("class", "query-secundaria");
          d.innerHTML = query[i];
          d.innerHTML += "<input type='hidden' value='" + query[i] + "'>";
          b.appendChild(d);
        }
      }
    
  });
  //teclas
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByClassName('autocomplete-item');
      if (e.keyCode == 40 && currentFocus < 4) {
        currentFocus++;
        addActive(x);
      } else if (e.keyCode == 38 && currentFocus > 0) { //up
        currentFocus--;
        addActive(x);
      } else if (e.keyCode == 13) {
        e.preventDefault();
        if (currentFocus > -1) {
          if (x) x[currentFocus].click();
        }
      }
  });
  
  //determinar elem activo
  function addActive(x) {
    if (!x) return false;
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
}

var autoUbicaciones = document.querySelectorAll('.w-dyn-item.lugares');
var autoLugares = [];
var autoQueries =[];
autoUbicaciones.forEach(function(elem) {
  var autoLugar = elem.querySelector('.query-princial').innerText;
  var autoQuery = elem.querySelector('.query-secundaria').innerText;
  autoLugares.push(autoLugar,);
  autoQueries.push(autoQuery,);
});

autocomplete(document.getElementById("myInput"), autoLugares,autoQueries,);
