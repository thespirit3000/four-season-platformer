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
    self.collider = world:newRectangleCollider(self.x, self.y, self.width,
                                               self.height,
                                               {collision_class = 'Enemy'})

    self.collider:setFixedRotation(true)
    self.collider:setObject(self)
end

function EnemyBase:update(dt) end

function EnemyBase:render() local px, py = self.collider:getPosition() end

function EnemyBase:getRect() return self.x, self.y, self.width, self.height end
