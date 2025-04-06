/// @description

global.theme = 6
random_set_seed(global.theme)
audio_stop_all()
audio_play_sound(musPoop, 5, true)
object_set_sprite(objCrate, sprPoop)
room_goto(rmGame)