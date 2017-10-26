randomColor = ->
	r = Math.floor(math.random(0, 500))
	g = Math.floor( math.random(0, 500))
	b = Math.floor( math.random(0, 500))
	'rgb(' + r + ',' + g + ',' + b + ')'


Point = (x, y, rad, opacity)->
	@x = x or math.random(0, window.innerWidth)
	@y = y or math.random(0, window.innerHeight)
	@rad = rad or math.random(5, 20)
	@opacity = opacity or 1
	ctx.beginPath();
	ctx.fillStyle =  randomColor()
	ctx.arc(@x, @y, @rad, 0, Math.PI*2, true);
	ctx.closePath();
	ctx.globalAlpha = @opacity
	ctx.fill();
	@

