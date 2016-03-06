x = 300
y = 200

function love.load()
	yuzu = love.graphics.newImage("yuzu.jpg")
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
end
function love.draw()
	love.graphics.draw(yuzu, x, y)
end