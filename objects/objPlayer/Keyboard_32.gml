spacePause ++
if currentMove > 0 && (spacePause = 1 || spacePause > 30) {
    currentMove --
    global.totalSteps --
}
for (i = 0; i < 10; i ++) {
    for (j = 0; j < 10; j ++) {
        focus = gridAt(i, j, currentMove)
        if focus == entity.player || focus == entity.player + entity.target{
            global.playerX = i
            global.playerY = j
        }
    }
}