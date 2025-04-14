//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
leaderboardAPI = "dev_b1ce80cdd57e4a3495dfd55ae974ac84"
leaderboardHasBeenUpdated = false
textFirstLine = 192
textSpacing = 32
stepThroughLootLocker = 0

//submit function for leaderboard
function LBSubmit(aTheme, aSteps, aTics){
    if global.playerName = "" {
        global.playerName = "Alan Smithee"
    }
    LootLockerSetPlayerName(global.playerName)
    var scoreAsString = "9"
    var stepsAsString = string(aSteps);
    while string_length(stepsAsString) < 5 {
        stepsAsString = "0" + stepsAsString;
    }
    var ticAsString = string(aTics);
    while string_length(ticAsString) < 6 { //add extra leading zero to visually separate steps from tics
        ticAsString = "0" + ticAsString;
    }
    scoreAsString += stepsAsString + ticAsString;
    if real(scoreAsString) < real(global.leaderboardArray[aTheme][1]){
        LootLockerSubmitScore(themeToID(aTheme), real(scoreAsString))
        global.leaderboardArray[aTheme][0] = global.playerName
        global.leaderboardArray[aTheme][1] = scoreAsString
    }
}
LootLockerTurnOffAutoRefresh()
LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(global.theme))
LBSubmit(global.theme, global.totalSteps, global.elapsedTics)