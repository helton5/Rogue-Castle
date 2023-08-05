while dano == true or mostrar_vida == true{
if (life == 4){
draw_sprite(Spr_vida_player,4,1080,650)
draw_sprite(Spr_vida_player,4,1100,650)
draw_sprite(Spr_vida_player,4,1120,650)
draw_sprite(Spr_vida_player,4,1140,650)
}
if (life == 3){
draw_sprite(Spr_vida_player,4,1080,650)
draw_sprite(Spr_vida_player,4,1100,650)
draw_sprite(Spr_vida_player,4,1120,650)
draw_sprite(Spr_vida_player,1,1140,650)
}
if (life == 2){
draw_sprite(Spr_vida_player,4,1080,650)
draw_sprite(Spr_vida_player,4,1100,650)
draw_sprite(Spr_vida_player,1,1120,650)
draw_sprite(Spr_vida_player,1,1140,650)
}
if (life == 1){
draw_sprite(Spr_vida_player,4,1080,650)
draw_sprite(Spr_vida_player,1,1100,650)
draw_sprite(Spr_vida_player,1,1120,650)
draw_sprite(Spr_vida_player,1,1140,650)
}
break;
}