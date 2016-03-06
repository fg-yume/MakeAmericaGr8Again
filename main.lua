test = require("src.unit")
gridClass = require("src.grid")
enemyCls = require("src.enemy")
turretCls = require("src.turret")

test:setX(300)
test:setY(150)
test:setSpeed(300)
x = 300
y = 150
bulletCls = require ("src.bullet")
bullet = bulletCls(25, 35, 40)

grid = gridClass.new()

-- unitClass = require("src.unit")

-- test spawning units
-- unitOne = unitClass.new(os.clock())
-- unitTwo = unitClass.new(os.clock())
-- unitThree = unitClass.new(os.clock())
local enemy = enemyCls(0, 0, 10, 2, 1, 60, 5, 3, 99)
local enemy2 = enemyCls(0, 0, 15, 2, 1, 60, 5, 3, 99)
local turret = turretCls(0, 0, 38, 2, 2, 2, 50000)


function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
end
function love.update(dt)
	test:update(dt)
end

function love.draw()
	--grid:draw()
	test:draw()
	enemy:draw(100, 100)
	enemy2:draw(100, 200)
	turret:draw(100,300)

	love.graphics.print("Hello World", 400, 300)
	love.graphics.print("Bullet Damage: "..bullet:getDamage()..", Bullet Speed "..bullet:getSpeed(), 500, 400)
	--love.graphics.print(os.clock(), 200,200)
	--love.graphics.print("one: " .. unitOne:getTag(), 100, 10)
	--love.graphics.print("two: " .. unitTwo:getTag(), 100, 40)
	--love.graphics.print("three: " .. unitThree:getTag(), 100, 90)
end
