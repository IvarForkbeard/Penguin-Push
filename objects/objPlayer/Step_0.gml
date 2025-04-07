//advance timer if still playing
if global.level < global.levelToWin {
    //test code here
    global.elapsedTime = (current_time - global.startTime) / (1000 / 30)
    //global.elapsedTime += delta_time / (1000000 / 30)
}