//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
leaderboardAPI = "dev_b1ce80cdd57e4a3495dfd55ae974ac84"
leaderboardHasBeenUpdated = false
textFirstLine = 192
textSpacing = 32

//functions for leaderboard
function LBSubmit(aTheme, aSteps, aTics){
    LootLockerSetPlayerName(global.playerName)
    var scoreAsString = "9"
    if aSteps < 10 {
        scoreAsString += "0000" + string(aSteps)
    } else if aSteps < 100 {
        scoreAsString += "000" + string(aSteps)
    } else if aSteps < 1000 {
        scoreAsString += "00" + string(aSteps)
    } else if aSteps < 10000 {
        scoreAsString += "0" + string(aSteps)
    } else if aSteps < 100000 {
        scoreAsString += string(aSteps)
    }
    scoreAsString += "0"
    if aTics < 10 {
        scoreAsString += "0000" + string(aTics)
    } else if aTics < 100 {
        scoreAsString += "000" + string(aTics)
    } else if aTics < 1000 {
        scoreAsString += "00" + string(aTics)
    } else if aTics < 10000 {
        scoreAsString += "0" + string(aTics)
    } else if aTics < 100000 {
        scoreAsString += string(aTics)
    }
    LootLockerSubmitScore(themeToID(aTheme), real(scoreAsString))
    global.leaderboardArray[aTheme][0] = global.playerName
    global.leaderboardArray[aTheme][1] = scoreAsString
}

LootLockerTurnOffAutoRefresh()
LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(0))