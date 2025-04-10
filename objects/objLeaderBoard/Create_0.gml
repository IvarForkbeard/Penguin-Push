//functions for leaderboard
function LBSubmit(sTheme, sSteps, sTime){
    LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(sTheme))
    LootLockerSetPlayerName(global.playerName)
    LootLockerSubmitScore(themeToID(sTheme), (99999 - sSteps) * 1000000 + (99999 - sTime))
    global.leaderboardArray[sTheme][0] = global.playerName
    global.leaderboardArray[sTheme][1] = (99999 - sSteps) * 1000000 + (99999 - sTime)
}

//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
leaderboardAPI = "dev_b1ce80cdd57e4a3495dfd55ae974ac84"
textFirstLine = 192
textSpacing = 32

LBSubmit(global.theme, global.totalSteps, global.elapsedTime)
LootLockerTurnOffAutoRefresh()

/* this isn't working...YET
for (i = 0; i < 9; i ++){
    LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(i))
    LootLockerGetHighscoresTop(themeToID(i), "1")
    global.leaderboardArray[i][0] = LLHighscoresTopNamesList()[0]
    global.leaderboardArray[i][1] = LLHighscoresTopScoreList()[0]
}