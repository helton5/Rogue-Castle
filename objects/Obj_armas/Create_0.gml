// sem arma

armas[0] = ds_map_create();
ds_map_add(armas[0],"sprite",-1);
ds_map_add(armas[0],"proj",-1);
ds_map_add(armas[0],"proj_spd",0);
ds_map_add(armas[0],"proj_damage",0);
ds_map_add(armas[0],"proj_Count",0);
ds_map_add(armas[0],"proj_delay",0);
ds_map_add(armas[0],"auto",false);
ds_map_add(armas[0],"drop",0);
ds_map_add(armas[0],"boomerang",false);




//Arco
armas[1] = ds_map_create();
ds_map_add(armas[1],"sprite",spr_arco);
ds_map_add(armas[1],"proj",spr_proj);
ds_map_add(armas[1],"proj_spd",5);
ds_map_add(armas[1],"proj_damage",25);
ds_map_add(armas[1],"proj_count",1);
ds_map_add(armas[1],"proj_delay",60);
ds_map_add(armas[1],"auto",true);
ds_map_add(armas[1],"drop",Obj_arco);
ds_map_add(armas[1],"boomerang",false);




//boomerang
armas[2] = ds_map_create();
ds_map_add(armas[2],"sprite",Spr_boo);
ds_map_add(armas[2],"proj",Spr_boo_run);
ds_map_add(armas[2],"proj_spd",3);
ds_map_add(armas[2],"proj_damage",10);
ds_map_add(armas[2],"proj_count",1);
ds_map_add(armas[2],"proj_delay",12);
ds_map_add(armas[2],"auto",false);
ds_map_add(armas[2],"drop",Obj_boo);
ds_map_add(armas[2],"boomerang",true);

//bastão_mago_Azul
armas[3] = ds_map_create();
ds_map_add(armas[3],"sprite",Spr_bastao);
ds_map_add(armas[3],"proj",spr_magia_azul);
ds_map_add(armas[3],"proj_spd",3);
ds_map_add(armas[3],"proj_damage",20);
ds_map_add(armas[3],"proj_count",3);
ds_map_add(armas[3],"proj_delay",60);
ds_map_add(armas[3],"auto",true);
ds_map_add(armas[3],"drop",Obj_bastao_Azul);
ds_map_add(armas[3],"boomerang",false);


//arminha D`agua
armas[4] = ds_map_create();
ds_map_add(armas[4],"sprite",Sprite63);
ds_map_add(armas[4],"proj",spr_magia_azul);
ds_map_add(armas[4],"proj_spd",5);
ds_map_add(armas[4],"proj_damage",1);
ds_map_add(armas[4],"proj_count",1);
ds_map_add(armas[4],"proj_delay",1);
ds_map_add(armas[4],"auto",true);
ds_map_add(armas[4],"drop",Obj_agua);
ds_map_add(armas[4],"boomerang",false);


arma_id = -1;
arma_dir = -1;
arma_x = 0;
arma_y = 0;
pode_atirar = true;

scr_mudar_arma(self,4);
