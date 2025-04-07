//leaderboard testing code
LootLockerInitialize("dev_b1ce80cdd57e4a3495dfd55ae974ac84", "000.001", "true", "30505");

//setup screen
window_set_size(640, 900)
draw_set_color(c_lime)
draw_set_font(MaryKate)

//setup variables
#macro GRIDSIZE 64
#macro GAMENAME "Penguin Push"
enum entity {
    floor = 0,
    wall = 1,
    target = 3,
    player = 7,
    crate = 15
}
global.playgrid[0][0][0] = entity.wall
global.levelToWin = 3
global.themes = ["Bag", "Beaver", "Birb", "Cat", "Dumpster", "Moai", "Poop", "Skull", "Virus"]
global.playerName = "Playa"
for (i = 0; i < 9; i ++){
    global.leaderboardArray[i][0] = ""
    global.leaderboardArray[i][1] = "99999"
    global.leaderboardArray[i][2] = "99999"
}

//
//
//
//