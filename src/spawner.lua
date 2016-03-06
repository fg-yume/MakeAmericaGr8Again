local Enemy = require ("src.enemy")

-- Stuff
local screenWidth = love.graphics.getWidth()
local screenHeight = love.graphics.getHeight()

-- Class[]
local Spawner = {}
Spawner.__index = Spawner

setmetatable(Spawner, {
    _call = function(cls, ...)
    return cls.new(...)
    end
})

function Spawner.new()
    local self = setmetatable({}, Spawner)
    local counter = .001

    self.spawnTimers = {}
    self.spawnUnits = {}

    self.currentUnits = {}

    -- Fill up spawner
    table.insert(self.spawnTimers, 10 * love.timer.getDelta())

    self.spawnUnits[1] = {}
    table.insert(self.spawnUnits[1],
        Enemy( 100, 100, 10, 10, 5, 10, yuzu, 4, ( os.clock() + counter ) * 1000 ))

    counter = counter + .001

    table.insert(self.spawnTimers, 15 * love.timer.getDelta())

    self.spawnUnits[2] = {}
    table.insert(self.spawnUnits[2],
        Enemy( 100, 200, 10, 10, 5, 10, yuzu, 4, ( os.clock() + counter ) * 1000 ))

    return self
end

function Spawner:update(dt, startClock)
    local currentPassage = os.clock() - startClock

    -- Add units to available unit list
    if( #self.spawnTimers >= 1 ) then
        print( "spawn timer available, checking if enough time has elapsed! ")
        -- Check if enough time has elapsed
        if( currentPassage >= self.spawnTimers[1] ) then
            print( "enough time elapsed! time to spawn" )
            for i=1, #self.spawnUnits[1] do
                self:spawn( self.spawnUnits[1][i] )
            end

            -- Clear firstmost timer and unit list
            table.remove(self.spawnTimers, 1)
            table.remove(self.spawnUnits, 1)
        end
    end

    -- Update available units
    for j=1, #self.currentUnits do
        self.currentUnits[j]:update()
    end
end

function Spawner:draw()
    -- draw available units
    for j=1, #self.currentUnits do
        self.currentUnits[j]:draw()
    end
end

function Spawner:spawn( unit )
    table.insert(self.currentUnits, unit)
    print( "spawning a unit!!!" )
end

return Spawner