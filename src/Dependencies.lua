Class = require "lib.class"
push = require "lib.push"
sti = require 'lib.sti'
anim8 = require 'lib.anim8'
wf = require 'lib.windfield'
camera = require 'lib.hump.camera'
Timer = require 'lib.knife.timer'
Helium = require("lib.helium")
Flux = require("lib.flux")

require "src.Util"

require "src.StateStack"
require "src.StateMachine"
require "src.states.BaseState"
require "src.states.PlayState"
require "src.states.StartState"
require "src.states.HightScoresState"
require "src.states.ServeState"
require "src.states.GameOverSate"
require("src.states.MainMenuState")

require("src.world.Level")

require "src.Player"
require 'src.EnemyBase'
require 'src.PlayerAnimation'
require 'src.Fruit'

require("src.Enemies.enemyTextures")
require("src.Enemies.Bullet")
require 'src.Enemies.MushroomEnemy'
require 'src.Enemies.MushroomAnimations'
require("src.Enemies.AngryPigEnemy")
require("src.Enemies.AngryPigAnimation")
require("src.Enemies.BeeEnemy")
require("src.Enemies.BeeAnimation")
require("src.Enemies.ChameleonEnemy")
require("src.Enemies.ChameleonAnimation")

require("src.UI.menuBtn")

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
VIRTUAL_HEIGHT = 512
VIRTUAL_WIDTH = 864
SkyTileSize = 16
BACKGROUND_HEIGHT = VIRTUAL_HEIGHT / SkyTileSize
BACKGROUND_WIDTH = 2 * VIRTUAL_WIDTH / SkyTileSize

gStateMachine = StateMachine {
    ["start"] = function() return StartState() end,
    ["main-menu"] = function() return MainMenuState() end,
    ["play"] = function() return PlayState() end,
    ["hight-scores"] = function() return HightScoresState() end,
    ["serve"] = function() return ServeState() end,
    ["game-over"] = function() return GameOverState() end
}

gSounds = {
    ["music"] = love.audio.newSource("assets/sounds/music.wav", "static")
}

gTextures = {
    ['apple'] = love.graphics.newImage('assets/graphics/Items/Fruits/Apple.png'),
    ['bananas'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Bananas.png'),
    ['cherries'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Cherries.png'),
    ['kiwi'] = love.graphics.newImage('assets/graphics/Items/Fruits/Kiwi.png'),
    ['melon'] = love.graphics.newImage('assets/graphics/Items/Fruits/Melon.png'),
    ['orange'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Orange.png'),
    ['pineapple'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Pineapple.png'),
    ['strawberry'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Strawberry.png'),
    ['collected'] = love.graphics.newImage(
        'assets/graphics/Items/Fruits/Collected.png')
}

gBackgroundTextures = {
    [1] = love.graphics.newImage('assets/graphics/Background/Blue.png'),
    [2] = love.graphics.newImage('assets/graphics/Background/Brown.png'),
    [3] = love.graphics.newImage('assets/graphics/Background/Gray.png'),
    [4] = love.graphics.newImage('assets/graphics/Background/Green.png'),
    [5] = love.graphics.newImage('assets/graphics/Background/Pink.png'),
    [6] = love.graphics.newImage('assets/graphics/Background/Purple.png'),
    [7] = love.graphics.newImage('assets/graphics/Background/Yellow.png')
}

gFrames = {}

gFonts = {
    ["small"] = love.graphics.newFont("assets/fonts/font.ttf", 8),
    ["medium"] = love.graphics.newFont("assets/fonts/font.ttf", 16),
    ["large"] = love.graphics.newFont("assets/fonts/font.ttf", 32),
    ['main-menu-font'] = love.graphics.newFont('assets/fonts/Roboto-Bold.ttf',
                                               32),
    ['main-menu-button-font'] = love.graphics.newFont(
        'assets/fonts/Roboto-Bold.ttf', 16)
}

gEnemy = {
    ['mushroom'] = MushroomEnemy,
    ['angry-pig'] = AngryPigEnemy,
    ['bee'] = BeeEnemy
}

gPlayersName = {
    ['ninja-frog'] = 'Ninja Frog',
    ['mask-dude'] = 'Mask Dude',
    ['pink-man'] = 'Pink Man',
    ['virtual-guy'] = 'Vitual Guy'
}
