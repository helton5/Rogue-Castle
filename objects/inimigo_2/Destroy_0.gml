instance_create_layer(x,y,"Instances",Obj_feixe)
audio_play_sound(inimigo_sfx,1,false)
chave = irandom_range(1,3)
if(chave == 3){
instance_create_layer(x,y,"Instances",Obj_chave)
}