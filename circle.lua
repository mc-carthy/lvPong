Circle = Shape:extend()

function Circle:new(x, y, radius)
    Circle.super.new(self, x, y)
    self.radius = radius
    self.speed = 100
end

function Circle:draw()
    love.graphics.circle('fill', self.x, self.y, self.radius)
end

return Circle