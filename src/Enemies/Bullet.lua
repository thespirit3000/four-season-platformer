Bullet = Class {}

function Bullet:init(world, x, y, texture)
    self.world = world
    self.x = x
    self.y = y
    self.killed = false
    self.texture = texture
    self.collider = self.world:newCircleCollider(self.x, self.y, 5)
    self.collider:setType('static')
    self.speed = 250
end

function Bullet:update(dt)
    if not self.killed then
        local bulletX, bulletY = self.collider:getPosition()
        self.collider:setY(bulletY + self.speed * dt)
        if bulletY > VIRTUAL_HEIGHT - 20 then self.kill(self) end
    end
end

function Bullet:render()
    if not self.killed then
        local bulletX, bulletY = self.collider:getPosition()
        love.graphics.draw(self.texture, bulletX - 8, bulletY - 8)
    end
end

function Bullet:kill()
    self.killed = true
    self.collider:destroy()
end
