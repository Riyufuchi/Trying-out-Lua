local code = require("code")
local Color = require("Color")
local util = require("linuxUtil")

function main()
	--textColor = Color:new(nil, 105, 255, 180)
	textColor = Color:new(nil, 0, 255, 255)
	code.createColoredHeader(textColor:getColor(), "Hello world, from " .. _VERSION)
	util.updateColored(true)
end

main()
