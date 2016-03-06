local Unit = {}
Unit.__index = Unit

setmetatable(Unit, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

function Unit.new()
	local self = setmetatable({}, Unit)
	
	self.x = 0
	self.y = 0
	self.image = nil
	
	return self
end

function Unit:getX()
	return self.x
end

function Unit:setX(xValue)
	self.x = xValue
end

function Unit:getY()
	return self.y
end

function Unit:setY(yValue)
	self.y = yValue
end

function Unit:getImage()
	return self.image
end

function Unit:setImage(imageValue)
	self.image = imageValue
end

return Unit