do ->
  requestAnimationFrame = window.requestAnimationFrame or window.mozRequestAnimationFrame or window.webkitRequestAnimationFrame or window.msRequestAnimationFrame
  window.requestAnimationFrame = requestAnimationFrame
  return

canvas = document.getElementById('canvas')

width = 0
height = 0

do setCanvasSize = ->
  width = window.innerWidth
  height = window.innerHeight

  canvas.width = width
  canvas.height = height
  return

ctx = canvas.getContext('2d')

points = []


for [0...100]
  points.push new Point 10, 20




window.addEventListener 'resize', ->
  setCanvasSize()
  return
