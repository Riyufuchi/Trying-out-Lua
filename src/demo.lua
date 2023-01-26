package.path = package.path .. ";../?.lua"
local code = require("utilsCLI/code")
local Color = require("utilsCLI/Color")
local util = require("linuxUtil")
local flag = require("flag")

function main()
	--textColor = Color:new(nil, 105, 255, 180)
	textColor = Color:new(nil, 0, 255, 255)
	code.createColoredHeader(textColor:getColor(), "Hello world, from " .. _VERSION)
	flag.drawFlagColored()
	util.updateColored(true)
end

main()
