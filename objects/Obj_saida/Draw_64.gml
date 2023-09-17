draw_set_font(Ft_chave);
draw_set_color(c_white);
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
var x1 = 1000;
var y1 = 100;
while place_meeting(x,y,Ronin_p1) and Ronin_p1.chave == false{
	draw_text(x1,y1,"Requer chave")
	break;
}	