local Tile = {}
Tile.__index = Tile

setmetatable(Tile, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

function Tile.new(x, y)
	local self = setmetatable({}, Tile)

	self.size = love.graphics.getWidth() / 23 --10 for each side of the lanes, 3 for the wall
	self.units = {}
	self.x = x * self.size
	self.y = y * self.size

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