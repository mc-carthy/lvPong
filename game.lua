Game = Object:extend()

function Game:new()
    self.padLeft = Pad()
    self.padLeft.keyUp = 'w'
    self.padLeft.keyDown = 's'
    self.padRight = Pad()
    self.padRight.x = 740
    self.ball = Ball()

    self.scoreLeft = 0
    self.scoreRight = 0
end

function Game:update(dt)
    self.padLeft:update(dt)
    self.padRight:update(dt)
    self.ball:update(dt)
    self.ball:bounce(self.padLeft)
    self.ball:bounce(self.padRight)

    local ballStatus = self.ball:outOfBounds()
    if ballStatus == "left" then
        self.scoreRight = self.scoreRight + 1
        self.ball = Ball()
    elseif ballStatus == "right" then
        self.scoreLeft = self.scoreLeft + 1
        self.ball = Ball()
    end
end

function Game:draw()
    for i = 0, 10 do
        love.graphics.rectangle('fill', 390, 80 * i, 20, 60)
    end

    self.padLeft:draw()
    self.padRight:draw()
    self.ball:draw()
    myFont = love.graphics.newFont(80)
    love.graphics.setFont(myFont)
    love.graphics.print(self.scoreLeft .. "-" .. self.scoreRight, 335, 20, 0, 1, 1)
end

return Game