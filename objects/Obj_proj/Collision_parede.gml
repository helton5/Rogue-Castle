	colisoes += 1;
if(boomerang){
	var player = instance_nearest(x,y,Ronin_p1);
	direction = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
}else{
instance_destroy();}
if(colisoes >= 30){
	 instance_destroy();
}