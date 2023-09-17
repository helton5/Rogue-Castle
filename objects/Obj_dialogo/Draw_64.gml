if inicializar == true{
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0
	var _yy = _guia - 200;
	var _c = c_black;
	var _sprite = texto_grid[# infos.Retrato,pagina]
	var _texto = string_copy(texto_grid[# infos.Texto, pagina],0,caractere);
	draw_set_font(Ft_menu);
	if texto_grid[# infos.Texto, pagina] == 0{
		draw_rectangle_color(_xx + 200,_yy,_guil,_guia,_c,_c,_c,_c,false);
		draw_text(_xx + 16,_yy -32,texto_grid[# infos.Nome, pagina])
		draw_text_ext(_xx + 232,_yy + 32,_texto,32,_guil - 264);
		draw_sprite_ext(_sprite,0,100,600,9,9,0,c_white,1);
	}else{
			draw_rectangle_color(_xx,_yy,_guil - 223,_guia - 48,c_white,c_white,c_white,c_white,true);
			draw_rectangle_color(_xx,_yy,_guil - 225,_guia - 50,_c,_c,_c,_c,false);
			draw_text(_xx + 16,_yy -32,texto_grid[# infos.Nome, pagina])
			draw_text_ext(_xx + 32,_yy + 32, _texto,32,_guil - 264);
				draw_sprite_ext(_sprite,0,_guil - 100,600,-9,9,0,c_white,1);
	}
	if op_draw == true{
		var _opx = _xx + 32
		var _opy = _yy - 120
		var _opsep = 48;
		var _opborda = 6
		op_selecionada += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
		op_selecionada = clamp(op_selecionada,0,op_num - 1);
		for (var i =0;i < op_num;i ++){
			var _stringw = string_width(op[i])
			draw_sprite_ext(Sprite71,0,_opx, _opy - (_opsep * i),(_stringw + _opborda * 2)/16,1,0,c_white,1)
			draw_text(_opx, _opy - (_opsep * i),op[i]);
			if op_selecionada == i{
				draw_sprite(Sprite72,0,_xx + 8 + _opborda, _opy - (_opsep * i) + 8);
			}
		}
		if keyboard_check_pressed(ord("F")){
				var _dialogo = instance_create_layer(x,y,"Instances",Obj_dialogo);
				_dialogo.npc_nome = op_resposta[op_selecionada];
				instance_destroy();
		}
	}
}