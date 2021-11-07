(function() {
	var projectsGrid = new FsLibrary('.listing-prop-collection-list');
		
  var myFilters = [
    {filterWrapper: ".tipo-filters", filterType: "multi", filterByClass:".listing-type",},
    {filterWrapper: ".area-filters", filterType: "exclusive", filterByClass:".area-const",filterRange: true},
    {filterWrapper: ".precio-filters", filterType: "exclusive", filterByClass:".property-cost",filterRange: true},
    {filterWrapper: ".precio-filters-renta", filterType: "exclusive", filterByClass:".property-cost",filterRange: true},
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
  
  projectsGrid.loadmore({
		button: ".load-more-button",
    resetIx: true,
    loadAll: true,
    paginate: {
			enable: false,
			itemsPerPage: 20,
			insertPagination: '.pagination-container',
			bgColor: '#FFFFFF',
			bgColorActive: '#240c2e',
			textColor: '#240c2e',
      textColorActive: '#FFFFFF',
			borderColor: '#3D315B'
    },
		animation: {
			enable: false
		}
  })
  })();