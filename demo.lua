local code = require("code")
local Color = require("Color")

function main()
	--textColor = Color:new(nil, 105, 255, 180)
	textColor = Color:new(nil, 0, 255, 255)
	code.createColoredHeader(textColor:getColor(), "Hello world, from " .. _VERSION)
end

main()
