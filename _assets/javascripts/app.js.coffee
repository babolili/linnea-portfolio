#= require libs/jquery.min
#= require libs/waypoints
#= require libs/featherlight
#= require libs/featherlight.gallery

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