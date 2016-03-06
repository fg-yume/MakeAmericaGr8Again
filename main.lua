test = require("src.unit")

test:setX(300)
test:setY(150)
test:setSpeed(300)
x = 300
y = 150
bulletCls = require ("bullet")
bullet = bulletCls.new(25, 35, 40)

bullet = require ("src.bullet")

function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
end
function love.update(dt)
	test:update(dt)
end

function love.draw()
	test:draw()

	love.graphics.print("Hello World", 400, 300)
	love.graphics.print("Bullet Damage: "..bullet:getDamage()..", Bullet Speed "..bullet:getSpeed(), 500, 400)
end
