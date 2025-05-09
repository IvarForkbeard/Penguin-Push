//return the value at a certain place and time
function gridAt(x, y, z) {
    return global.playgrid[x][y][z]
}

//set the grid at a certain place and time
function gridSet(x, y, z, thing) {
    global.playgrid[x][y][z] = thing
}

//change the grid at a certain place and time
function gridChange(x, y, z, thing) {
    global.playgrid[x][y][z] += thing
}

//draw the array for debugging
function gridDraw () {
    for (var i = 0; i < 10; i++){
        for (var j = 0; j < 10;  j++){
            draw_text(32 + i * 32, 32 + j * 32, gridAt(i, j, global.totalSteps))
        }
    }
}

//check if the puzzle is complete
function puzzleComplete() {
    for (var i = 0; i < 10; i ++) {
        for (var j = 0; j < 10; j ++) {
            var focus = gridAt(i, j, currentMove)
            if focus == entity.target || focus == entity.target + entity.player {
                return false
            }
        }
    }
    return true
}

//
//
//
//
//