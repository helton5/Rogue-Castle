if(instance_exists(arma_id)){
	x = arma_id.x;
	y = arma_id.y + 3;
	arma_x = x + lengthdir_x(8,arma_dir);
	arma_y = y + lengthdir_y(8,arma_dir);
	
    image_angle = arma_dir;
	function atirar(){
	
	if(!weapon > 0){
    return false;
     }
	 if(!pode_atirar){
		 return false;
	 }

		//atirar
		for(var i = 0; i < proj_count; i ++){
			var proj_inst = instance_create_layer(arma_x,arma_y,"Projeteis",Obj_proj);
			if(boomerang == true){
				audio_play_sound(arremesso_ronin,8,false);
			}
			if(sprite == spr_arco){
				audio_play_sound(arc_sfx,8,false);
			}
			if(sprite == Sprite63){
				audio_play_sound(Sound19,8,false);}
			if(sprite == Spr_bastao){
				audio_play_sound(arc_sfx,8,false);
			}
			proj_inst.sprite_index = proj;
			var dist = 6;
			var dir = arma_dir + (dist * i);
			proj_inst.direction = dir;
			proj_inst.image_angle = dir;
			proj_inst.speed = proj_spd;
			Obj_proj.damage = proj_damage;
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
