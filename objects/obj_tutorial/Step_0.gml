if(nextstep==true){
	if (obj_player.moveCounter==1){
		tutstep++;
		alarm_set(0,60);
		nextstep = false;
	}
}

if(tutstep == 2){ //on step 2 they have to defeat the enemy
	if(!instance_exists(obj_enemy)){ //when they do it moves on
		tutstep++;
		instance_create_layer(400,400,"Instances",obj_loot);
	}
}

if(tutstep == 3){//they look for the loot
	if(!instance_exists(obj_loot)){//when they get it, they can leave
		tutstep++;
		instance_create_layer(200,200,"Instances",obj_stairs);
	}
}