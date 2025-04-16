//setup screen
window_set_caption(GAMENAME);
window_set_size(640, 900)
draw_set_color(c_lime)
draw_set_font(MaryKate)

//setup variables
#macro GRIDSIZE 64
#macro GAMENAME "Penguin Push"
global.levelToWin = 1 //level required to win the game
enum entity {
    floor = 0,
    wall = 1,
    target = 3,
    player = 7,
    crate = 15
}
global.playgrid[0][0][0] = entity.wall
global.themes = ["Bag", "Beaver", "Birb", "Cat", "Dumpster", "Moai", "Poop", "Skull", "Virus"]
global.playerName = "Alan Smithee"
keyboard_string = global.playerName
for (var i = 0; i < 9; i ++){
    global.leaderboardArray[i][0] = global.playerName
    global.leaderboardArray[i][1] = "999999099999"
}

room_goto(rmTitle)