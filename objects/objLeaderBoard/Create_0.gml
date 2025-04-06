//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
for (i = 0; i < 9; i ++){
    leaderboardArray[i][0] = "Playa"
    leaderboardArray[i][1] = "999999"
    leaderboardArray[i][2] = "99:99.29"
}
textFirstLine = 192
textSpacing = 48
keyboard_string = global.playerName