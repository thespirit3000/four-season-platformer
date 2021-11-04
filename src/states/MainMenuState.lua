MainMenuState = Class {__includes = BaseState}

function MainMenuState:init()
    self.menuScene = Helium.scene.new(true)
    self.menuScene:activate()
    self.mainMenu =
        require("src.UI.mainMenu")({}, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)
    self.mainMenu:draw(0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)
end
function MainMenuState:update(dt)
    Flux.update(dt)
    self.menuScene:update(dt)
end
function MainMenuState:render() self.menuScene:draw() end

function MainMenuState:resize(w, h) self.menuScene:resize(w, h) end
