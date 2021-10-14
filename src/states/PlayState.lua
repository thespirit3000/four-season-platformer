PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init()
    self.world = wf.newWorld(0, 1000, false)
    self.map = sti('maps/level0.lua')
    for k, colisionClass in pairs(gColisionClasses) do
        self.world:addCollisionClass(colisionClass)
    end
    self.world:setQueryDebugDrawing(true)
    self.player = Player(self.world)
    self.platform = self.world:newRectangleCollider(100, 400, 600, 10, {
        collision_class = 'Platform'
    })
    self.dangerZone = self.world:newRectangleCollider(0, VIRTUAL_HEIGHT - 5,
                                                      VIRTUAL_WIDTH, 5, {
        collision_class = 'Danger'
    })
    self.platform:setType('static')
    self.dangerZone:setType('static')

end

function PlayState:update(dt)
    self.world:update(dt)
    self.map:update(dt)
    self.player:update(dt)
end

function PlayState:render()
    self.world:draw()
    self.player:render()
end

--[[ function PlayState:loadMap(map, world)
    if map.layers['Platforms'] then
        for i, obj in pairs(map.layers['Platforms'].objects) do
            world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
        end
    end

end ]]
--[[ function beginContact(a, b, collision) PlayState:beginContact(a, b, collision) end

function PlayState:beginContact(a, b, collision)
    self.player:beginContact(a, b, collision)
end
function PlayState:endContact(a, b, collision)
    self.player:endContact(a, b, collision)
end ]]
