Player = Class {}

function Player:init(world)
    self.world = world
    self.x = 360
    self.y = 100
    self.width = 32
    self.height = 32
    self.playerSpeed = 200
    self.grounded = true
    self.moving = false
    self.hitting = false
    self.direction = 1
    self.colider = world:newRectangleCollider(self.x, self.y, self.width,
                                              self.height,
                                              {collision_class = 'Player'})
    self.colider:setFixedRotation(true)
    self.playerGraphics = PlayerAnimation('Ninja Frog')
    self.animations = self.playerGraphics.animation
    self.state = 'idle'
end

function Player:update(dt)
    local px, py = self.colider:getPosition()
    self.moving = false
    local colliders = self.world:queryRectangleArea(px - 16, py + 16, 32, 2,
                                                    {'Platform'})
    if #colliders > 0 then
        self.grounded = true
    else
        self.grounded = false
    end
    if love.keyboard.isDown('right', 'd') then
        self.colider:setX(px + self.playerSpeed * dt)
        self.direction = 1
        self.moving = true
    elseif love.keyboard.isDown('left', 'a') then
        self.moving = true
        self.colider:setX(px - self.playerSpeed * dt)
        self.direction = -1
    else
    end
    if love.keyboard.wasPressed('space') then
        if self.grounded then self.colider:applyLinearImpulse(0, -700) end
    end
    if self.grounded then
        if self.moving then
            self.state = 'run'
        else
            self.state = 'idle'
        end
    else
        self.state = 'jump'
    end
    self.playerGraphics:update(dt, self.state)
    if self.colider:enter('Danger') then self:destroy() end
end

function Player:destroy() self.colider:setPosition(360, 100) end

function Player:render()
    local px, py = self.colider:getPosition()
    self.playerGraphics:render(self.state, px, py, self.direction)
end
