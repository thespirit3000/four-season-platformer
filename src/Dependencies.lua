Class = require "lib.class"
push = require "lib.push"
sti = require 'lib.sti'
require "src.Util"

require "src.StateMachine"
require "src.states.BaseState"
require "src.states.PlayState"
require "src.states.StartState"
require "src.states.HightScoresState"
require "src.states.ServeState"
require "src.states.GameOverSate"

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
VIRTUAL_HEIGHT = 256
VIRTUAL_WIDTH = 432
SkyTileSize = 16
BACKGROUND_HEIGHT = VIRTUAL_HEIGHT / SkyTileSize
BACKGROUND_WIDTH = 2 * VIRTUAL_WIDTH / SkyTileSize

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
    ['sky'] = love.graphics.newImage('assets/graphics/Background/Sky.png'),
    ['foreground'] = love.graphics.newImage(
        'assets/graphics/Foreground/Foreground.png')
}

gFrames = {
    ['skies'] = GenerateQuads(gTextures['sky'], SkyTileSize, SkyTileSize)
}

gFonts = {
    ["small"] = love.graphics.newFont("assets/fonts/font.ttf", 8),
    ["medium"] = love.graphics.newFont("assets/fonts/font.ttf", 16),
    ["large"] = love.graphics.newFont("assets/fonts/font.ttf", 32)
}

gMaps = {["testing"] = sti('maps/level0.lua')}
