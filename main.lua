test = require("src.unit")

test:setX(300)
test:setY(150)
test:setSpeed(300)

bullet = require ("src.bullet")

function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
	bullet:setDamage(20)
	bullet:setSpeed(30)
end
function love.update(dt)
	test:update(dt)
end

function love.draw()
	test:draw()

	love.graphics.print("Hello World", 400, 300)
	love.graphics.print("Bullet Damage: "..bullet:getDamage()..", Bullet Speed "..bullet:getSpeed(), 500, 400)
end
