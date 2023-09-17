var mouse_click = mouse_check_button_pressed(mb_left);
	if(mouse_click){
		if (meu_texto == noone)
		{
			global.Pause = true;
			meu_texto = instance_create_layer(704,300,"Instances",Obj_texto);
			meu_texto.texto = texto;
			image_alpha = 1;
	}else{
		if(meu_texto.pag >= meu_texto.pag_limite){
			instance_destroy(meu_texto);
			meu_texto = noone;
			global.contador = true
}else{
		meu_texto.pag ++;
		meu_texto.letra = 0;
}
	}
}else{
		if(mouse_click && meu_texto != noone)
		{
			instance_destroy(meu_texto);
			meu_texto = noone;
		}
}

