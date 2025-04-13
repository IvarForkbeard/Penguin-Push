//on input, increment the number of steps and store the new grid at that position in the 3d array
for (var j = 0; j < 10; j ++) {
    for (var k = 0; k < 10; k ++) {
        gridSet(j, k, currentMove + 1, gridAt(j, k, currentMove))
    }
}
dx = 0
dy = 0
switch keyboard_key{
    case vk_left:
        dx = -1
        dy = 0
        currentMove ++
        global.totalSteps ++
    break
    case vk_up:
        dx = 0
        dy = -1
        currentMove ++
        global.totalSteps ++
    break
    case vk_right:
        dx = 1
        dy = 0
        currentMove ++
        global.totalSteps ++
    break
    case vk_down:
        dx = 0
        dy = 1
        currentMove ++
        global.totalSteps ++
    break
}

//move the player
gridChange(global.playerX, global.playerY, currentMove, -entity.player)
global.playerX += dx
global.playerY += dy
gridChange(global.playerX, global.playerY, currentMove, entity.player)

//if the player is on a crate, then push that crate ahead
var focus = gridAt(global.playerX, global.playerY, currentMove)
if focus == entity.player + entity.crate || focus == entity.player + entity.crate + entity.target{
    gridChange(global.playerX, global.playerY, currentMove, -entity.crate)
    gridChange(global.playerX + dx, global.playerY + dy, currentMove, entity.crate)
}

//check for illegal board situations
for (var i = 0; i < 10; i ++) {
    for(var j = 0; j < 10; j ++) {
        switch gridAt(i, j, currentMove) {
            case entity.wall + entity.player: //player on wall
            case entity.wall + entity.crate: //crate on wall
            case entity.crate + entity.crate: //crate on crate
            case entity.crate + entity.crate + entity.target: //crate on crate on target
                //rewind time and reposition player
                currentMove --
                global.totalSteps --
                for (var k = 0; k < 10; k ++) {
                    for (var l = 0; l < 10; l ++) {
                        focus = gridAt(k, l, currentMove)
                        if  focus == entity.player || focus == entity.player + entity.target {
                            global.playerX = k
                            global.playerY = l
                        }
                    }
                }
            break
        } 
    }
}

// Increment level if the puzzle is complete
if puzzleComplete() {
    global.level ++
    if !audio_is_playing(sndClapping){
        audio_play_sound(sndClapping, 4, false)
    }
    alarm_set(0, 10)
}