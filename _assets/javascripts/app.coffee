#= require vendor/jquery.min
#= require vendor/jquery.easing.1.3
#= require vendor/jquery.scrollTo
#= require vendor/featherlight
#= require vendor/featherlight.gallery
#= require vendor/waypoints

$ ->
	$logo = $('.logo')
	if $('.type-hero').length > 0
		$('.matterhorn-container').waypoint (direction) ->
   		if direction == 'down'
   			$logo.addClass 'show'
   		else 
   			$logo.removeClass 'show'
   	,offset: '70'
	else 
		$logo.addClass 'show'

	$(document).on 'click', '.zoom-caption', (e) ->
			$('body').addClass 'noscroll'
	$(document).on 'click', '.featherlight-close, .featherlight', (e) ->
			$('body').removeClass 'noscroll'
	$(document).on 'click', '.nav-button', (e) ->
		$(this).toggleClass 'show'
		$('.bubble-nav').toggleClass 'show'