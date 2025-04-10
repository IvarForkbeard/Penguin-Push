//draw leaderboard boilerplate
draw_self()
draw_set_colour(c_lime)
draw_set_font(MaryKate)
draw_text(256, 32, "Leaderboard")

//draw the leaderboard array
draw_text(64, textFirstLine / 2, "Theme")
draw_text(192, textFirstLine / 2, "Playa")
draw_text(384, textFirstLine / 2, "Moves")
draw_text(512, textFirstLine / 2, "Time")
for (i = 0; i < 9; i ++){
    if global.leaderboardArray[i][0] = "" {
        global.leaderboardArray[i][0] = "Playa"
    }
    if global.leaderboardArray[i][1] = "" {
        global.leaderboardArray[i][1] = "99999099999"
    }
    draw_text(64, textFirstLine + i * textSpacing, global.themes[i])
    draw_text(192, textFirstLine + i * textSpacing, global.leaderboardArray[i][0])
    draw_text(384, textFirstLine + i * textSpacing, extractSteps(global.leaderboardArray[i][1]))
    draw_text(512, textFirstLine + i * textSpacing, ticsToTime(extractTime(global.leaderboardArray[i][1])))
}

//draw more boilerplate
draw_text(64, 640, "Escape or Penguin for the Main Menu")
draw_text(64, 800, "Artwork by www.shaelina.com")
draw_text(64, 832, "Music by www.youtube.com/@Wanye")