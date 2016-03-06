local Enemy = {}
Enemy.__index = Enemy

setmetatable(Enemy, {
	__index = Unit,
	__call = function(cls, ...)
	local self = setmetatable({}, cls)
	self:_init(...)
	return self
	end,
})


function Enemy:_init(xValue, yValue, hp, damage, range, firerate, image, speed, tag)
	print("tag is " .. tag)

	Unit._init(self, xValue, yValue, hp, damage, range, firerate, image)
	self.speed = speed
	self.tag = tag*1000
end

function Enemy:getSpeed()
	return self.speed
end

function Enemy:getTag()
	return self.tag
end

function Enemy:update()
end

function Enemy:draw()
	local imgWidth = self.image:getWidth()
	local imgHeight = self.image:getHeight()
	local tileWidth = screenWidth / (NUM_TILE_COLUMNS - 2)
	local tileHeight = screenHeight / (NUM_TILE_ROWS * 2)
	local sx = tileWidth * .8 / imgWidth
	local sy = tileHeight * .8 / imgHeight
	love.graphics.draw(self.image, self.x, self.y, 0, sx, sy)
	--love.graphics.print("Enemy - HP: "..self.hp..", speed: "..self.speed, self.xValue, self.yValue)
end

return Enemy