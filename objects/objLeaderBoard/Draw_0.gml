//draw leaderboard boilerplate
draw_self()
draw_set_color(c_lime)
draw_set_font(MaryKate)
draw_text(256, 32, "Leaderboard")
draw_text(128, 800, "Escape or Daniel for the Main Menu")

//display the leaderboard
draw_text(64, textFirstLine / 2, "Theme")
draw_text(192, textFirstLine / 2, "Playa")
draw_text(384, textFirstLine / 2, "Moves")
draw_text(512, textFirstLine / 2, "Time")
for (i = 0; i < 9; i ++){
    draw_text(64, textFirstLine + i * textSpacing, global.themes[i])
    draw_text(192, textFirstLine + i * textSpacing, leaderboardArray[i][0])
    draw_text(384, textFirstLine + i * textSpacing, leaderboardArray[i][1])
    draw_text(512, textFirstLine + i * textSpacing, leaderboardArray[i][2])
}