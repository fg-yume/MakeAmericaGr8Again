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
function love.draw()
	love.graphics.draw(test:getImage(), test:getX(), test:getY())
end