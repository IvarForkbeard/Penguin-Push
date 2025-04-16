//startup stuff for this room and object
audio_stop_all()
audio_play_sound(musLeaderboard, 1, true)
textFirstLine = 192
textSpacing = 32
var scoreAsString = "9"
var stepsAsString = string(global.totalSteps);
while string_length(stepsAsString) < 5 {
    stepsAsString = "0" + stepsAsString;
}
var ticAsString = string(global.elapsedTics);
while string_length(ticAsString) < 6 { //add extra leading zero to visually separate steps from tics
    ticAsString = "0" + ticAsString;
}
scoreAsString += stepsAsString + ticAsString;
if real(scoreAsString) < real(global.leaderboardArray[global.theme][1]){
    global.leaderboardArray[global.theme][0] = global.playerName
    global.leaderboardArray[global.theme][1] = scoreAsString
}