/// @description

global.theme = 3
random_set_seed(global.theme)
audio_stop_all()
audio_play_sound(musCat, 5, true)
object_set_sprite(objCrate, sprCat)
room_goto(rmGame)