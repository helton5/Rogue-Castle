resolution_width = 1200;
resolution_heigth = 720;
resolution_scale = 3;
global.view_width = resolution_width / resolution_scale;
global.view_heigth = resolution_heigth / resolution_scale;
view_target = Ronin_p1;
window_set_size(global.view_width * resolution_scale,global.view_heigth * resolution_scale)
surface_resize(application_surface,global.view_width * resolution_scale,global.view_heigth * resolution_scale)