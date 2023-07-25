if (life >= 4){
draw_sprite(Spr_vida_player,4,550,310)
draw_sprite(Spr_vida_player,4,570,310)
draw_sprite(Spr_vida_player,4,590,310)
draw_sprite(Spr_vida_player,4,610,310)
}
if (life <= 3){
draw_sprite(Spr_vida_player,4,550,310)
draw_sprite(Spr_vida_player,4,570,310)
draw_sprite(Spr_vida_player,4,590,310)
draw_sprite(Spr_vida_player,1,610,310)
}
if (life <= 2){
draw_sprite(Spr_vida_player,4,550,310)
draw_sprite(Spr_vida_player,4,570,310)
draw_sprite(Spr_vida_player,1,590,310)
draw_sprite(Spr_vida_player,1,610,310)
}
if (life <= 1){
draw_sprite(Spr_vida_player,4,550,310)
draw_sprite(Spr_vida_player,1,570,310)
draw_sprite(Spr_vida_player,1,590,310)
draw_sprite(Spr_vida_player,1,610,310)
}