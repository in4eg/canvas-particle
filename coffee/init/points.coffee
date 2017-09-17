Point = ->
  ctx.beginPath();
  ctx.fillStyle = '#fff'
  ctx.arc(20, 20, 10, 0, Math.PI*2, true);
  ctx.closePath();
  ctx.fill();
	@
