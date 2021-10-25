local frameHeight = 38
local frameWidth = 84
local animationSpeed = 0.06
ChameleonAnimation = Class {}

function ChameleonAnimation:init()
    self.textures = EnemyTextures['mushroom']
    self.grids = {}
    self.grids.idle = anim8.newGrid(frameWidth, frameHeight,
                                    self.textures['idle']:getDimensions())
    self.grids.run = anim8.newGrid(frameWidth, frameHeight,
                                   self.textures['run']:getDimensions())
    self.grids.hit = anim8.newGrid(frameWidth, frameHeight,
                                   self.textures['hit']:getDimensions())
    self.grids.attack = anim8.newGrid(frameWidth, frameHeight,
                                      self.textures['attack']:getDimensions())
    self.animation = {
        ['run'] = anim8.newAnimation(self.grids.run('1-16', 1), animationSpeed),
        ['idle'] = anim8.newAnimation(self.grids.idle('1-14', 1), animationSpeed),
        ['hit'] = anim8.newAnimation(self.grids.hit('1-5', 1), animationSpeed),
        ['attack'] = anim8.newAnimation(self.grids.attack('1-5', 1),
                                        animationSpeed)
    }
end

function ChameleonAnimation:update(dt, type) self.animation[type]:update(dt) end

function ChameleonAnimation:render(type, x, y, direction)
    self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                              frameWidth / 2, frameHeight / 2 + 2)
end
