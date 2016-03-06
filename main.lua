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

local Bullet = require 'TestClass'

function love.draw()
	love.graphics.draw(test:getImage(), test:getX(), test:getY())
	love.graphics.draw(yuzu, x, y)

    local a = 5
    if a == 5 then
    	love.graphics.print("Blargh", 400, 300)
    else
		love.graphics.print("Hello World", 400, 300)
	end

	Bullet:init(0,0)
	
	test:draw()
end
