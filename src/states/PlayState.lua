PlayState = Class {__includes = BaseState}

function PlayState:enter(params) end

function PlayState:init() self.levelMap = sti('maps/level0.lua') end

function PlayState:update(dt) end

function PlayState:render() self.levelMap:draw() end
