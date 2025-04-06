//audio
audio_stop_all()
audio_play_sound(musTheme, 1, true)

//reset global counters in case someone has aborted a level
global.totalSteps = 0
global.level = 0
global.elapsedTime = 0