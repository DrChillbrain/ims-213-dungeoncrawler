/// @description Insert description here
if canbehurt = 1 {
	canbehurt = 0
	global.playerhp -=1
	if global.playerhp < 1 {
		image_index = 8;
		canbecontrolled=0;
		global.killed = true; //determines the endscreen image
		global.floorscleared = floorsCleared; //stores this away before the ladybug destroys itself
		alarm_set(1,60);
	}
	alarm_set(0,60);
}