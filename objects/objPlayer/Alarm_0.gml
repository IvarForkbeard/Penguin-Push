//check to see if player has finished
if global.level >= global.levelToWin {
    if (global.totalSteps < global.leaderboardArray[global.theme][1]){
        global.leaderboardArray[global.theme][0] = global.playerName
        global.leaderboardArray[global.theme][1] = global.totalSteps
        global.leaderboardArray[global.theme][2] = global.elapsedTime
    }
    room_goto(rmLeaderboard)
}
else {
    room_restart()
}