
//Faca
armas[4] = ds_map_create();
ds_map_add(armas[4],"sprite",Spr_faca);
ds_map_add(armas[4],"proj",-1);
ds_map_add(armas[4],"proj_spd",0);
ds_map_add(armas[4],"proj_damage",0);
ds_map_add(armas[4],"proj_Count",0);
ds_map_add(armas[4],"proj_delay",0);
ds_map_add(armas[4],"auto",false);
ds_map_add(armas[4],"drop",0);
ds_map_add(armas[4],"boomerang",false);


arma_id = -1;
arma_dir = -1;
arma_x = 0;
arma_y = 0;
pode_atirar = true;

scr_mudar_arma(self,4);
