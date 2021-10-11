PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init()
    self.levelMap = sti('maps/level0.lua', {'box2d'})
    self.world = love.physics.newWorld(0, 0)
    self.player = Player()
    self.levelMap:box2d_init(self.world)
end

function PlayState:update(dt)
    self.levelMap:update(dt)
    self.player:update(dt)
end

function PlayState:render()
    self.levelMap:draw()
    self.levelMap:box2d_draw()
    self.player:render()
    love.graphics.setColor(1, 0, 0)
end

--[[ function loadMap(map)
    if map.layers['Platforms'] then
        for i, obj in pairs(map.layers['Platforms'].objects) do
            spawnPlatform(obj.x, obj.y, obj.width, obj.height)
        end
    end

end
 ]]
