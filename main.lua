test = require("unit")

test:setX(300)
test:setY(150)
test:setSpeed(300)

function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
end
function love.update(dt)
	test:update(dt)
end
function love.draw()
	test:draw()
end