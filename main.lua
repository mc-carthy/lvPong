function love.load()
    Object = require('classic')
    Shape = require('shape')
    Rectangle = require('rectangle')
    Circle = require('circle')

    r1 = Rectangle(100, 20, 50, 300)
    c1 = Circle(150, 300, 50)
end

function love.update(dt)
    r1:update(dt)
    c1:update(dt)
end

function love.draw()
    r1:draw()
    c1:draw()
end

function love.keypressed(key)
end