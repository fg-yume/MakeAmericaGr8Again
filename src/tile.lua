local Tile = {}
Tile.__index = Tile

setmetatable(Tile, {
	__call = function(cls, ...)
	return cls.new(...)
	end,
})

function Tile.new()
	local self = setmetatable({}, Tile)

	self.size = love.graphics.getWidth() / 23 --10 for each side of the lanes, 3 for the wall
	self.units = {}

	return self
end

-- Insert new item into the tile
function Tile.insert(item)
	table.insert(self.units, item)
end

return Tile