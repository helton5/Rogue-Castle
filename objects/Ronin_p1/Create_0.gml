Veloh = 0;
velv = 0;
velc = 2;
mov = 0;
life = 4;
contador = 0
temp_inv = room_speed * 2
dano = false
morto = false
mostrar_vida = false
chave = false
my_weapon = instance_create_layer(x,y,"Weapons",Obj_armas);
my_weapon.arma_id = self;
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
morto = function()
{
	static _valor = - 0.01;
	if(!morto) return;
	image_alpha +=  _valor;
	dano = false
	instance_destroy(Obj_armas)
}