local Tile = {}
Tile.__index = Tile

setmetatable(Tile, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

function Tile.new(x, y)
	local self = setmetatable({}, Tile)

	self.width = love.graphics.getWidth() / 23
	self.height = love.graphics.getHeight() / 5
	self.units = {}
	self.x = x * self.width
	self.y = y * self.height

	return self
end

-- Insert new item into the tile
function Tile.insert(item)
	table.insert(self.units, item)
end

function Tile:draw()
	love.graphics.print(self.x..", "..self.y, self.x, self.y)
end

return Tile