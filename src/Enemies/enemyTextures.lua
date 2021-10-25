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
    },
    ['bee'] = {
        ['attack'] = love.graphics.newImage(enemyPath ..
                                                'Bee/Attack (36x34).png'),
        ['idle'] = love.graphics.newImage(enemyPath .. 'Bee/Idle (36x34).png'),
        ['hit'] = love.graphics.newImage(enemyPath .. 'Bee/Hit (36x34).png'),
        ['bullet'] = love.graphics.newImage(enemyPath .. 'Bee/Bullet.png'),
        ['bullet-pieces'] = love.graphics.newImage(enemyPath ..
                                                       'Bee/Bullet Pieces.png')
    },
    ['chameleon'] = {
        ['hit'] = love.graphics.newImage(enemyPath ..
                                             'Chameleon/Hit (84x38).png'),
        ['idle'] = love.graphics.newImage(enemyPath ..
                                              'Chameleon/Idle (84x38).png'),
        ['run'] = love.graphics.newImage(enemyPath ..
                                             'Chameleon/Run (84x38).png'),
        ['attack'] = love.graphics.newImage(enemyPath ..
                                                'Chameleon/Attack (84x38).png')
    }
}

