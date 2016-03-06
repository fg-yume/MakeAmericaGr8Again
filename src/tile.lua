require "src.globals"

local Tile = {}
Tile.__index = Tile

setmetatable(Tile, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})


function Tile.new(x, y, numRows, numCols)
	local self = setmetatable({}, Tile)

	self.width = screenWidth / (numCols - 2)
	self.height = screenHeight / (numRows * 2)
	self.units = {}
	self.x = (x * self.width) - self.width
	self.y = ((y * self.height) - self.height) + screenHeight/4

	return self
end

-- Insert new item into the tile
function Tile.insert(item)
	table.insert(self.units, item)
end

function Tile:draw(drawLane)
	if drawLane then
		love.graphics.setColor(0, 0, 255)
		love.graphics.rectangle("line", self.x, self.y, self.width, self.height, 10, 10)
	else
		love.graphics.setColor(169, 169, 169)
		love.graphics.rectangle("fill", self.x, self.y, self.width, self.height, 10, 10)
		love.graphics.setColor(0, 0, 255)
		love.graphics.rectangle("line", self.x, self.y, self.width, self.height, 10, 10)
	end
end

return Tile