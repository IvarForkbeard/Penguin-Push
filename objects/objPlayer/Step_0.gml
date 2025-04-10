//advance timer if still playing
if global.totalSteps > 99999 {
    global.totalSteps = 99999
}
if global.level < global.levelToWin {
    global.elapsedTime = (current_time - global.startTime) / (1000 / 30)
    if global.elapsedTime > 1800 * global.cutoffTime {
        global.elapsedTime = 1800 * global.cutoffTime
    }
}