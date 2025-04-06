//check to see if player has finished
if global.level >= global.levelToWin {
    instance_create_layer(320, 700, "Text", objWinner)
    LootLockerSetPlayerName("Justin Menu")
    LootLockerSubmitScore("30505", "113")
}
else {
    room_restart()
}