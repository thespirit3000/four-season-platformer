local frameSize = 32
local animationSpeed = 0.06
MushroomAnimations = Class {}

function MushroomAnimations:init()
    self.textures = EnemyTextures['mushroom']
    self.grids = {}
    self.grids.idle = anim8.newGrid(frameSize, frameSize,
                                    self.textures['idle']:getDimensions())
    self.grids.run = anim8.newGrid(frameSize, frameSize,
                                   self.textures['run']:getDimensions())
    self.grids.hit = anim8.newGrid(frameSize, frameSize,
                                   self.textures['hit']:getDimensions())
    self.animation = {
        ['run'] = anim8.newAnimation(self.grids.run('1-16', 1), animationSpeed),
        ['idle'] = anim8.newAnimation(self.grids.idle('1-14', 1), animationSpeed),
        ['hit'] = anim8.newAnimation(self.grids.hit('1-5', 1), animationSpeed)
    }
end

function MushroomAnimations:update(dt, type) self.animation[type]:update(dt) end

function MushroomAnimations:render(type, x, y, direction)
    self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                              frameSize / 2, frameSize / 2 + 2)
end
