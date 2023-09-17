if inicializar == false{
	ScriptsTextos();
	inicializar = true;
	alarm[0] = 1;
}
	if caractere < string_length(texto_grid[# infos.Texto,pagina]){
		if mouse_check_button_pressed(mb_left){
		caractere = string_length(texto_grid[# infos.Texto,pagina])
		}
	}else{
	if pagina < ds_grid_height(texto_grid) - 1{
		if mouse_check_button_pressed(mb_left){
			alarm[0] = 1;
			caractere = 0;
			pagina ++;
		}
	}else{
			if op_num != 0{
				op_draw = true;
			}else{
				if mouse_check_button_pressed(mb_left){
						instance_destroy();
				}
}
	}
	}