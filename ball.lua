Ball = Entity:extend()

function Ball:new()
    Ball.super.new(self, 400, 300, 15, 15)
    self.xSpeed = 400
    self.ySpeed = -500
end

function Ball:update(dt)
    Ball.super.update(self, dt)
end

function Ball:draw()
    Ball.super.draw(self)
end

function Ball:bounce(e)
    local left1 = self.x
    local right1 = self.x + self.width
    local top1 = self.y
    local bottom1 = self.y + self.height

    local left2 = e.x
    local right2 = e.x + e.width
    local top2 = e.y
    local bottom2 = e.y + e.height

    if left1 < right2 and right1 > left2 and top1 < bottom2 and bottom1 > top2 then
        self.xSpeed = -self.xSpeed
    end
end

return Ball