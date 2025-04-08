//startup stuff for this room and object
LootLockerInitialize("dev_b1ce80cdd57e4a3495dfd55ae974ac84", "000.001", "true", "30505")
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
textFirstLine = 192
textSpacing = 32


//lootlocker leaderboard stuff

LootLockerSetPlayerName(global.playerName)

//so theme + inverted steps + inverted time will create a leaderboard all in one.
/*
LootLockerSubmitScore("30505", string (global.theme * 1000000000000000 + (99999 - global.totalSteps) * 1000000000 + (999999 - global.elapsedTime * 100)))
LootLockerGetHighscoresTop("30505", "10")
global.leaderboard = LLHighscoresTopNamesList()
show_debug_message("Here is what I got from LL: ")
show_debug_message(global.leaderboard)
show_debug_message("End of transmission")
 */