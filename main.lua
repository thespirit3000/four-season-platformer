require "src.Dependencies"
local scene = Helium.scene.new(true)
scene:activate()

local elementCreator = Helium(function(param, view)

    return function()
        love.graphics.setColor(0.3, 0.3, 0.3)
        love.graphics.rectangle('fill', 0, 0, view.w, view.h)
        love.graphics.setColor(1, 1, 1)
        love.graphics.print('hello world')
    end
end)

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    math.randomseed(os.time())
    love.window.setTitle("Four seasons")
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,
                     {fullscreen = true, resizable = true, vsync = true})
    love.keyboard.keysPressed = {}
    gStateMachine:change('main-menu', {map = '0'})
end

function love.update(dt)
    scene:update(dt)

    Timer.update(dt)
    gStateMachine:update(dt)
    love.keyboard.keysPressed = {}
end

function love.draw()
    push:start()
    gStateMachine:render()

    scene:draw()
    displayFPS()
    push:finish()
end

function displayFPS()
    love.graphics.setFont(gFonts["small"])
    love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print("FPS:  " .. tostring(love.timer.getFPS()), 10, 10)
end

function love.keypressed(key)
    love.keyboard.keysPressed[key] = true

    if key == 'f1' then gStateMachine:change('play', {map = '0'}) end
    if key == 'f2' then gStateMachine:change('play', {map = '1'}) end
    if key == "escape" then love.event.quit() end
end

function love.keyboard.wasPressed(key)
    if love.keyboard.keysPressed[key] then
        return true
    else
        return false
    end
end

function love.resize(w, h) push:resize(w, h) end

