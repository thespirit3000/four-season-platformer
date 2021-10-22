local enemyPath = 'assets/graphics/Enemies/'
EnemyTextures = {
    ['mushroom'] = {
        ['hit'] = love.graphics.newImage(enemyPath .. 'Mushroom/Hit.png'),
        ['idle'] = love.graphics.newImage(enemyPath ..
                                              'Mushroom/Idle (32x32).png'),
        ['run'] = love.graphics
            .newImage(enemyPath .. 'Mushroom/Run (32x32).png')
    },
    ['angry-pig'] = {
        ['hit'] = love.graphics.newImage(enemyPath ..
                                             'AngryPig/Hit 1 (36x30).png'),
        ['idle'] = love.graphics.newImage(enemyPath ..
                                              'AngryPig/Idle (36x30).png'),
        ['run'] = love.graphics
            .newImage(enemyPath .. 'AngryPig/Run (36x30).png'),
        ['walk'] = love.graphics.newImage(enemyPath ..
                                              'AngryPig/Walk (36x30).png')
    }
}
