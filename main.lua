test = require("src.unit")
gridClass = require("src.grid")
enemyCls = require("src.enemy")
turretCls = require("src.turret")
spawnClass = require("src.spawner")

test:setX(300)
test:setY(150)
test:setSpeed(300)
x = 300
y = 150
bulletCls = require ("src.bullet")
bullet = bulletCls(25, 35, 40)

grid = gridClass.new()
spawner = spawnClass.new()

-- unitClass = require("src.unit")

-- test spawning units
-- unitOne = unitClass.new(os.clock())
-- unitTwo = unitClass.new(os.clock())
-- unitThree = unitClass.new(os.clock())
local enemy = enemyCls(0, 0, 10, 2, 1, 60, 5, 3, 99)
local enemy2 = enemyCls(0, 0, 15, 2, 1, 60, 5, 3, 99)
local turret = turretCls(0, 0, 38, 2, 2, 2, 50000)

local startClockTime = os.clock()


function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
end
function love.update(dt)
	test:update(dt)
	spawner:update(dt, startClockTime)
end

function love.draw()
	love.graphics.setBackgroundColor(50, 50, 50)
	grid:draw()
	love.graphics.setColor(255, 255, 255) --reset color to white
	test:draw()
	enemy:draw(100, 100)
	enemy2:draw(100, 200)
	turret:draw(100,300)

	spawner:draw()

	love.graphics.print("Hello World", 400, 300)
	love.graphics.print("Bullet Damage: "..bullet:getDamage()..", Bullet Speed "..bullet:getSpeed(), 500, 400)
	--love.graphics.print(os.clock(), 200,200)
	--love.graphics.print("one: " .. unitOne:getTag(), 100, 10)
	--love.graphics.print("two: " .. unitTwo:getTag(), 100, 40)
	--love.graphics.print("three: " .. unitThree:getTag(), 100, 90)
end
