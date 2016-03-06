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
	love.graphics.print("Enemy - HP: "..self.hp..", speed: "..self.speed, self.xValue, self.yValue)
end

return Enemy