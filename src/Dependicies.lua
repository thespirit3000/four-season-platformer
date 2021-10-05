Class = require "lib.class"
push = require "lib.push"
require "src.Util"

require "src.StateMachine"
require "src.states.BaseState"
require "src.states.PlayState"
require "src.states.StartState"
require "src.states.HightScoresState"
require "src.states.ServeState"
require "src.states.GameOverSate"

gStateMachine = StateMachine {
    ["start"] = function() return StartState() end,
    ["play"] = function() return PlayState() end,
    ["hight-scores"] = function() return HightScoresState() end,
    ["serve"] = function() return ServeState() end,
    ["game-over"] = function() return GameOverState() end
}

gSounds = {
    ["music"] = love.audio.newSource("assets/sounds/music.wav", "static")
}

gTextures = {
    ["background"] = love.graphics.newImage("assets/graphics/background.png"),
    ['main'] = love.graphics.newImage('assets/graphics/tiny.png')
}
gFrames = {}

gFonts = {
    ["small"] = love.graphics.newFont("assets/fonts/font.ttf", 8),
    ["medium"] = love.graphics.newFont("assets/fonts/font.ttf", 16),
    ["large"] = love.graphics.newFont("assets/fonts/font.ttf", 32)
}
