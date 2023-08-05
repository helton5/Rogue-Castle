if(index == 3){
	game_end()
}
if(index == 0){
	audio_play_sound(Sound5, 8, false);
	var target = Ambiente12;
if(room == Ambiente12) target = Ambiente123;

TransitionStart(target,fade_out,fade_in);
}