view_xport[0] = irandom_range(-treme,treme);
view_yport[0] = irandom_range(-treme,treme);

treme = lerp(treme,0,.05);
if(treme <= 1) instance_destroy();