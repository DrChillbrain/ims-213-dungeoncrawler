//selection movement
if (keyboard_check(vk_down)){
	menuIndex++;
}

if (keyboard_check(vk_up)){
	menuIndex--;
}

//loops back to the first option if you go down too far, goes to bottom if you go 
//up too far
if (menuIndex > array_length(menuArray)){
	menuIndex = 0;
}
if (menuIndex < 0){
	menuIndex = array_length(menuArray);
}

//for whichever they chose, it leads to different things
if (keyboard_check(vk_enter)){
	switch (menuIndex){

		case 0:
			room_goto(r_play);
		break;
		
		case 1:
			game_end();
		break;

	}
}