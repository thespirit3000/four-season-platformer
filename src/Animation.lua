Animation = Class {}
function Animation:init(def)
    self.frames = def.frames
    self.texture = GetPlayerTextures(def.name)[def.texture]
    self.animationSpeed = def.animationSpeed
    self.frameWidth = def.frameWidth
    self.frameHeight = def.frameHeight
    self.looping = def.looping or true
    self.grid = anim8.newGrid(self.frameWidth, self.frameHeight,
                              self.texture:getDimensions())
    self.animation = anim8.newAnimation(self.grid(self.frames, 1),
                                        self.animationSpeed)
end
