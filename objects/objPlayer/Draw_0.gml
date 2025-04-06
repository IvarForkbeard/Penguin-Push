// Position player
x = global.playerX * GRIDSIZE
y = global.playerY * GRIDSIZE
draw_self()

//destroy and recreate crates
instance_destroy(objCrate)
for (i = 0; i < 10; i ++) {
    for (j = 0; j < 10;  j ++) {
        focus = gridAt(i, j, now)
        if focus == entity.crate || focus = entity.crate + entity.target {
            instance_create_layer(i * GRIDSIZE, j * GRIDSIZE, "Instances", objCrate)
        }
    }
}

// Display info text
window_set_caption(GAMENAME)
draw_text(320, 660, "Theme: " + global.themes[global.theme])
draw_text(320, 700, "Levels Remaining: " + string(global.levelToWin - global.level))
draw_text(320, 740, "Steps this level: " + string(now - 999))
draw_text(320, 780, "Steps total: " + string(global.totalSteps))
var minutes = string(int64(global.elapsedTime / 1800))
if string_length(minutes) < 2 {
    minutes = "0" + minutes
}
var seconds = string(int64(global.elapsedTime / 30) % 60)
if string_length(seconds) < 2 {
    seconds = "0" + seconds
}
var degrees = string((int64(global.elapsedTime / 2) % 30))
if string_length(degrees) < 2 {
    degrees = "0" + degrees
}
draw_text(320, 820, "Elapsed Time: " + minutes + ":" + seconds + ":" + degrees)

//advance timer if still playing
if global.level < global.levelToWin {
    global.elapsedTime ++
}