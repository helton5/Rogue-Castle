
switch(estado){
	case "parado":
		sprite_index = Spr_arc_chill19;
	   var dist = 500;
	   var linha = collision_line(x,y,Ronin_p1.x,Ronin_p1.y,parede,false,false);
	   
	   if(distance_to_object(Ronin_p1) <= dist and !linha){
		   estado = "seguindo_Ronin";
	   }
	break;
	
	case "seguindo_Ronin":
		sprite_index = Spr_arqueiro19;
		var linha = collision_line(x,y,Ronin_p1.x,Ronin_p1.y,parede,false,false);
	  var x1 = x;
      var y1 = y;
      var x2 = (Ronin_p1.x div 32) * 32 + 16;
      var y2 = (Ronin_p1.y div 32) * 32 + 16;

	 if(mp_grid_path(Obj_mapa.mp_grid,caminho,x1,y1,x2,y2,true)){
	      path_start(caminho,velc,path_action_stop,false);}
		if(distance_to_object(Ronin_p1) <= 400 and !linha){
			estado = "atacando_Ronin";
		}
	break
	
	case "atacando_Ronin":
		sprite_index = Spr_arc_atack;
	  with(my_weapon){
		  arma_dir = point_direction(x,y,Ronin_p1.x,Ronin_p1.y)
						 atirar_inimigos();}
	 if(distance_to_object(Ronin_p1) >= 401){
			estado = "seguindo_Ronin";
		}
	break;
	
}
hit_alpha = lerp(hit_alpha,0,0.1);
if(life <= 0){
	instance_destroy()
}