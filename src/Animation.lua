Animation = Class {}
function Animation:init(def, player)
    self.frames = def.frames
    if player then
        self.texture = GetPlayerTextures(def.name)[def.texture]
    else
        self.texture = def.texture
    end
    self.interval = def.interval
    self.frameWidth = def.frameWidth
    self.frameHeight = def.frameHeight
    self.looping = def.looping or true
    self.grid = anim8.newGrid(self.frameWidth, self.frameHeight,
                              self.texture:getDimensions())
    self.animation =
        anim8.newAnimation(self.grid(self.frames, 1), self.interval)
end
