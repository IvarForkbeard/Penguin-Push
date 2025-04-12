//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
leaderboardAPI = "dev_b1ce80cdd57e4a3495dfd55ae974ac84"
leaderboardBeenUpdated = false
textFirstLine = 192
textSpacing = 32

//functions for leaderboard
function LBSubmit(aTheme, aSteps, aTics){
    LootLockerSetPlayerName(global.playerName)
    LootLockerSubmitScore(themeToID(aTheme), (99999 - aSteps) * 1000000 + (99999 -aTics))
    global.leaderboardArray[aTheme][0] = global.playerName
    global.leaderboardArray[aTheme][1] = (99999 - aSteps) * 1000000 + (99999 - aTics)
}

LootLockerTurnOffAutoRefresh()
LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(0))