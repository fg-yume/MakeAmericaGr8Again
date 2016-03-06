local Bullet = {}
Bullet.__index = Bullet

setmetatable(Bullet, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})


function Bullet.new()
	local self = setmetatable({}, Bullet)

	self.damage = 0
	self.speed = 0

	return self
end

function Bullet:getDamage()
	return self.damage
end

function Bullet:setDamage(dmg)
	self.damage = dmg
end

function Bullet:getSpeed()
	return self.speed
end

function Bullet:setSpeed(spd)
	self.speed = spd
end

return Bullet