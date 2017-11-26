Rectangle = Shape:extend()

function Rectangle:new(x, y, width, height)
    Rectangle.super.new(self, x, y)
    self.width = width
    self.height = height
    self.speed = 300
end

function Rectangle:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

return Rectangle