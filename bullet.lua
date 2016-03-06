local Bullet = {}
Bullet.__index = Bullet

setmetatable(Bullet, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})


function Bullet.new(damage, speed, lt)
	local self = setmetatable({}, Bullet)

	self.damage = damage
	self.speed = speed
	self.lifetime = lt

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

function Bullet:getLifetime()
	return self.lifetime
end

function Bullet:setLifetime(lt)
	self.lifetime = lt
end

return Bullet