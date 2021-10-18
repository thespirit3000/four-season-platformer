PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init()
    self.platforms = {}
    self.items = {}
    self.world = wf.newWorld(0, 1000, false)
    self.world:addCollisionClass('Items')
    self.world:addCollisionClass('Player', {ignores = {'Items'}})
    self.world:setCallbacks(beginContact, endContact, preSolve, postSolve)
    self:loadMap('maps/level0.lua')
    self.player = Player(self.world, self.playerX, self.playerY)
    self.world:setQueryDebugDrawing(true)
end

function PlayState:update(dt)
    self.world:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    for i, value in ipairs(self.items) do value:update(dt) end
end

function PlayState:render()
    self.map:draw()
    self.world:draw(20)
    self.player:render()
    for i, value in ipairs(self.items) do value:render() end
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
            local item = Fruit(self.world, obj.x, obj.y, obj.itemType)
            table.insert(self.items, item)
        end
    end

    if self.map.layers['Enemies'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
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

