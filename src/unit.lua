Unit = {}
Unit.__index = Unit

setmetatable(Unit, {
	__call = function(cls, ...)
	local self = setmetatable({}, cls)
	self:_init(...)
	return self
	end,
})

--xPos value, yPos value, health, attack damage, attack range, fire rate, scalex, scaley, image
function Unit:_init(xValue, yValue, hp, damage, range, firerate, image)
	
	self.x = xValue
	self.y = yValue
	self.hp = hp
	self.damage = damage
	self.range = range
	self.firerate = firerate
	self.image = image

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
	local imgWidth = self.image:getWidth()
	local imgHeight = self.image:getHeight()
	local tileWidth = screenWidth / (NUM_TILE_COLUMNS - 2)
	local tileHeight = screenHeight / (NUM_TILE_ROWS * 2)
	local sx = tileWidth * .8 / imgWidth
	local sy = tileHeight * .8 / imgHeight
	love.graphics.draw(self.image, self.x, self.y, 0, sx, sy)
end

return Unit