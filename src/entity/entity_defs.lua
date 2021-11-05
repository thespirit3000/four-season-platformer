ENTITY_DEFS = {
    ['player'] = {
        frameWidth = 32,
        frameHeight = 32,
        animationSpeed = 0.05,
        animations = {
            ['idle'] = {frames = '1-11', interval = 0.15, texture = 'idle'},
            ['run'] = {frames = '1-11', interval = 0.15, texture = 'run'},
            ['double-jump'] = {
                frames = '1-6',
                interval = 0.15,
                texture = 'double-jump'
            },
            ['fall'] = {frames = '1-1', interval = 0.15, texture = 'fall'},
            ['hit'] = {frames = '1-1', texture = 'hit'},
            ['jump'] = {frames = '1-1', texture = 'jump'},
            ['wall-jump'] = {frames = '1-5', texture = 'wall-jump'},
            ['apear'] = {frames = '1-7', texture = 'apear'},
            ['disapear'] = {frames = '1-7', texture = 'disapear'}
        }
    },
    ['npc'] = {
        animations = {
            ['walk-left'] = {
                frames = {16, 17, 18, 17},
                interval = 0.15,
                texture = 'entities'
            },
            ['walk-right'] = {
                frames = {28, 29, 30, 29},
                interval = 0.15,
                texture = 'entities'
            },
            ['walk-down'] = {
                frames = {4, 5, 6, 5},
                interval = 0.15,
                texture = 'entities'
            },
            ['walk-up'] = {
                frames = {40, 41, 42, 41},
                interval = 0.15,
                texture = 'entities'
            },
            ['idle-left'] = {frames = {17}, texture = 'entities'},
            ['idle-right'] = {frames = {29}, texture = 'entities'},
            ['idle-down'] = {frames = {5}, texture = 'entities'},
            ['idle-up'] = {frames = {41}, texture = 'entities'}
        }
    }
}

--[[ self.textures = {
    ['idle'] = love.graphics.newImage('assets/graphics/MainCharacters/' ..
                                          playerName .. '/Idle.png'),
    ['doubleJump'] = love.graphics.newImage(
        'assets/graphics/MainCharacters/' .. playerName .. '/Double Jump.png'),
    ['fall'] = love.graphics.newImage('assets/graphics/MainCharacters/' ..
                                          playerName .. '/Fall.png'),
    ['hit'] = love.graphics.newImage('assets/graphics/MainCharacters/' ..
                                         playerName .. '/Hit.png'),
    ['jump'] = love.graphics.newImage('assets/graphics/MainCharacters/' ..
                                          playerName .. '/Jump.png'),
    ['run'] = love.graphics.newImage('assets/graphics/MainCharacters/' ..
                                         playerName .. '/Run.png'),
    ['wallJump'] = love.graphics.newImage(
        'assets/graphics/MainCharacters/' .. playerName .. '/Wall Jump.png'),
    ['spawn'] = love.graphics.newImage(
        '/assets/graphics/MainCharacters/Appearing.png'),
    ['disapear'] = love.graphics.newImage(
        '/assets/graphics/MainCharacters/Appearing.png')
} ]]
