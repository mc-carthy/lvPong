Ball = Entity:extend()

function Ball:new()
    Ball.super.new(self, 400, 300, 15, 15)

    if math.random(1, 2) == 1 then
        self.xSpeed = 400
    else
        self.xSpeed = -400
    end

    if math.random(1, 2) == 1 then
        self.ySpeed = 500
    else
        self.ySpeed = -500
    end

    self.timer = 1
end

function Ball:update(dt)
    if self.timer > 0 then
        self.timer = self.timer - dt
    else
        Ball.super.update(self, dt)
    end
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

function Ball:outOfBounds()
    if self.x + self.width < 0 then
        return "left"
    elseif self.x > love.graphics.getWidth() then
        return "right"
    else
        return false
    end
end

return Ball