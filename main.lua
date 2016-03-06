unitCls = require("src.unit")
gridCls = require("src.grid")
enemyCls = require("src.enemy")
turretCls = require("src.turret")
spawnCls = require("src.spawner")
require ("src.globals")
bulletCls = require ("src.bullet")

grid = gridCls.new()
spawner = spawnCls.new()



-- test spawning units
-- unitOne = unitClass.new(os.clock())
-- unitTwo = unitClass.new(os.clock())
-- unitThree = unitClass.new(os.clock())
--local unit = unitCls(300, 150, 0, 0, 0, 0, (screenWidth / (numCols - 2)), (screenHeight / (numRows * 2)), yuzu)
--local enemy = enemyCls(100, 100, 10, 2, 1, 60, 5, 3, 99)
--local enemy2 = enemyCls(100, 200, 15, 2, 1, 60, 5, 3, 99)
--local turret = turretCls(100, 300, 38, 2, 2, 2, 50000)

local startClockTime = os.clock()


function love.load()
	bullet = bulletCls(25, 35, 40)
	unit = unitCls(300, 150, 0, 0, 0, 0, yuzu)
	unit:setSpeed(40)
end

function love.update(dt)
	spawner:update(dt, startClockTime)
	unit:update(dt)
end

function love.draw()
	love.graphics.setBackgroundColor(50, 50, 50)
	grid:draw()
	love.graphics.setColor(255, 255, 255) --reset color to white
	unit:draw()

	spawner:draw()

	love.graphics.print("Hello World", 400, 300)
	love.graphics.print("Bullet Damage: "..bullet:getDamage()..", Bullet Speed "..bullet:getSpeed(), 500, 400)
	love.graphics.print("Elapsed TIme: "..os.clock() - startClockTime, 800, 500)
	--love.graphics.print(os.clock(), 200,200)
	--love.graphics.print("one: " .. unitOne:getTag(), 100, 10)
	--love.graphics.print("two: " .. unitTwo:getTag(), 100, 40)
	--love.graphics.print("three: " .. unitThree:getTag(), 100, 90)
end
