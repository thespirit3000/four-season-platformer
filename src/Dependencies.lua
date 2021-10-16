Class = require "lib.class"
push = require "lib.push"
sti = require 'lib.sti'
anim8 = require 'lib.anim8'
wf = require 'lib.windfield'

require "src.Util"

require "src.StateMachine"
require "src.states.BaseState"
require "src.states.PlayState"
require "src.states.StartState"
require "src.states.HightScoresState"
require "src.states.ServeState"
require "src.states.GameOverSate"

require "src.Player"
require 'src.PlayerAnimation'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
VIRTUAL_HEIGHT = 512
VIRTUAL_WIDTH = 864
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

gTextures = {['player'] = love.graphics.newImage('assets/playerSheet.png')}

gFrames = {}

gFonts = {
    ["small"] = love.graphics.newFont("assets/fonts/font.ttf", 8),
    ["medium"] = love.graphics.newFont("assets/fonts/font.ttf", 16),
    ["large"] = love.graphics.newFont("assets/fonts/font.ttf", 32)
}

gMaps = {["testing"] = sti('maps/level0.lua')}

gColisionClasses = {'Player', 'Platform', 'Enemy', 'Danger'}
