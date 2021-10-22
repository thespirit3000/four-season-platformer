local frameSizeHeight = 30
local frameSizeWidth = 36
local animationSpeed = 0.06
local animationDuration = 0.3
AngryPigAnimation = Class {}

function AngryPigAnimation:init()
    self.textures = EnemyTextures['angry-pig']
    self.grids = {}
    self.grids.idle = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                    self.textures['idle']:getDimensions())
    self.grids.run = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                   self.textures['run']:getDimensions())
    self.grids.walk = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                    self.textures['walk']:getDimensions())
    self.grids.hit = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                   self.textures['hit']:getDimensions())
    self.animation = {
        ['run'] = anim8.newAnimation(self.grids.run('1-12', 1), animationSpeed),
        ['walk'] = anim8.newAnimation(self.grids.walk('1-16', 1), animationSpeed),
        ['idle'] = anim8.newAnimation(self.grids.idle('1-9', 1), animationSpeed),
        ['hit'] = anim8.newAnimation(self.grids.hit('1-5', 1),
                                     animationDuration / 5)
    }
end

function AngryPigAnimation:update(dt, type) self.animation[type]:update(dt) end

function AngryPigAnimation:render(type, x, y, direction)
    self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                              frameSizeWidth / 2, frameSizeHeight / 2)
end
