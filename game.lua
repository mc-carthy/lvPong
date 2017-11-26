Game = Object:extend()

function Game:new()
    self.padLeft = Pad()
    self.padLeft.keyUp = 'w'
    self.padLeft.keyDown = 's'
    self.padRight = Pad()
    self.padRight.x = 740
end

function Game:update(dt)
    self.padLeft:update(dt)
    self.padRight:update(dt)
end

function Game:draw()
    self.padLeft:draw()
    self.padRight:draw()
end

return Game