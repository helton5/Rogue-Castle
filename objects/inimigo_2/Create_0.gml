estado = "parado";
caminho = path_add();
my_weapon = instance_create_layer(x,y,"Weapons",Obj_armas_inimigos2);
my_weapon.arma_id = self;
hit_alpha = 0;
hit_color = c_white;
peso = 1;
velc = 1;
life = 100;