BeeEnemy = Class {__includes = EnemyBase}

function BeeEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.collider:setType('static')
    self.animation = BeeAnimation()
    self.state = 'idle'
    self.hit = false
end
function BeeEnemy:update(dt) self.animation:update(dt, self.state) end
function BeeEnemy:render()
    local px, py = self.collider:getPosition()
    self.animation:render(self.state, px, py, -1)
end
