	colisoes -= 1
	var player = instance_nearest(x,y,Ronin_p1);
	direction = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
	if(colisoes <= 0){
		instance_destroy()
		}