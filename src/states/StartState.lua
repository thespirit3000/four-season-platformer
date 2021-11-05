StartState = Class {__includes = BaseState}

local backgroundScroll = 0
local BACKGROUND_SCROLL_SPEED = 30
local BACKGROUND_LOOPING_POINT = 512 * 2

function StartState:init()
    self.scrollX = 0
    self.scrollSpeed = 16
    self.menuItem = 1
    self.texture = math.random(1, 7)
end

function StartState:update(dt)
    backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED * dt) %
                           BACKGROUND_LOOPING_POINT
    if love.keyboard.wasPressed("enter") or love.keyboard.wasPressed("return") then
        gStateStack:pop()
        gStateStack:push(PlayState({map = 0}))
    end
end

function StartState:render()
    love.graphics.setColor(1, 1, 1, 255)
    local dx, dy = gBackgroundTextures[self.texture]:getDimensions()
    for y = -VIRTUAL_HEIGHT, VIRTUAL_HEIGHT / dy do
        for x = 0, VIRTUAL_WIDTH / dx do
            love.graphics.draw(gBackgroundTextures[self.texture], x * dx,
                               y * dy + backgroundScroll)
        end
    end
    love.graphics.setFont(gFonts['main-menu-button-font'])
    love.graphics.printf('to start game press enter', 0, VIRTUAL_HEIGHT - 32,

                         VIRTUAL_WIDTH, 'center')
end
