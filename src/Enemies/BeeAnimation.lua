local frameSizeHeight = 34
local frameSizeWidth = 36
local animationSpeed = 0.1
local animationDuration = 0.3
BeeAnimation = Class {}

function BeeAnimation:init()
    self.textures = EnemyTextures['bee']
    self.grids = {}
    self.grids.idle = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                    self.textures['idle']:getDimensions())
    self.grids.hit = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                   self.textures['hit']:getDimensions())
    self.grids.attack = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                      self.textures['attack']:getDimensions())
    self.grids.bullet = anim8.newGrid(frameSizeWidth, frameSizeHeight,
                                      self.textures['bullet']:getDimensions())
    self.animation = {
        ['idle'] = anim8.newAnimation(self.grids.idle('1-6', 1), animationSpeed),
        ['hit'] = anim8.newAnimation(self.grids.hit('1-5', 1),
                                     animationDuration / 5),
        ['attack'] = anim8.newAnimation(self.grids.attack('1-8', 1),
                                        animationSpeed)
    }
end

function BeeAnimation:update(dt, type) self.animation[type]:update(dt) end

function BeeAnimation:render(type, x, y, direction)
    self.animation[type]:draw(self.textures[type], x, y, nil, direction, 1,
                              frameSizeWidth / 2, frameSizeHeight / 2)
end
