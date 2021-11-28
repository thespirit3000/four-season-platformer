Entity = Class {}

function Entity:init(def)
    self.x = def.x
    self.y = def.y
    self.walkSpeed = def.walkSpeed
    self.animations = self:createAnimations(def.animations)
    self.dead = false
end
function Entity:update(dt)
    self.stateMachine:update(dt)
    if self.currentAnimation then self.currentAnimation:update(dt) end
end
function Entity:render() end
function Entity:changeState(name) self.stateMachine:change(name) end

function Entity:changeAnimation(name)
    self.currentAnimation = self.animations[name]
end

function Entity:createAnimations(animations)
    local animationsReturned = {}
    for key, animationDef in pairs(animations) do
        animationsReturned[key] = Animation(animationDef)
    end
    return animationsReturned
end
