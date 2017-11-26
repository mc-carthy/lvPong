Entity = Object:extend()

function Entity:new(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.xSpeed = 0
    self.ySpeed = 0
end

function Entity:update(dt)
    self.x = self.x + (self.xSpeed * dt)
    self.y = self.y + (self.ySpeed * dt)

    if self.y <= 0 then
        self.y = 0
        self.ySpeed = -self.ySpeed
    elseif self.y + self.height >= 600 then
        self.y = 0
        self.y = 600 - self.height
    end
end

function Entity:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

return Entity