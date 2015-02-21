$ -> 
	$logo = $('.logo')
	if $('.type-hero').length > 0
		console.log 'whatever'
		$('.matterhorn-container').waypoint (direction) ->
   		if direction == 'down'
   			$logo.addClass 'show'
   		else 
   			$logo.removeClass 'show'
   	,offset: '70'
	else 
		$logo.addClass 'show'