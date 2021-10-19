Fruit = Class {}

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
    self.animation = anim8.newAnimation(self.grid('1-17', 1), 0.06)
    self.killed = false
end

function Fruit:update(dt) self.animation:update(dt) end

function Fruit:render() self.animation:draw(self.texture, self.x, self.y) end

function Fruit:kill()
    self.collider:destroy()
    self.killed = true
end
