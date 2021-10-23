EnemyBase = Class {}
function EnemyBase:init(world, x, y)
    self.x = x
    self.y = y
    self.world = world
    self.width = 32
    self.height = 32
    self.speed = 80
    self.grounded = true
    self.direction = 1
    self.killed = false
    self.collider = self.world:newRectangleCollider(self.x, self.y, self.width,
                                                    self.height,
                                                    {collision_class = 'Enemy'})
    self.collider:setType('kinetic')
    self.collider:setFixedRotation(true)
    self.collider:setObject(self)
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
                    self:kill()
                end
            end
        end
    end)
end

function EnemyBase:update(dt) end

function EnemyBase:render() local px, py = self.collider:getPosition() end

function EnemyBase:getRect() return self.x, self.y, self.width, self.height end

function EnemyBase:kill()
    local ex, ey = self.collider:getPosition()
    self.state = 'hit'
    self.speed = 0
    self.hit = true
    Timer.after(0.3, function() self.killed = true end)
end
