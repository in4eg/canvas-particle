math =
	random: (min, max)->
		return Math.round Math.random() * (max - min) + min

console.log math.random(0, 10)