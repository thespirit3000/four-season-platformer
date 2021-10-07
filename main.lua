require "src.Dependencies"

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    math.randomseed(os.time())
    love.window.setTitle("Four seasons")
    love.graphics.setFont(gFonts["small"])
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,
                     {fullscreen = true, resizable = true, vsync = true})
    love.keyboard.keysPressed = {}
    gStateMachine:change("start")
end

function love.draw()
    push:start()
    gStateMachine:render()

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

function love.update(dt)
    gStateMachine:update(dt)
    love.keyboard.keysPressed = {}
end
