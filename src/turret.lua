local Turret = {}
Turret.__index = Turret

setmetatable(Turret, {
	__index = Unit,
	__call = function(cls, ...)
	local self = setmetatable({}, cls)
	self:_init(...)
	return self
	end,
})


function Turret:_init(xValue, yValue, hp, damage, range, firerate, cost)

	Unit._init(self, xValue, yValue, hp, damage, range, firerate)
	self.cost = cost
end

function Turret:getCost()
	return self.cost
end

function Turret:draw(x, y)
	love.graphics.print("Turret - HP: "..self.hp..", cost: "..self.cost, x, y)
end

return Turret