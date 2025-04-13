//popular leaderboardArray from LootLocker as data becomes available
if stepThroughLootLocker < 9 {
    if global.LootLockerInitialized {
        LootLockerGetHighscoresTop(themeToID(stepThroughLootLocker), "1")
        var leaderboardName = LLHighscoresTopNamesList()[0]
        var leaderboardScore = LLHighscoresTopScoreList()[0]
        global.leaderboardArray[stepThroughLootLocker][0] = leaderboardName
        global.leaderboardArray[stepThroughLootLocker][1] = string(leaderboardScore)
        stepThroughLootLocker ++
        LootLockerReset()
        LootLockerInitialize(leaderboardAPI, "000.001", "true", themeToID(stepThroughLootLocker))
    }
}