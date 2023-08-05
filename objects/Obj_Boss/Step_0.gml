
switch(estados){
	case "boss_entrada":
    var velocidade = 0.5; // Ajuste a velocidade de movimento conforme necessário
	var destinoY= 450;

	if (y > destinoY)
	{
   y -= velocidade;
	}
   
   if (y <= destinoY)
   {
      estados = "Atacando";
// Garante que o objeto não ultrapasse a posição y desejada
   }

break;
case "Atacando":
		var velocidade = 1.5;
         var velocidadeRotacao = 30; // Ajuste a velocidade de rotação conforme necessário
        // Move em direção à posição de orbita
        var direcao = point_direction(x, y, Ronin_p1.x, Ronin_p1.y);
        x += lengthdir_x(velocidade, direcao);
        y += lengthdir_y(velocidade, direcao);
        
        // Atualiza o ângulo de rotação
        image_angle += velocidadeRotacao;
	if (alarm[1] <= 0) {
		alarm[1] = 350
	 estados = "Atacando_2"
}break;
	case "Atacando_2":
		var velocidade = 1.5;
         var velocidadeRotacao = 30; // Ajuste a velocidade de rotação conforme necessário
		 var _dir = 0;
		 if alarm[0] <= 0{
			 alarm[0] = 240
			 audio_play_sound(arc_sfx,8,false)
		 repeat(8){
			var _inst = instance_create_layer(x,y,"Instances",Obj_boss_proj2);
			_inst.speed = 1.5;
			_inst.direction = _dir;
			_dir += 60;
		 }
	 }
        // Move em direção à posição de orbita
        var direcao = point_direction(x, y, Obj_Action.x, Obj_Action.y);
        x += lengthdir_x(velocidade, direcao);
        y += lengthdir_y(velocidade, direcao);
		 image_angle += velocidadeRotacao;
			if (alarm[1] <= 0) {
				alarm[1] = 600
			 estados = "Atacando_3"
}
	break;
	case "Atacando_3":
		var destinoX = 797;
		var destinoY = 443;

// Velocidade de movimento
		var velocidade = 3; // Ajuste a velocidade conforme necessário

// No evento Step do objeto
// Movimento em direção às coordenadas de destino
		var direcao = point_direction(x, y, destinoX, destinoY);
		var distancia = point_distance(x, y, destinoX, destinoY);

		if (distancia > 1) {
		x += lengthdir_x(velocidade, direcao);
		 y += lengthdir_y(velocidade, direcao);
			}
			var velocidade = 1.5;
         var velocidadeRotacao = 30; // Ajuste a velocidade de rotação conforme necessário
		 var _dir = 0;
		 if alarm[0] <= 0{
			 alarm[0] = 60
		 repeat(32){
			var _inst = instance_create_layer(x,y,"Instances",Obj_boss_proj);
			_inst.speed = 2;
			_inst.direction = _dir;
			_dir += irandom(360);
		 }
	 }
        // Move em direção à posição de orbita
        var direcao = point_direction(x, y, Obj_Action.x, Obj_Action.y);
        x += lengthdir_x(velocidade, direcao);
        y += lengthdir_y(velocidade, direcao);
		 image_angle += velocidadeRotacao;
		 if(alarm[1] <= 0){
			 alarm[1] = 750
			 estados = "Atacando"
			 instance_create_layer(x,y,"Instances",Obj_vida);
		 }

	break;
}

		



with(my_weapon){
		  arma_dir = point_direction(x,y,Ronin_p1.x,Ronin_p1.y);
	  }

hit_alpha = lerp(hit_alpha,0,0.1);
if(life <= 0){
	instance_destroy()
}