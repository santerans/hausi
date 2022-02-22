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
    from: 2.5,
    hide_min_max: false,
    decorate_both: true,
    force_edges: true,
    step: 0.5,
    max_postfix:' +',
});

$("#parqueaderos").ionRangeSlider({
  grid: true,
  min: 0,
  max: 5,
  from: 1,
  hide_min_max: false,
  decorate_both: true,
  force_edges: true,
  step: 1,
  max_postfix:' +',
});

$("#alicuota").ionRangeSlider({
  grid: true,
  min: 0,
  max: 200,
  from: 40,
  hide_min_max: false,
  decorate_both: true,
  force_edges: true,
  step: 20,
  max_postfix:' +',
});

var $form = $("form");
$.validator.addMethod("phoneEC", function(value, element) {
  return this.optional(element) || value == value.match(/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/);
});

$.validator.addMethod("alfanumerico", function (value, element) {
    var pattern = /^[\w]+$/i;
    return this.optional(element) || pattern.test(value);
  }, "El campo debe tener un valor alfanumérico (azAZ09)");

$form.validate({
  rules: {
    nombre: {
      required: true,
      minlength: 3,
      alfanumerico: true,
    },
    email: {
      required: true,
      email: true,
    },
    telefono: {
      required: true,
      minlength: 10,
      phoneEC: true,
    },
  },
  messages: {
    nombre: "Por favor ingresa tu nombre correctamente",
    email: "Por favor ingresa un correo electrónico válido",
    telefono: "Por favor ingresa un número de teléfono válido",
  }
});