




//Arco
armas[1] = ds_map_create();
ds_map_add(armas[1],"sprite",spr_arco);
ds_map_add(armas[1],"proj",spr_proj);
ds_map_add(armas[1],"proj_spd",5);
ds_map_add(armas[1],"proj_damage",25);
ds_map_add(armas[1],"proj_count",1);
ds_map_add(armas[1],"proj_delay",120);
ds_map_add(armas[1],"auto",true);
ds_map_add(armas[1],"drop",Obj_arco);
ds_map_add(armas[1],"boomerang",false);








arma_id = -1;
arma_dir = -1;
arma_x = 0;
arma_y = 0;
pode_atirar = true;

scr_mudar_arma(self,1);
