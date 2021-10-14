Player = Class {}

function Player:init(world)
    self.world = world
    self.x = 360
    self.y = 100
    self.width = 30
    self.height = 50
    self.playerSpeed = 200
    self.grounded = true
    self.moving = false
    self.direction = 1
    self.colider = world:newRectangleCollider(self.x, self.y, self.width,
                                              self.height,
                                              {collision_class = 'Player'})
    self.colider:setFixedRotation(true)
    local grid = anim8.newGrid(614, 564, gTextures['player']:getDimensions())
    self.animations = {}
    self.animations.idle = anim8.newAnimation(grid('1-15', 1), 0.05)
    self.animations.jump = anim8.newAnimation(grid('1-7', 2), 0.06)
    self.animations.run = anim8.newAnimation(grid('1-15', 3), 0.06)
    self.currentAnimation = self.animations.idle

end

function Player:update(dt)
    local px, py = self.colider:getPosition()
    self.moving = false
    local colliders = self.world:queryRectangleArea(px - 16, py + 24, 32, 2,
                                                    {'Platform'})
    if #colliders > 0 then
        self.grounded = true
    else
        self.grounded = false
    end
    if love.keyboard.isDown('right') then
        self.colider:setX(px + self.playerSpeed * dt)
        self.direction = 1
        self.moving = true
    elseif love.keyboard.isDown('left') then
        self.moving = true
        self.colider:setX(px - self.playerSpeed * dt)
        self.direction = -1
    else
        self.currentAnimation = self.animations.idle
    end
    if love.keyboard.wasPressed('space') then
        if self.grounded then
            self.currentAnimation = self.animations.jump
            self.colider:applyLinearImpulse(0, -1200)
        end
    end
    if self.grounded then
        if self.moving then
            self.currentAnimation = self.animations.run
        else
            self.currentAnimation = self.animations.idle
        end
    else
        self.currentAnimation = self.animations.jump
    end
    self.currentAnimation:update(dt)
    if self.colider:enter('Danger') then self:destroy() end
end

function Player:destroy() self.colider:setPosition(360, 100) end

function Player:render()
    local px, py = self.colider:getPosition()
    self.currentAnimation:draw(gTextures['player'], px, py, nil,
                               0.1 * self.direction, 0.1, 130, 260)
end

--[[ function Player:init(world)
    self.x = 100
    self.y = 100
    self.width = 32
    self.height = 32
    self.maxSpeed = 100
    self.acceleration = 4000
    self.friction = 3000
    self.gravity = 300
    self.xVel = 0
    self.yVel = 50
    self.grounded = false
    self.physics = {}
    self.physics.body = love.physics.newBody(world, self.x, self.y, "dynamic")
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body,
                                                   self.physics.shape)

    self.idle = love.graphics.newImage('assets/player/NinjaFrog/Idle.png')
    self.run = love.graphics.newImage('assets/player/NinjaFrog/Run.png')
    self.jump = love.graphics.newImage('assets/player/NinjaFrog/Jump.png')
    self.idleGrid = anim8.newGrid(32, 32, self.idle:getWidth(),
                                  self.idle:getHeight())
    self.jumpGrid = anim8.newGrid(32, 32, self.jump:getWidth(),
                                  self.jump:getHeight())
    self.runGrid = anim8.newGrid(32, 32, self.run:getWidth(),
                                 self.run:getHeight())

    self.animations = {}
    self.animations.idle = anim8.newAnimation(self.idleGrid('1 - 11', 1), 0.06)
    self.animations.run = anim8.newAnimation(self.runGrid('1 - 12', 1), 0.06)
    self.animations.jump = anim8.newAnimation(self.jumpGrid('1 - 1', 1), 0.06)
    self.animation = self.animations.idle
    self.spriteSheet = self.idle
    self.direction = 1
end

function Player:update(dt)
    self:move(dt)
    self:syncPhysics()
    self:applyGravity(dt)
    self.animation:update(dt)
end

function Player:render()
    love.graphics.rectangle('fill', self.x - self.width / 2,
                            self.y - self.height / 2, self.width, self.height)
        self.animation:draw(self.spriteSheet, self:getX(), self:getY(), nil,
                        self.direction, 1, self.width / 2, 1)
end

function Player:move(dt)
    if love.keyboard.isDown('right', 'd') then
        print(self.x, self.y)
        if self.xVel < self.maxSpeed then
            if self.xVel + self.acceleration * dt < self.maxSpeed then
                self.xVel = self.xVel + self.acceleration * dt
            end
        else
            self.xVel = self.maxSpeed
        end
        self.animation = self.animations.run
        self.spriteSheet = self.run
        self.direction = 1
    elseif love.keyboard.isDown('left', 'a') then
        if self.xVel > self.maxSpeed then
            if self.xVel - self.acceleration * dt > self.maxSpeed then
                self.xVel = self.xVel - self.acceleration * dt
            end
        else
            self.xVel = -self.maxSpeed
        end
        self.animation = self.animations.run
        self.spriteSheet = self.run
        self.direction = -1
    else
        self.spriteSheet = self.idle
        self.animation = self.animations.idle
    end
end

function Player:applyGravity(dt)
    if not self.grounded then self.yVel = self.yVel + self.gravity * dt end
end

function Player:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Player:beginContact(a, b, collision)
    if self.grounded then return end
    local nx, ny = collision:getNormal()
    if a == self.physics.fixture then
        if ny > 0 then self:land() end
    elseif b == self.physics.fixture then
        if ny < 0 then self:land() end
    end
end

function Player:land()

    self.yVel = 0
    self.grounded = true
end
function Player:endContact(a, b, collision) end
 ]]
