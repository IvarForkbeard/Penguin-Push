//leaderboard testing code
LootLockerInitialize("dev_b1ce80cdd57e4a3495dfd55ae974ac84", "000.001", "true", "30505");

//setup screen
window_set_size(640, 960)
draw_set_color(c_lime)
draw_set_font(MaryKate)

//constants
#macro GRIDSIZE 64
#macro GAMENAME "Project Triclops"
enum entity {
    floor = 0,
    wall = 1,
    target = 3,
    player = 7,
    crate = 15
}
global.playgrid[0][0][0] = entity.wall
global.levelToWin = 32
global.themes = ["Bag", "Beaver", "Birb", "Neko", "Dumpster", "Moai", "Poop", "Skull", "Virus"]

//
//
//
//