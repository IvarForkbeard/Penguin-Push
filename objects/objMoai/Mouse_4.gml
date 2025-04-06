/// @description

global.theme = 5
random_set_seed(global.theme)
audio_stop_all()
audio_play_sound(musTheme, 5, true)
object_set_sprite(objCrate, sprMoai)
room_goto(rmGame)