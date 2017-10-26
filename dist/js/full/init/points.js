var Point, randomColor;

randomColor = function() {
  var b, g, r;
  r = Math.floor(math.random(0, 500));
  g = Math.floor(math.random(0, 500));
  b = Math.floor(math.random(0, 500));
  return 'rgb(' + r + ',' + g + ',' + b + ')';
};

Point = function(x, y, rad, opacity) {
  this.x = x || math.random(0, window.innerWidth);
  this.y = y || math.random(0, window.innerHeight);
  this.rad = rad || math.random(5, 20);
  this.opacity = opacity || 1;
  ctx.beginPath();
  ctx.fillStyle = randomColor();
  ctx.arc(this.x, this.y, this.rad, 0, Math.PI * 2, true);
  ctx.closePath();
  ctx.globalAlpha = this.opacity;
  ctx.fill();
  return this;
};
