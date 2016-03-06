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
            self.tiles[i][j] = TileClass.new(i, j, NUM_TILE_ROWS, NUM_TILE_COLUMNS)
        end
    end

    return self
end

function Grid:draw()
    for i=1,NUM_TILE_COLUMNS do
        for j=1, NUM_TILE_ROWS do
            if i >10 and i < 14 then
                self.tiles[i][j]:draw(false)
            else
                self.tiles[i][j]:draw(true)
            end
        end
    end
end

return Grid