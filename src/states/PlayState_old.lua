PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init(params)
    self.level = params.map
    self.platforms = {}
    self.items = {}
    self.enemies = {}
    self.world = wf.newWorld(0, 1000, false)
    self:loadMap('maps/level' .. self.level .. '.lua')
    self.player = Player(self.world, self.playerX, self.playerY)
    self.world:setQueryDebugDrawing(true)
end

function PlayState:update(dt)
    self.map:update(dt)
    self.world:update(dt)
    self.player:update(dt)
    for index, value in ipairs(self.items) do
        if value.killed then table.remove(self.items, index) end
    end
    for index, value in ipairs(self.enemies) do
        if value.killed then
            value.collider:destroy()
            table.remove(self.enemies, index)
        end
    end
    for i, value in ipairs(self.items) do value:update(dt) end
    for i, value in ipairs(self.enemies) do value:update(dt) end
end

function PlayState:render()
    self.map:draw()
    self.world:draw(200)
    for i, value in ipairs(self.items) do value:render() end
    for i, value in ipairs(self.enemies) do value:render() end
    self.player:render()
end

function PlayState:loadMap(map)

    self.map = sti(map)
    if self.map.layers['Platforms'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end
    if self.map.layers['Bounds'] then
        for i, obj in pairs(self.map.layers['Bounds'].objects) do
            self:spawnBounds(obj.x, obj.y, obj.width, obj.height)
        end
    end
    if self.map.layers['Items'] then
        for i, obj in pairs(self.map.layers['Items'].objects) do
            local item = Fruit(self.world, obj.x, obj.y, obj.properties['type'])
            table.insert(self.items, item)
        end
    end

    if self.map.layers['Enemies'] then
        for i, obj in pairs(self.map.layers['Enemies'].objects) do
            print(obj.properties['type'])
            local item =
                gEnemy[obj.properties['type']](self.world, obj.x, obj.y)
            table.insert(self.enemies, item)
        end
    end
    if self.map.layers['Player'] then
        local player = self.map.layers['Player'].objects[1]
        self.playerX = player.x
        self.playerY = player.y
    end
end

function PlayState:spawnPlatform(x, y, width, height)
    if width > 0 and height > 0 then
        local platform = self.world:newRectangleCollider(x, y, width, height, {
            collision_class = "Platform"
        })
        platform:setType('static')
    end
end
function PlayState:spawnBounds(x, y, width, height)
    if width > 0 and height > 0 then
        local platform = self.world:newRectangleCollider(x, y, width, height, {
            collision_class = "Bound"
        })
        platform:setType('static')
    end
end

