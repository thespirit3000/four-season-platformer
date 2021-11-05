Level = Class {}

function Level:init(params)
    self.level = params.map
    self.world = wf.newWorld(0, 1000, false)
    self.map = sti('src/world/maps/level' .. self.level .. '.lua')
    self:createMap()
    self.player = Player('Ninja Frog')
    --[[  self.player.stateMachine = StateMachine {
        ['walk'] = function() return PlayerWalkState(self.player, self) end,
        ['idle'] = function() return PlayerIdleState(self.player) end
    }
    self.player.stateMachine:change('idle') ]]
end

function Level:update(dt)
    self.world:update(dt)
    self.map:update(dt)
end

function Level:render()
    self.map:draw()
    self.world:draw(0.5)
end

function Level:createMap()
    self.world:addCollisionClass('Items')
    self.world:addCollisionClass('Player')
    self.world:addCollisionClass('Enemy', {ignores = {'Items'}})
end
