BeeEnemy = Class {__includes = EnemyBase}

function BeeEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.collider:setType('static')
    self.animation = BeeAnimation()
    self.state = 'idle'
    self.hit = false
    self.bullets = {}
    Timer.every(1, function()
        if self.state == 'attack' then
            local px, py = self.collider:getPosition()
            local bullet = Bullet(self.world, px, py,
                                  EnemyTextures['bee']['bullet'])
            table.insert(self.bullets, bullet)
        end
    end)
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
    for index, bullet in ipairs(self.bullets) do
        if bullet.killed then table.remove(self.bullets, index) end
        bullet:update(dt)
    end
    self.animation:update(dt, self.state)
end
function BeeEnemy:render()
    local px, py = self.collider:getPosition()
    for index, bullet in ipairs(self.bullets) do bullet:render() end
    self.animation:render(self.state, px, py, -1)
end
