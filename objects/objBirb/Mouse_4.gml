/// @description

global.theme = 2
random_set_seed(global.theme)
audio_stop_all()
audio_play_sound(musTheme, 5, true)
object_set_sprite(objCrate, sprBird)
room_goto(rmGame)