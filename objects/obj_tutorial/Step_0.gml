if(nextstep==true){
	if (obj_player.moveCounter==1){
		tutstep++;
		alarm_set(0,60);
		nextstep = false;
	}
}

if(tutstep == 2){
	if(!instance_exists(obj_enemy)){
		tutstep++;
		instance_create_layer(200,200,"Instances",obj_stairs);
	}
}