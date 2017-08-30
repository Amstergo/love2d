vector = require "vector"

position = vector(10, 10)

speed = vector(100, 200)

function love.load()
  love.graphics.setBackgroundColor(8, 5, 94)
  cartman = love.graphics.newImage("cartman.png")
  butterfly = love.graphics.newImage("butterfly.png")
  font = love.graphics.newFont("verdana.ttf", 20)
end

function love.update(dt)
  mousePosition = vector(love.mouse.getX(), love.mouse.getY())
  dir = mousePosition - position
  ndir = dir:normalized()

  if dir:len2() > 16 then
    position = position + ndir * 200 * dt
  end
end

function love.draw()
  love.graphics.setFont(font)
  love.graphics.draw(cartman, position.x, position.y)
  love.graphics.draw(butterfly, mousePosition.x, mousePosition.y)
  love.graphics.print("text", position.x, position.y)
end
