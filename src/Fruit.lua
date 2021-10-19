Fruit = Class {}
local animationDuration = 0.5

function Fruit:init(world, x, y, type)
    self.world = world
    self.x = x
    self.y = y
    self.size = 32
    self.texture = gTextures['apple']
    self.collider = self.world:newCircleCollider(self.x + self.size / 2,
                                                 self.y + self.size / 2,
                                                 self.size / 2)
    self.collider:setCollisionClass('Items')
    self.collider:setType('static')
    self.collider:setObject(self)
    self.grid =
        anim8.newGrid(self.size, self.size, self.texture:getDimensions())
    self.collectedGrid = anim8.newGrid(self.size, self.size,
                                       gTextures['collected']:getDimensions())
    self.animation = anim8.newAnimation(self.grid('1-17', 1), 0.06)
    self.animationCollected = anim8.newAnimation(self.collectedGrid('1-6', 1),
                                                 animationDuration / 6)
    self.currentAnimation = self.animation
    self.killed = false
end

function Fruit:update(dt) self.currentAnimation:update(dt) end

function Fruit:render() self.currentAnimation:draw(self.texture, self.x, self.y) end

function Fruit:kill()
    self.currentAnimation = self.animationCollected
    self.texture = gTextures['collected']
    Timer.after(animationDuration, function()
        self.collider:destroy()
        self.killed = true
    end)
end
