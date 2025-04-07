//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
textFirstLine = 192
textSpacing = 32

//lootlocker leaderboard stuff
global.leaderboard = LLHighscoresTopScoreList()
show_debug_message(global.leaderboard) 