if(index == 2){
	game_end()
}
if(index == 1){
	room_goto(Room5)
}
if(index == 0){
	audio_play_sound(Sound5, 8, false);
	var target = Ambiente1;
if(room == Ambiente123) target = Ambiente12;

TransitionStart(target,fade_out,fade_in);
}