Level = Class {}

function Level:init(params)
    self.platforms = {}
    self.enemies = {}
    self.items = {}
    self.world = wf.newWorld(0, 1000, false)
    self.map = sti('src/world/maps/level' .. params.map .. '.lua')
    self:createMap()
    --[[     self.player = Player('Ninja Frog') ]]
    --[[  self.player.stateMachine = StateMachine {
        ['walk'] = function() return PlayerWalkState(self.player, self) end,
        ['idle'] = function() return PlayerIdleState(self.player) end
    }
    self.player.stateMachine:change('idle') ]]
    self.world:setQueryDebugDrawing(true)
end

function Level:update(dt)
    self.world:update(dt)
    self.map:update(dt)
    for i, value in ipairs(self.items) do value:update(dt) end
    for i, value in ipairs(self.enemies) do value:update(dt) end
end

function Level:render()
    self.map:draw()
    self.world:draw(0.5)
    for i, value in ipairs(self.items) do value:render() end
    for i, value in ipairs(self.enemies) do value:render() end
end

function Level:createMap()
    self.world:addCollisionClass('Items')
    self.world:addCollisionClass('Player')
    self.world:addCollisionClass('Enemy', {ignores = {'Items'}})
    if self.map.layers['Platforms'] then
        for i, obj in pairs(self.map.layers['Platforms'].objects) do
            self:spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end
end

function Level:spawnPlatform(x, y, width, height)
    if width > 0 and height > 0 then
        local platform = self.world:newRectangleCollider(x, y, width, height, {
            collision_class = "Platform"
        })
        platform:setType('static')
    end
end

function Level:spawnBounds(x, y, width, height)
    if width > 0 and height > 0 then
        local platform = self.world:newRectangleCollider(x, y, width, height, {
            collision_class = "Bound"
        })
        platform:setType('static')
    end
end

