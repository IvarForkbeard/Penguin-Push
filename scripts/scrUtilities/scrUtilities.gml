//convert tics to a time string

function ticsToTime(aTics){
    var minutes = string(int64(aTics / 1800))
    if string_length(minutes) < 2 {
        minutes = "0" + minutes
    }
    var seconds = string(int64(aTics / 30) % 60)
    if string_length(seconds) < 2 {
        seconds = "0" + seconds
    }
    var degrees = string((int64(aTics / 2) % 30))
    if string_length(degrees) < 2 {
        degrees = "0" + degrees
    }
    return minutes + ":" + seconds + ":" + degrees
}

function themePress(aTheme){
    global.theme = aTheme
    random_set_seed(global.theme)
    audio_stop_all()
    switch(aTheme){
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
            object_set_sprite(objCrate, sprBirb)
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
            audio_play_sound(musMoai, 5, true)
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

function themeToID(aTheme){
    switch (aTheme){
        case 0:
            return "30505"
        case 1:
            return "30608"
        case 2:
            return "30609"
        case 3:
            return "30610"
        case 4:
            return "30611"
        case 5:
            return "30612"
        case 6:
            return "30613"
        case 7:
            return "30614"
        case 8:
            return "30615"
    }
}

function extractSteps(aSteps){
    return real(string_copy(aSteps, 2, 5))
}

function extractTics(aTics){
    return real(string_copy(aTics, 8, 5))
}