livescript = require 'livescript'

export translate = (load) ->
	output = livescript.compile load.source,
		filename: load.address
		map: true
		bare: true
	load.source = output.code
