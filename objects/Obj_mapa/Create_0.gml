norte = 1;
oeste = 2;
leste = 4;
sul = 8;
var layer_id = layer_tilemap_get_id("Wall_tile");
cell_size = 32;
grid_width = room_width div cell_size;
grid_height = room_height div cell_size;
grid = ds_grid_create(grid_width,grid_height);
ds_grid_clear(grid,0);
mp_grid = mp_grid_create(0,0,grid_width,grid_height,cell_size,cell_size);

randomize();
var xx = grid_width div 2;
var yy = grid_height div 2;
var dir = irandom(3);
var room_count = 160;
var room_size = 1;

for(var i= 0;i<room_count;i++){
	
	ds_grid_set_region(grid,xx - room_size,yy-room_size,xx + room_size,yy + room_size,1);
	var path_distance = room_size * 5;
	
	var path_distance = 8;
	
	while(path_distance > 0){
		
		grid[# xx,yy] = 1;
		
		xx+=lengthdir_x(1,dir * 90);
		yy+=lengthdir_y(1,dir * 90);
		xx = clamp(xx,2,grid_width -3);
		yy = clamp(yy,2,grid_height -3);
		path_distance --;
	}
	if(path_distance == 0){
		//Sala
		ds_grid_set_region(grid,xx - room_size,yy-room_size,xx + room_size,yy + room_size,1);
		dir = irandom(3)
	}
}
var chances = 1;
var inimigo_max = 200;
var saidas_max = 12;


for(var xx = 0;xx < grid_width;xx++){
	for(var yy = 0;yy < grid_height;yy++){
		if(grid[# xx,yy] == 0){
			var norte_t = grid[# xx,yy -1] == 0;
			var oeste_t = grid[# xx-1,yy] == 0;
			var leste_t = grid[# xx+1,yy] == 0;
			var sul_t= grid[# xx,yy+1] == 0;
			var index = norte_t * norte + oeste_t * oeste + leste_t * leste + sul_t * sul + 1;
			tilemap_set(layer_id,index,xx,yy);
		}else if(grid[# xx,yy] == 1){
						tilemap_set(layer_id,17,xx,yy);
		}
	}
}
for(var xx = 0;xx < grid_width;xx++){
	for(var yy = 0;yy < grid_height;yy++){
		if(grid[# xx,yy] == 0){
			//posso criar parede
			instance_create_layer(xx * cell_size,yy * cell_size,"instances",parede);
		}
		if(grid[# xx,yy] == 1){
			var x1 = xx *  + cell_size + cell_size /2;
			var y1 = yy * cell_size + cell_size /2;
			if(!instance_exists(Ronin_p1)){
			   instance_create_layer(x1,y1,"instances",Ronin_p1);
		}//posso criar inimigos
		if(inimigo_max > 0){
			var chances = 100;
			var distancia = 120;
			if(irandom(chances) == chances and point_distance(x1,y1,Ronin_p1.x,Ronin_p1.y)> distancia){
			instance_create_layer(x1,y1,"instances",inimigo_1);
			inimigo_max -= 1;
			}
		}
			if(irandom(chances) == chances and point_distance(x1,y1,Ronin_p1.x,Ronin_p1.y)>= 200){
			instance_create_layer(x1,y1,"instances",inimigo_2);
			inimigo_max -= 1;
			}
			}
		}
	 }
mp_grid_add_instances(grid,parede,false);