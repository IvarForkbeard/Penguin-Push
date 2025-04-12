//as per Johannes instructions
if !leaderboardHasBeenUpdated {
    if global.LootLockerInitialized {
        LBSubmit(global.theme, global.totalSteps, global.elapsedTics)
        for (i = 0; i < 9; i ++){
            if LLHighscoresTopNamesList()[0] != " " {
                global.leaderboardArray[i][0] = LLHighscoresTopNamesList()[0]
            }
            if LLHighscoresTopScoreList()[0] != " " {
                global.leaderboardArray[i][1] = LLHighscoresTopScoreList()[0]
            }
        }
        leaderboardHasBeenUpdated = true
    }
}