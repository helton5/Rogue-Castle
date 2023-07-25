var tecla_direita = keyboard_check(ord("D"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));

var teclas = tecla_direita - tecla_esquerda !=0 or tecla_baixo - tecla_cima !=0;
if(Veloh != 0)image_xscale = sign(Veloh);
if(teclas != 0){
	sprite_index = sprite_ronin_run;
}else{
	sprite_index = Player1;
}

mov = point_direction(0,0,tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);
Veloh = lengthdir_x(velc * teclas,mov);
velv = lengthdir_y(velc * teclas,mov);

if(place_meeting(x+Veloh,y,parede)){
while (!place_meeting(x+sign(Veloh),y,parede)){
	x+=sign(Veloh);
}
Veloh = 0;
}
if(place_meeting(x,y+velv,parede)){
while (!place_meeting(x,y+sign(velv),parede)){
	y+=sign(velv);
}
velv = 0;
}
x+=Veloh;
y+=velv;
efeito_dano();
with(my_weapon){
	var mb;
	var key_drop = keyboard_check_pressed(ord(" "));
	if(auto){
		mb = mouse_check_button(mb_left);
	}else{
		mb = mouse_check_button_pressed(mb_left);
	}
		

		
		
	arma_dir = point_direction(x,y,mouse_x,mouse_y);
	if(mb){
		atirar();
	}

	if(key_drop and weapon > 0){
		weapon_drop();
	}else if(key_drop and weapon == 0){
		pegar_arma();
	}
}