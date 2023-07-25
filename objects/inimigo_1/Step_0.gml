
switch(estado){
	case "parado":
		sprite_index = Inimigo_base;
	   var dist = 300;
	   var linha = collision_line(x,y,Ronin_p1.x,Ronin_p1.y,parede,false,false);
	   if(distance_to_object(Ronin_p1) <= dist and !linha){
		   estado = "seguindo_Ronin";
	   }
	break;
	
	case "seguindo_Ronin":
		sprite_index = Inimigo_warning;
	  var x1 = x;
      var y1 = y;
      var x2 = (Ronin_p1.x div 32) * 32 + 16;
      var y2 = (Ronin_p1.y div 32) * 32 + 16;
	  with(my_weapon){
		  arma_dir = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
	  }
      if(mp_grid_path(Obj_mapa.mp_grid,caminho,x1,y1,x2,y2,true)){
	      path_start(caminho,velc,path_action_stop,false);}
	break;
	
}
	
	
// Fazer a arma do inimigo atirar
	
	//Arqueiro settings
	//case "atacando_Ronin":
	//	arma_dir = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
					// Atirar na direção do jogador
	
	//if(instance_exists(Obj_armas_inimigos)){ // Verificar se a instância da arma do inimigo existe
				//with(Obj_armas_inimigos){ // Acessar o código da instância da arma do inimigo
						//x = other.x; // Posicionar a arma do inimigo na mesma posição do inimigo
						// y = other.y;
						// atirar_inimigos(); // Fazer a arma do inimigo atirar
						//  if(distance_to_object(Ronin_p1) >= 51){ 
						//	 estado = "seguindo_Ronin";}
								//	 }
hit_alpha = lerp(hit_alpha,0,0.1);
if(life <= 0){
	instance_destroy()
}