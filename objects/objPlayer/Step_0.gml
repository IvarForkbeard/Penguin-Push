//advance timer if still playing
if global.level < global.levelToWin {
    global.elapsedTime = (current_time - global.startTime) / (1000 / 30)
}