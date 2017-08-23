function love.load()
  love.graphics.setBackgroundColor(8, 5, 94)
  cartman = love.graphics.newImage("cartman.png")
  x = 100
  y = 50
end

function love.update(dt)
  print(dt)

  if love.keyboard.isDown("right") then
    x = x + 200 * dt
  elseif love.keyboard.isDown("left") then
    x = x - 200 * dt
  elseif love.keyboard.isDown("down") then
    y = y + 200 * dt
  elseif love.keyboard.isDown("up") then
    y = y - 200 * dt
  end

end

function love.draw()
  love.graphics.draw(cartman, x, y)
end
