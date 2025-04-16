//reset global counters in case someone has aborted a level
global.totalSteps = 0
global.level = 0
global.elapsedTics = 0
global.cutoffTics = 99999 //tics before timer just stops counting
global.cutoffSteps = 99999 //steps before timer just stops counting

//audio
audio_stop_all()
audio_play_sound(musTheme, 1, true)