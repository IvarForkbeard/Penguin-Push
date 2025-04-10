//check to see if player has finished
if global.level >= global.levelToWin {
    room_goto(rmLeaderboard)
}
else {
    room_restart()
}