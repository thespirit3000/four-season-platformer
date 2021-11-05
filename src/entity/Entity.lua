Entity = Class {}

function Entity:init(def)
    self.x = def.x
    self.y = def.y
    self.walkSpeed = def.walkSpeed
    self.dead = false
end
function Entity:update(dt) end
function Entity:render() end
function Entity:changeState(name) self.stateMachine:change(name) end

function Entity:changeAnimation(name)
    self.currentAnimation = self.animations[name]
end
