var _gl = display_get_gui_width();
if(instance_exists(Obj_Boss)){
	var _sprw = sprite_get_width(Vida_boss) * resolution_scale;
	draw_sprite_ext(Vida_boss,0,_gl/2 - _sprw/2, 100, resolution_scale, resolution_scale,0,c_white,1);
	draw_sprite_ext(Vida_boss2,0,_gl/2 - _sprw/2 + 6,100,Obj_Boss.life/Obj_Boss.vida_max * resolution_scale,resolution_scale,0,c_white,1);
}