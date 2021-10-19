local Color = {red = 0, green = 0, blue = 0}

function Color:new(o, r, g, b)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.red = r or 0
	self.green = g or 0
	self.blue = b or 0;
	return o
end

function Color:getColor()
	rgb = {self.red, self.green, self.blue}
	return rgb
end

return Color
