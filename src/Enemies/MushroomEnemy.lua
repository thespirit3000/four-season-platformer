MushroomEnemy = Class {__includes = EnemyBase}

function MushroomEnemy:init(world, x, y) EnemyBase.init(self, world, x, y) --[[     self.world:newRectangleCollider(self:getRect()) ]] end
function MushroomEnemy:update(dt)
    -- body
end
function MushroomEnemy:render(dt) end
