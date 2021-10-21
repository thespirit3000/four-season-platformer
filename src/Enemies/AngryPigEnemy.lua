AngryPigEnemy = Class {__includes = EnemyBase}

function AngryPigEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.animation = AngryPigAnimation()
    self.state = 'walk'
    self.direction = 1
end
function AngryPigEnemy:update(dt)

    local px, py = self.collider:getPosition()
    local bottomColliders = self.world:queryRectangleArea(px, py + 16, 10, 10,
                                                          {'Platform', 'Bound'})
    if #bottomColliders > 0 then
        self.grounded = true
    else
        self.grounded = false
    end
    local bounds = self.world:queryRectangleArea(px + (20 * self.direction),
                                                 py + 16, 10, 10,
                                                 {'Platform', 'Bound'})

    local forwardColliders = self.world:queryRectangleArea(px +
                                                               (20 *
                                                                   self.direction),
                                                           py, 10, 10, {
        'Platform', 'Bound'
    })
    if #bounds == 0 or #forwardColliders > 0 then
        self.state = 'idle'
        self.speed = 0
        self.direction = -1 * self.direction
        Timer.after(2, function()
            self.state = 'walk'
            self.speed = 80
        end)
    end

    if self.grounded then
        self.collider:setX(px + self.speed * self.direction * dt)
    end
    self.animation:update(dt, self.state)
end

function AngryPigEnemy:render(dt)
    local px, py = self.collider:getPosition()
    self.animation:render(self.state, px, py, self.direction * -1)
end
