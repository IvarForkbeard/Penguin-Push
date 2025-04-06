//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
for (i = 0; i < 9; i ++){
    for (j = 0; j < 3; j ++){
         leaderboardArray[i][j] = "Null"
    }
}
textFirstLine = 192
textSpacing = 48