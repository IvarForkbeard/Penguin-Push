// Position player
x = global.playerX * GRIDSIZE
y = global.playerY * GRIDSIZE
draw_self()

//destroy and recreate crates
instance_destroy(objCrate)
for (var i = 0; i < 10; i ++) {
    for (var j = 0; j < 10;  j ++) {
        var focus = gridAt(i, j, currentMove)
        if focus == entity.crate || focus == entity.crate + entity.target {
            instance_create_layer(i * GRIDSIZE, j * GRIDSIZE, "Instances", objCrate)
        }
    }
}

// Display info text
draw_text(320, 660, "Theme: " + global.themes[global.theme])
draw_text(320, 700, "Player: " + global.playerName)
draw_text(320, 740, "Levels Remaining: " + string(global.levelToWin - global.level))
draw_text(320, 780, "Steps this level: " + string(currentMove))
draw_text(320, 820, "Steps total: " + string(global.totalSteps))
draw_text(320, 860, "Elapsed Time: " + ticsToTime(global.elapsedTics))