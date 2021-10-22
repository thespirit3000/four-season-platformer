AngryPigEnemy = Class {__includes = EnemyBase}

local normalSpeed = 80
local angrySpeed = 180
function AngryPigEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.animation = AngryPigAnimation()
    self.state = 'walk'
    self.direction = 1
    self.angry = false
    self.speed = normalSpeed
    self.hit = false
    self.collider:setPreSolve(function(collider1, collider2, contact)
        if collider1.collision_class == 'Enemy' and collider2.collision_class ==
            'Player' then
            local playerX, playerY = collider2:getPosition()
            local enemyX, enemyY = collider1:getPosition()
            local player = collider2:getObject()
            if playerX > enemyX + player.width / 2 or playerX < enemyX +
                self.width + player.width / 2 then
                if enemyY > playerY then
                    player:jump()
                    self:killedPig()
                end
            end
        end
    end)
end

function AngryPigEnemy:update(dt)
    local px, py = self.collider:getPosition()
    if not self.hit then
        local bottomColliders = self.world:queryRectangleArea(px, py + 16, 10,
                                                              10, {
            'Platform', 'Bound'
        })
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
        local playerColliders = self.world:queryRectangleArea(px + -100, py,
                                                              200, 10,
                                                              {'Player'})

        if #playerColliders > 0 then
            self.angry = true
        else
            self.angry = false
        end
        if self.angry then
            self.state = 'run'
            self.speed = angrySpeed
            if #bounds == 0 or #forwardColliders > 0 then
                self.direction = -1 * self.direction
            end
        else
            if #bounds == 0 or #forwardColliders > 0 then
                self.state = 'idle'
                self.speed = 0
                self.direction = -1 * self.direction
                Timer.after(2, function()
                    self.state = 'walk'
                    self.speed = normalSpeed
                end)
            end
        end
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

function AngryPigEnemy:killedPig()
    local ex, ey = self.collider:getPosition()
    self.state = 'hit'
    self.speed = 0
    self.hit = true
    Timer.after(0.3, function() self.killed = true end)
end
