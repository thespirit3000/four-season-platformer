Player = Class {}

function Player:init()
    self.x = 100
    self.y = 100
    self.width = 32
    self.hight = 32
    self.speed = 100
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
    if love.keyboard.isDown('right', 'd') then
        self.x = self.x + self.speed * dt
        self.animation = self.animations.run
        self.spriteSheet = self.run
        self.direction = 1
    elseif love.keyboard.isDown('left', 'a') then
        self.x = self.x - self.speed * dt
        self.animation = self.animations.run
        self.spriteSheet = self.run
        self.direction = -1
    else
        self.spriteSheet = self.idle
        self.animation = self.animations.idle
    end
    self.animation:update(dt)
end
function Player:render()
    self.animation:draw(self.spriteSheet, self.x, self.y, nil, self.direction,
                        1, self.width / 2, 1)
    -- body
end
