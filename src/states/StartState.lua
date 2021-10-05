StartState = Class {__includes = BaseState}

function StartState:init() self.menuItem = 1 end

function StartState:update(dt)
    if love.keyboard.wasPressed("enter") or love.keyboard.wasPressed("return") then
    end
end

function StartState:render() self:drawTitle() end

function StartState:drawTitle(y) love.graphics.setFont(gFonts["large"]) end
