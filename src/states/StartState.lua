StartState = Class {__includes = BaseState}

function StartState:init()
    self.scrollX = 0
    self.scrollSpeed = 16
    self.menuItem = 1
    self.tiles = {}
    self.mapHeigth = VIRTUAL_HEIGHT / SkyTileSize
    self.mapWidth = 2 * VIRTUAL_WIDTH / SkyTileSize
    self.season = math.random(1, 4)
    for y = 1, self.mapHeigth do
        table.insert(self.tiles, {})
        for x = 1, self.mapWidth do
            local id = 1
            if y % 4 == 0 then
                id = 2 * y - 4 + self.season
            else
                id = (math.ceil(y / 4) * 4) +
                         (math.floor(y / 4) * 4 - (4 - self.season))
            end
            if y % 4 == 0 and y / 4 > 3 then id = 24 + self.season end
            table.insert(self.tiles[y], {id = id})
            print(id)
        end
    end
    gSounds['music']:play()
end

function StartState:update(dt)
    self.scrollX = (self.scrollX + self.scrollSpeed * dt) % (VIRTUAL_WIDTH / 2)
    if love.keyboard.wasPressed("enter") or love.keyboard.wasPressed("return") then
    end
end

function StartState:render()
    self:drawTitle()
    love.graphics.translate(-math.floor(self.scrollX), 0)
    for y = 1, self.mapHeigth do
        for x = 1, self.mapWidth do
            love.graphics.draw(gTextures['sky'],
                               gFrames['skies'][self.tiles[y][x].id],
                               (x - 1) * SkyTileSize, (y - 1) * SkyTileSize)
        end
    end
end

function StartState:drawTitle(y) love.graphics.setFont(gFonts["large"]) end
