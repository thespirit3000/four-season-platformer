Player = Class {}

function Player:init(world, x, y)
    self.world = world
    self.x = x
    self.y = y
    self.width = 32
    self.height = 32
    self.playerSpeed = 200
    self.grounded = true
    self.moving = false
    self.hitting = false
    self.apearing = true
    self.direction = 1
    self.collider = world:newCircleCollider(self.x, self.y, self.width / 2,
                                            {collision_class = 'Player'})
    self.collider:setFixedRotation(true)
    self.collider:setObject(self)
    self.playerGraphics = PlayerAnimation('Ninja Frog')
    self.collider:setPreSolve(function(a, b, contact)
        if a.collision_class == "Player" and b.collision_class == 'Items' then end
        contact:setEnabled(false)
    end)
end

function Player:update(dt)
    if self.apearing then
        if self.playerGraphics.animation['spawn'].position == 7 then
            self.state = 'idle'
            self.apearing = false
        end
    end
    local px, py = self.collider:getPosition()
    self.moving = false
    local colliders = self.world:queryRectangleArea(px - 16, py + 16, 32, 2,
                                                    {'Platform', 'Bound'})
    if #colliders > 0 then
        self.grounded = true
    else
        self.grounded = false
    end
    if love.keyboard.isDown('right', 'd') then
        self.collider:setX(px + self.playerSpeed * dt)
        self.direction = 1
        self.moving = true
    elseif love.keyboard.isDown('left', 'a') then
        self.moving = true
        self.collider:setX(px - self.playerSpeed * dt)
        self.direction = -1
    else
    end
    if love.keyboard.wasPressed('space') then
        if self.grounded then self.collider:applyLinearImpulse(0, -700) end
    end
    if self.grounded then
        if self.moving then
            self.state = 'run'
        else
            if self.apearing then
                self.state = 'spawn'
            else
                self.state = 'idle'
            end
        end
    else
        if self.apearing then
            self.state = 'spawn'
        else
            self.state = 'jump'
        end
    end
    self.playerGraphics:update(dt, self.state)
    if self.collider:enter('Items') then
        local collision_data = self.collider:getEnterCollisionData('Items')
        local fruit = collision_data.collider:getObject()
        fruit:kill()
    end
    if self.collider:enter('Danger') then self:destroy() end
end
function Player:render()
    local px, py = self.collider:getPosition()
    self.playerGraphics:render(self.state, px, py, self.direction)
end
