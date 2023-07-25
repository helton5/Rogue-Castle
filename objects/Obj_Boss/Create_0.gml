estados = "boss_entrada"

//caminho = path_start(Boss_path,1,path_action_stop,false);
my_weapon = instance_create_layer(x,y,"Weapons",Obj_armas_boss);
my_weapon.arma_id = self;
velc = 1;
life = 1000;
vida_max = life;
healthbar_width = 400;
healthbar_height = 200;		
healthbar_x = (600) - (healthbar_width/2);
healthbar_y = (50) - (healthbar_height/2);
colisoes = 0;
hit_alpha = 0;
hit_color = c_white;
peso = 1;