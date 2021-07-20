//This script lets us use any component for our arrows. This way we can position freely
var Webflow = Webflow || [];
Webflow.push(function() {
 var l = $('#flowbaseSlider .w-slider-arrow-left');
 var r = $('#flowbaseSlider .w-slider-arrow-right');
 $('#flowbaseSlider')
   .on('click', '.slider-left', function() {
     l.trigger('tap');
   })
   .on('click', '.slider-right', function() {
     r.trigger('tap');
   });
});

//Here you can change to date slider and manage attributes about it -->

$("#precio-venta").ionRangeSlider({
    grid: true,
    min: 0,
    max: 500000,
    from: 150000,
    prefix: "$",
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 10000,
    max_postfix:'+',
});


$("#precio-renta").ionRangeSlider({
    grid: true,
    min: 0,
    max: 1000,
    from: 450,
    prefix: "$",
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 10,
    max_postfix:'+',
});

$("#area").ionRangeSlider({
    grid: true,
    min: 0,
    max: 500,
    from: 100,
    postfix: " m2",
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 10,
	max_postfix:' +',
});

$("#habitaciones").ionRangeSlider({
    grid: true,
    min: 1,
    max: 5,
    from: 2,
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 1,
	max_postfix:' +',
});

$("#banos").ionRangeSlider({
    grid: true,
    min: 1,
    max: 5,
    from: 2,
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 1,
    max_postfix:' +',
});

var $form = $("form");
$.validator.addMethod("letters", function(value, element) {
  return this.optional(element) || value == value.match(/^[a-zA-Z\s]*$/);
});
$form.validate({
  rules: {
    nombre: {
      required: true,
      minlength: 3,
      letters: false,
    },
    email: {
      required: true,
      email: true,
    },
    telefono: {
      required: true,
      phone: true,
    },
  },
  messages: {
    nombre: "Por favor ingresa su nombre correctamente",
    email: "Por favor ingresa un correo electrónico válido",
    telefono: "Por favor ingresa un número de teléfono válido"
  }
});


  function ChangeUrl(page, url) {
    if (typeof (history.pushState) != "undefined") {
      var obj = { Page: page, Url: url };
      history.pushState(obj, obj.Page, obj.Url);
    } else {
      alert("Browser does not support HTML5.");
    }
  }
  
//   $('.slider-right').click(function() {
//   	ChangeUrl('Page1', 'Page1.htm');
//   });