//advance timer if still playing
if global.totalSteps > global.cutoffSteps {
    global.totalSteps = global.cutoffSteps
}
if global.level < global.levelToWin {
    global.elapsedTics = (current_time - global.startTime) * 0.001 * 30
    if global.elapsedTics > global.cutoffTics {
        global.elapsedTics = global.cutoffTics
    }
}