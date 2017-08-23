function love.load()
  love.graphics.setBackgroundColor(8, 5, 94)
  cartman = love.graphics.newImage("cartman.png")
  x = 100
  y = 50
  speedX = 300
  speedY = 200
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    x = x + speedX * dt
  elseif love.keyboard.isDown("left") then
    x = x - speedX * dt
  end

  if love.keyboard.isDown("down") then
    y = y + speedY * dt
  elseif love.keyboard.isDown("up") then
    y = y - speedY * dt
  end
end

function love.draw()
  love.graphics.draw(cartman, x, y)
end
