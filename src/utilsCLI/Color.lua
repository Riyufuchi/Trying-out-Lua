local Color = {red = 0, green = 0, blue = 0}

function Color:new(o, r, g, b)
	o = o or {} -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	self.red = r or 0
	self.green = g or 0
	self.blue = b or 0
	return o
end

function Color:getColor()
	return {self.red, self.green, self.blue}
end

function Color:toString()
	return "Color["..self.red..", "..self.green..", "..self.blue.."]"
end

return Color
