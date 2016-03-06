unit = require "unit"
require ("src.globals")

local GameManager = {}
GameManager.__index = GameManager

setmetatable(GameManager, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

local mouseX, mouseY
local image = unit.getImage()

function GameManager.new()
	local self = setmetatable({}, GameManager)
	
	self.playerHealth = 8
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
	mouseX, mouseY = love.mouse.getPosition()
	--collision detection
end

function GameManager:draw()
	--stuff
end

return GameManager