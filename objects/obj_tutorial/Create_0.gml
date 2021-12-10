tutorialArray = ["press the arrow keys to move","avoid enemy projectiles","run into enemies to defeat them","exit through the stairs"];
tutstep = 0;
nextstep = true;

//makes a tiny space to walk around in
var roomtilex = 168;
var roomtiley = 168;
for(var why=1; why<13; why++){
	for(var ex=1; ex<13; ex++){
		instance_create_layer(roomtilex+32*ex,roomtiley+32*why,"ground",obj_roomtile);
	}
}

//makes player dummy
instance_create_layer(room_width/2,room_height/2,"Instances",obj_player);
global.tutorial = true; //rewrites it bc the player states it as false
audio_stop_all();
audio_play_sound(mus_tutorial,10,true);