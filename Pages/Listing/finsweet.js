(function() {
	var projectsGrid = new FsLibrary('.listing-prop-collection-list');
		
  var myFilters = [
    {filterWrapper: ".tipo-filters", filterType: "multi", filterByClass:".listing-type",},
    {filterWrapper: ".area-filters", filterType: "exclusive", filterByClass:".area-const",filterRange: true},
    {filterWrapper: ".precio-filters", filterType: "exclusive", filterByClass:".p-venta",filterRange: true},
    {filterWrapper: ".precio-filters-renta", filterType: "exclusive", filterByClass:".p-renta",filterRange: true},
    {filterWrapper: ".banos-filters", filterType: "exclusive", filterByClass:".banos",filterRange: true},
    {filterWrapper: ".hab-filters", filterType: "exclusive", filterByClass:".hab",filterRange: true},
    {filterWrapper: ".badge-filters", filterType: "exclusive", filterByClass:".badge",},
    // {filterWrapper: ".place-filters", filterType: "exclusive", filterByClass:".listing-address",},
    {filterWrapper: ".lupa-wrap", filterType: "exclusive", filterByClass:".listing-address",},
  ]

	projectsGrid.filter({
		filterArray: myFilters,
    activeClass: 'selected',
    filterReset:'.limpiar-filtro',
		animation: {
			enable: true,
			duration: 200,
			easing: 'ease-out',
			effects: 'fade translate(0px,20px)'
			}
  })
	
  projectsGrid.sort({
    sortTrigger:".sort-button-desc",
    sortReverse: true,
    activeClass:"sort-active",
    animation: {
      duration: 0
    }
  })

  } )();