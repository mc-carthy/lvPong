function love.load()
    Object = require('classic')
    Game = require('game')
    Entity = require('entity')
    Pad = require('pad')
    Ball = require('ball')

    game = Game()
end

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end

function love.keypressed(key)
    if key == "r" then
        love.load()
    end
end