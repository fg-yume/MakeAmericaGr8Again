-- @module Grid
-- Requires
local TileClass = require("src.tile")

-- consts
local NUM_TILE_ROWS = 4
local NUM_TILE_COLUMNS = 23

-- Class
local Grid = {}
Grid.__index = Grid
setmetatable(Grid, {
    __call = function(cls, ...)
    return cls.new(...)
    end,
})

function Grid.new()
    local self = setmetatable({}, Grid)

    self.tiles = {}

    -- Fill up tiles
    for i=1, NUM_TILE_COLUMNS do
        self.tiles[i] = {} -- new row
        for j=1, NUM_TILE_ROWS do
            self.tiles[i][j] = TileClass.new()
        end
    end

    return self
end

function Grid:draw()
    for i, tileObj in ipairs(self.tiles) do
        tileObj.draw()
    end
end

return Grid