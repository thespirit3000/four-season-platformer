PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init()
    self.world = wf.newWorld(0, 1000, false)
    self:loadMap('maps/level0.lua')
    for k, colisionClass in pairs(gColisionClasses) do
        self.world:addCollisionClass(colisionClass)
    end
    self.player = Player(self.world)
    self.world:setQueryDebugDrawing(true)
end

function PlayState:update(dt)
    self.world:update(dt)
    self.map:update(dt)
    self.player:update(dt)
end

function PlayState:render()
    self.map:draw()
    self.world:draw()
    self.player:render()
end

function PlayState:loadMap(map)
    self.map = sti(map)
    if self.map.layers['Platforms'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end
    if self.map.layers['Enemies'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end
    if self.map.layers['Player'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end

end

function PlayState:spawnPlatform(x, y, width, height)
    local platform = self.world:newRectangleCollider(x, y, width, height, {
        collision_class = "Platform"
    })
    platform:setType('static')
end
