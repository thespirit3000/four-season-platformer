BeeEnemy = Class {__includes = EnemyBase}

function BeeEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.collider:setType('static')
    self.animation = BeeAnimation()
    self.state = 'idle'
    self.hit = false
end
function BeeEnemy:update(dt)
    local px, py = self.collider:getPosition()
    local playerQ = self.world:queryRectangleArea(px - self.width, py,
                                                  2 * self.width,
                                                  VIRTUAL_HEIGHT - py,
                                                  {'Player'})
    if #playerQ > 0 then
        self.state = 'attack'
    else
        self.state = 'idle'
    end
    self.animation:update(dt, self.state)
end
function BeeEnemy:render()
    local px, py = self.collider:getPosition()
    self.animation:render(self.state, px, py, -1)
end
