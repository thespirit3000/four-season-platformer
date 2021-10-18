PlayerAnimation = Class {}

local frameSize = 32
local animationSpeed = 0.05

function PlayerAnimation:init(playerName)

    self.textures = {
        ['idle'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Idle.png'),
        ['doubleJump'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName ..
                '/Double Jump.png'),
        ['fall'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Fall.png'),
        ['hit'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Hit.png'),
        ['jump'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Jump.png'),
        ['run'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Run.png'),
        ['wallJump'] = love.graphics.newImage(
            'assets/graphics/MainCharacters/' .. playerName .. '/Wall Jump.png'),
        ['spawn'] = love.graphics.newImage(
            '/assets/graphics/MainCharacters/Appearing.png'),
        ['disapear'] = love.graphics.newImage(
            '/assets/graphics/MainCharacters/Appearing.png')
    }
    self.grids = {}
    self.grids.idle = anim8.newGrid(frameSize, frameSize,
                                    self.textures['idle']:getDimensions())
    self.grids.doubleJump = anim8.newGrid(frameSize, frameSize, self.textures
                                              .doubleJump:getDimensions())
    self.grids.fall = anim8.newGrid(frameSize, frameSize,
                                    self.textures['fall']:getDimensions())
    self.grids.hit = anim8.newGrid(frameSize, frameSize,
                                   self.textures['hit']:getDimensions())
    self.grids.jump = anim8.newGrid(frameSize, frameSize,
                                    self.textures['jump']:getDimensions())
    self.grids.run = anim8.newGrid(frameSize, frameSize,
                                   self.textures['run']:getDimensions())
    self.grids.wallJump = anim8.newGrid(frameSize, frameSize,
                                        self.textures['wallJump']:getDimensions())
    self.grids.apearing = anim8.newGrid(96, 96,
                                        self.textures['spawn']:getDimensions())
    self.animation = {
        ['idle'] = anim8.newAnimation(self.grids.idle('1-11', 1), animationSpeed),
        ['doubleJump'] = anim8.newAnimation(self.grids.doubleJump('1-6', 1),
                                            animationSpeed),
        ['fall'] = anim8.newAnimation(self.grids.fall('1-1', 1), animationSpeed),
        ['hit'] = anim8.newAnimation(self.grids.hit(), animationSpeed),
        ['jump'] = anim8.newAnimation(self.grids.jump('1-1', 1), animationSpeed),
        ['run'] = anim8.newAnimation(self.grids.run('1-11', 1), animationSpeed),

        ['wallJump'] = anim8.newAnimation(self.grids.wallJump('1-5', 1),
                                          animationSpeed),
        ['spawn'] = anim8.newAnimation(self.grids.apearing('1-7', 1), 0.1,
                                       'pauseAtEnd')
    }
end

function PlayerAnimation:update(dt, type) self.animation[type]:update(dt) end
function PlayerAnimation:render(type, x, y, direction)
    if type == 'spawn' then
        self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                                  96 / 2, 96 / 2 + 2)
    else
        self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                                  frameSize / 2, frameSize / 2 + 2)
    end
end
