if(!Ronin_p1.chave == true){
	return false
}
contador += 0.1
if(contador >= 5){
audio_play_sound(Sound_porta,2,false);
sprite_index = Spr_exit_open
TransitionStart(Ambiente12,fade_out,fade_in)
contador -= 5
}