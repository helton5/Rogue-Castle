
if place_meeting(x, y, parede)
{
    path_end();
}
with(my_weapon){
		  arma_dir = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
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