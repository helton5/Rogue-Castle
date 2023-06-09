if(instance_exists(arma_id)){
	x = arma_id.x;
	y = arma_id.y + 3;
	arma_x = x + lengthdir_x(8,arma_dir);
	arma_y = y + lengthdir_y(8,arma_dir);
	
    image_angle = arma_dir;
	function atirar_inimigos(){
	
	if(!weapon > 0){
    return false;
     }
	 if(!pode_atirar){
		 return false;
	 }
if(knock_Back > 0 and place_meeting(x,y,Ronin_p1)){
	var recoil_direction = point_direction(arma_x.x, arma_y.y, x, y);
	var recoil_x = lengthdir_x(knock_Back, recoil_direction) + x;
	var recoil_y = lengthdir_y(knock_Back, recoil_direction) + y;
	x = recoil_x;
	y = recoil_y;}
	

		//atirar
		for(var i = 0; i < proj_count; i ++){
			var proj_inst = instance_create_layer(arma_x,arma_y,"Projeteis",Obj_proj_inimigo);
			proj_inst.sprite_index = proj;
			var dist = 6;
			var dir = arma_dir + (dist * i);
			proj_inst.direction = dir;
			proj_inst.image_angle = dir;
			proj_inst.speed = proj_spd;
			Obj_proj_inimigo.damage = proj_damage;
		}
		pode_atirar = false;
		alarm[0] = proj_delay;
	}
	function weapon_drop(){
		var inst = instance_create_layer(arma_x,arma_y,layer,drop);
		inst.image_angle = arma_dir;
		inst.direction = arma_dir;
		inst.speed = 3;
		scr_mudar_arma(self,0);
	}
	function pegar_arma(){
		var inst = instance_nearest(x,y,Obj_man_drop);
		if(instance_exists(inst)){
			scr_mudar_arma(self,inst.weapon_index);
			instance_destroy(inst);}
			}
	}else{
		instance_destroy();
	}
