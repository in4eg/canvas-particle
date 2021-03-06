var addPoint, canvas, ctx, height, points, setCanvasSize, width;

(function() {
  var requestAnimationFrame;
  requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;
  window.requestAnimationFrame = requestAnimationFrame;
})();

canvas = document.getElementById('canvas');

width = 0;

height = 0;

(setCanvasSize = function() {
  width = window.innerWidth;
  height = window.innerHeight;
  canvas.width = width;
  canvas.height = height;
})();

ctx = canvas.getContext('2d');

points = [];

addPoint = function() {
  points.push(new Point(math.random(0, window.innerWidth), math.random(0, window.innerHeight), math.random(0, 3)));
  if (points.length <= math.random(window.innerWidth, window.innerWidth)) {
    requestAnimationFrame(addPoint);
  }
};

addPoint();

window.addEventListener('resize', function() {
  setCanvasSize();
});
