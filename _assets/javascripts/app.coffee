#= require vendor/jquery.min
#= require vendor/jquery.easing.1.3
#= require vendor/jquery.scrollTo
#= require vendor/waypoints

$ ->
	$nav =  $('.bubble-nav')
	$browser = $('html, body')
	$(document).on 'click', '.scroll-link', (e) ->
		if $(this).data('scroll')
		  e.preventDefault()
		  $.scrollTo($(this).data('scroll'),700, easing: 'easeInOutQuart')
		  $nav.removeClass('show')
		  $browser.removeClass('noscroll')

	$(document).on 'click', '.nav-button', (e) ->
		$nav.toggleClass('show')
		$browser.toggleClass('noscroll')
	  

