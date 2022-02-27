var _Tpos = audio_sound_get_track_position(levelsound);
if(_Tpos > loopLen){
	audio_sound_set_track_position(levelsound,0);
}