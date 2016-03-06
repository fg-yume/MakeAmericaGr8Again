test = require("unit")
x = 300
y = 150

function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
	test:setImage(yuzu)
end
function love.update(dt)
	if love.keyboard.isDown("left") then
		x = x - 60 * dt;
	end
	if love.keyboard.isDown("right") then
		x = x + 60 * dt;
	end
	if love.keyboard.isDown("up") then
		y = y - 60 * dt;
	end
	if love.keyboard.isDown("down") then
		y = y + 60 * dt;
	end
	
	test:setX(x)
	test:setY(y)
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
end
