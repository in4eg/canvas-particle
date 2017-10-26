do ->
  requestAnimationFrame = window.requestAnimationFrame or window.mozRequestAnimationFrame or window.webkitRequestAnimationFrame or window.msRequestAnimationFrame
  window.requestAnimationFrame = requestAnimationFrame
  return

canvas = document.getElementById 'canvas'

width = 0
height = 0

do setCanvasSize = ->
  width = window.innerWidth
  height = window.innerHeight

  canvas.width = width
  canvas.height = height
  return

ctx = canvas.getContext '2d'

points = []

addPoint = ->
  points.push new Point math.random(0, window.innerWidth), math.random(0, window.innerHeight), math.random(0, 3)

  if points.length <= math.random(window.innerWidth, window.innerWidth)
    requestAnimationFrame addPoint
  
  return

addPoint()


window.addEventListener 'resize', ->
  setCanvasSize()
  return
