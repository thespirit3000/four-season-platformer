local enemyPath = 'assets/graphics/Enemies/'
EnemyTextures = {
    ['mushroom'] = {
        ['hit'] = love.graphics.newImage(enemyPath .. 'Mushroom/Hit.png'),
        ['idle'] = love.graphics.newImage(enemyPath ..
                                              'Mushroom/Idle (32x32).png'),
        ['run'] = love.graphics
            .newImage(enemyPath .. 'Mushroom/Run (32x32).png')
    }
}
