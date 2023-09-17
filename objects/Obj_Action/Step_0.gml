dir += 2
if(!instance_exists(Ronin_p1)){
	audio_stop_all();
}
x = Ronin_p1.x + lengthdir_x(len,dir);
y = Ronin_p1.y + lengthdir_y(len,dir);