pag_limite = array_length(texto) - 1;

var margem = room_width - sprite_get_width(spr_caixa);
draw_set_font(Ft_menu)
draw_sprite(spr_caixa, -1, 0 + margem/2,room_height - 70);
draw_text_ext(0 + margem/2 + 20,room_height - 85,palavara,30,700 - 20);
draw_set_font(-1);


//"Digitando" o meu texto
var tamanho_do_texto = string_length(texto[pag]);
if(letra <= tamanho_do_texto){
	palavara = string_copy(texto[pag],1,letra);
	letra++
	audio_play_sound(boss_falando,0,0)
}