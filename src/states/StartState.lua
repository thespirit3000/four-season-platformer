StartState = Class {__includes = BaseState}

function StartState:init()
    self.scrollX = 0
    self.scrollSpeed = 16
    self.menuItem = 1
    self.season = math.random(1, 4)
    self.tiles = GenerateTiledBacground(SkyTileSize, self.season)
    gSounds['music']:play()
end

function StartState:update(dt)
    if love.keyboard.wasPressed("enter") or love.keyboard.wasPressed("return") then
        gStateMachine:change('play')
    end
end

function StartState:render()
    love.graphics.setColor(1, 1, 1, 255)
    for y = 1, BACKGROUND_HEIGHT do
        for x = 1, BACKGROUND_WIDTH do
            love.graphics.draw(gTextures['sky'],
                               gFrames['skies'][self.tiles[y][x].id],
                               (x - 1) * SkyTileSize, (y - 1) * SkyTileSize)
        end
    end
    love.graphics.setFont(gFonts['small'])
    love.graphics.printf('to start game press enter', 0, VIRTUAL_HEIGHT - 16,
                         VIRTUAL_WIDTH, 'center')
end
