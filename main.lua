function love.load()
  love.graphics.setBackgroundColor(8, 5, 94)
  cartman = love.graphics.newImage("cartman.png")
  x = 100
  y = 50
  sp = { x = 300, y = 200 }
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    x = x + sp.x * dt
  elseif love.keyboard.isDown("left") then
    x = x - sp.x * dt
  end

  if love.keyboard.isDown("down") then
    y = y + sp.y * dt
  elseif love.keyboard.isDown("up") then
    y = y - sp.y * dt
  end
end

function love.draw()
  love.graphics.draw(cartman, x, y)
end
