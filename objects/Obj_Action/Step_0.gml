dir += 2
x = Ronin_p1.x + lengthdir_x(len,dir);
y = Ronin_p1.y + lengthdir_y(len,dir);
if(global.Pause = false){
	if(!audio_is_playing(Pesado)){
		audio_play_sound(Pesado,6,true);}
}
if(global.Pause = true or (!instance_exists(Obj_Boss))){
	audio_stop_sound(Pesado)}
