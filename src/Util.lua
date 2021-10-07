function GenerateQuads(atlas, tileWidth, tileHeight)
    local sheetWidth = atlas:getWidth() / tileWidth
    local sheetHeight = atlas:getHeight() / tileHeight
    local sheetCounter = 1
    local spritesheet = {}

    for y = 0, sheetHeight - 1 do
        for x = 0, sheetWidth - 1 do
            spritesheet[sheetCounter] = love.graphics.newQuad(x * tileWidth,
                                                              y * tileHeight,
                                                              tileWidth,
                                                              tileHeight,
                                                              atlas:getDimensions())
            sheetCounter = sheetCounter + 1
        end
    end
    return spritesheet
end

function table.slice(tbl, first, last, step)
    local sliced = {}

    for i = first or 1, last or #tbl, step or 1 do
        sliced[#sliced + 1] = tbl[i]
    end

    return sliced
end

function GenerateSkyQuads(atlas, tileWidth, tileHeight) end

function GenerateTiledBacground(tileSize, season)
    local mapHeight = BACKGROUND_HEIGHT
    local mapWidth = BACKGROUND_WIDTH
    local tiles = {}
    for y = 1, mapHeight do
        table.insert(tiles, {})
        for x = 1, mapWidth do
            local id = 1
            if y % 4 == 0 then
                id = 2 * y - 4 + season
            else
                id = (math.ceil(y / 4) * 4) +
                         (math.floor(y / 4) * 4 - (4 - season))
            end
            if y % 4 == 0 and y / 4 > 3 then id = 24 + season end
            table.insert(tiles[y], {id = id})
        end
    end
    return tiles
end
