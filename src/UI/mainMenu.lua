local BtnHeight = 48
local BtnWidth = 300
local button = require("src.UI.menuBtn")
--[[ local grid = require('lib.helium.layout.grid')
local container = require('lib.helium.layout.container') ]]

local playProps = {color = {0.415, 0.815, 0.6}, text = 'Play'}

local loadProps = {color = {0.737, 0.517, 0.752}, text = 'Load'}

local settingProps = {color = {0.815, 0.682, 0.333}, text = 'Settings'}

local exitProps = {color = {0.933, 0.419, 0.419}, text = 'Exit'}

return Helium(function(param, view)
    --[[     settingProps.onClick = param.switch ]]
    local playB = button(playProps, BtnWidth, BtnHeight)
    local loadB = button(loadProps, BtnWidth, BtnHeight)
    local settingB = button(settingProps, BtnWidth, BtnHeight)
    local exitB = button(exitProps, BtnWidth, BtnHeight)
    local leftOff = view.w - BtnWidth
    local topOff = view.h - (BtnHeight * 4)

    return function()
        love.graphics.setColor(0.921, 0.921, 0.949, 1)
        love.graphics.rectangle('fill', 0, 0, view.w, view.h)
        love.graphics.setColor(1, 1, 1)
        love.graphics.setColor(0, 0, 0)
        love.graphics.setFont(gFonts['main-menu-font'])
        love.graphics.print('Main Menu', 155, 35)
        love.graphics.setFont(gFonts['main-menu-button-font'])
        playB:draw()
        loadB:draw(leftOff, topOff + BtnHeight)
        settingB:draw(leftOff, topOff + (BtnHeight * 2))
        exitB:draw(leftOff, topOff + (BtnHeight * 3))
    end
end)
