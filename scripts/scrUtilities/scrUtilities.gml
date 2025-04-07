//convert tics to a time string

function ticsToTime(tics){
    var minutes = string(int64(tics / 1800))
    if string_length(minutes) < 2 {
        minutes = "0" + minutes
    }
    var seconds = string(int64(tics/ 30) % 60)
    if string_length(seconds) < 2 {
        seconds = "0" + seconds
    }
    var degrees = string((int64(tics / 2) % 30))
    if string_length(degrees) < 2 {
        degrees = "0" + degrees
    }
    return minutes + ":" + seconds + ":" + degrees
}

function themePress(icon){
    global.theme = icon
    random_set_seed(global.theme)
    audio_stop_all()
    switch(icon){
        case 0:
            audio_play_sound(musBag, 5, true)
            object_set_sprite(objCrate, sprBag)
        break
        case 1:
            audio_play_sound(musBeaver, 5, true)
            object_set_sprite(objCrate, sprBeaver)
        break
        case 2:
            audio_play_sound(musBirb, 5, true)
            object_set_sprite(objCrate, sprBird)
        break
        case 3:
            audio_play_sound(musCat, 5, true)
            object_set_sprite(objCrate, sprCat)
        break
        case 4:
            audio_play_sound(musDumpster, 5, true)
            object_set_sprite(objCrate, sprDumpster)
        break
        case 5:
            audio_play_sound(musTheme, 5, true)
            object_set_sprite(objCrate, sprMoai)
        break
        case 6:
            audio_play_sound(musPoop, 5, true)
            object_set_sprite(objCrate, sprPoop)
        break
        case 7:
            audio_play_sound(musSkull, 5, true)
            object_set_sprite(objCrate, sprSkull)
        break
        case 8:
            audio_play_sound(musVirus, 5, true)
            object_set_sprite(objCrate, sprVirus)
        break
    }
    global.startTime = current_time
    room_goto(rmGame)
}