PlayState = Class {__includes = BaseState}

function PlayState:init(params)
    print(params.map)
    self.map = params.map
    self.level = Level({map = params.map})
end

function PlayState:update(dt) self.level:update(dt) end
function PlayState:render(...) self.level:render() end
