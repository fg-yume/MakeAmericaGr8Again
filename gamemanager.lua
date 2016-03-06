local GameManager = {}
GameManager.__index = GameManager

setmetatable(GameManager, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

function GameManager.new()
	local self = setmetatable({}, GameManager)
	
	self.playerHealth = 23
	self.wallStrength = 0
	
	return self
end

function GameManager:getPlayerHealth()
	return self.playerHealth
end
function GameManager:setPlayerHealth(healthValue)
	self.playerHealth = healthValue
end

function GameManager:getWallStrength()
	return self.wallStrength
end
function GameManager:setWallStrength(strengthValue)
	self.wallStrength = strengthValue
end

function GameManager:reduceHealth()
	self.playerHealth = self.playerHealth - 1
end

function GameManager:update(dt)
	--input logic
	--collision detection
end

function GameManager:draw()
	--stuff
end

return GameManager