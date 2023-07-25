Veloh = 0;
velv = 0;
velc = 2;
mov = 0;
life = 4;
temp_inv = room_speed * 2
dano = false
efeito_dano = function()
{
	static _valor = - 0.10;
	if(!dano) return;
	if(image_alpha <= 0) _valor *= -1;
	if(image_alpha > 1) _valor *= -1;
	image_alpha +=  _valor;
}
toma_dano = function(){
	if(dano) return;
	life --;
	dano = true;
	alarm[0] = temp_inv
}
healthbar_width = 400;
healthbar_height = 200;		
healthbar_x = (600) - (healthbar_width/2);
healthbar_y = (50) - (healthbar_height/2);
my_weapon = instance_create_layer(x,y,"Weapons",Obj_armas);
my_weapon.arma_id = self;