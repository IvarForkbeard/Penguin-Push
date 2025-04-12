//advance timer if still playing
if global.totalSteps > 99998 {
    global.totalSteps = 99998
}
if global.level < global.levelToWin {
    global.elapsedTics = (current_time - global.startTime) * 0.001 * 30
    if global.elapsedTics > 99998 {
        global.elapsedTics = 99998
    }
}