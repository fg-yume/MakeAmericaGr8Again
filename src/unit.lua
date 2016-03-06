Unit = {}
Unit.__index = Unit

setmetatable(Unit, {
	__call = function(cls, ...)
	local self = setmetatable({}, cls)
	self:_init(...)
	return self
	end,
})

function Unit:_init(xValue, yValue, hp, damage, range, firerate)
	
	self.x = xValue
	self.y = yValue
	self.hp = hp
	self.damage = damage
	self.range = range
	self.firerate = firerate
	self.image = nil

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

function Unit:getSpeed()
	return self.speed
end

function Unit:setSpeed(speedValue)
	self.speed = speedValue
end

function Unit:getImage()
	return self.image
end

function Unit:setImage(imageValue)
	self.image = imageValue
end


function Unit:update(dt)
	if love.keyboard.isDown("left") then
		self.x = self.x - self.speed * dt;
	end
	if love.keyboard.isDown("right") then
		self.x = self.x + self.speed * dt;
	end
	if love.keyboard.isDown("up") then
		self.y = self.y - self.speed * dt;
	end
	if love.keyboard.isDown("down") then
		self.y = self.y + self.speed * dt;
	end
end

function Unit:draw()
	love.graphics.draw(self.image, self.x, self.y)
end

return Unit