//player pulls blocks around randomly to set up playable surface
movesToScramble = 999
spacePause = 0
currentMove = 0
for (i = 0; i <= movesToScramble; i ++) {
    dx = 0
    dy = 0
    switch irandom(3) {
        case 0:
            dy = -1
        break
        case 1:
            dx = +1
        break
        case 2:
            dy = +1
        break
        case 3:
            dx = -1
        break
    }
    focus = gridAt(global.playerX + dx, global.playerY + dy, 0)
    if focus == entity.floor || focus == entity.target {
        gridChange(global.playerX, global.playerY, 0, -entity.player)
        global.playerX += dx
        global.playerY += dy
        gridChange(global.playerX, global.playerY, 0, entity.player)
        focus2 = gridAt(global.playerX - dx * 2, global.playerY - dy * 2, 0)
        if focus2 == entity.crate || focus2 == entity.crate + entity.target {
            gridChange(global.playerX - dx * 2, global.playerY - dy * 2, 0, -entity.crate)
            gridChange(global.playerX - dx, global.playerY - dy, 0, entity.crate)
        }
    }
}

//if the room is solved already, restart
if puzzleComplete() {
    room_restart()
}