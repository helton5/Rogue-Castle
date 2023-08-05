//@description cutscene_wait
//@arg seconds
function Script2(){
	timer ++;
	if(timer >= argument0 * room_speed){
		timer = 0;
		cena ++;
	}
}