EnemyBase = Class {}
function EnemyBase:init(world, x, y)
    self.x = x
    self.y = y
    self.collider = world:newCircleCollider(self.x, self.y)
    self.collider:setType('static')
    self.collider:setFixedRotation(true)
    self.collider:setObject(self)
end

function EnemyBase:update(dt) end

function EnemyBase:draw() end
