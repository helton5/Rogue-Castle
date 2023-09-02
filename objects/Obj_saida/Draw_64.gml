draw_set_font(Ft_menu);
draw_set_color(c_white);
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
var x1 = gui_largura /2;
var y1 = gui_altura /2;
while place_meeting(x,y,Ronin_p1) and global.morte <= 4{
	draw_text(x1,y1,"Requer chave")
	break;
}
	