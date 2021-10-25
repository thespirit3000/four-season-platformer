local enemySpeed = 80
ChameleonEnemy = Class {}
function ChameleonEnemy:init(world, x, y)
    EnemyBase.init(self, world, x, y)
    self.animation = ChameleonAnimation()
    self.state = 'run'
    self.direction = 1
    self.speed = 80
    self.hit = false
end
function ChameleonEnemy:update() local px, py = self.collider:getPosition() end
function ChameleonEnemy:render() end
