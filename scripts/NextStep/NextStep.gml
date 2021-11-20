// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NextStep()
{
	switch(obj_controller.dpadIndex)
	{
		case 5: //Switch to button
			obj_controller.pad_button = obj_controller.pad_toCheck;
			obj_controller.buttonIndex = 2;
			obj_controller.StopMapping();
			break;
		
		case 4: //Left Button
			obj_controller.pad_left = obj_controller.pad_toCheck;
			obj_controller.dpadIndex = 5;
			obj_controller.buttonIndex = 1;
			break;
		
		case 3: //Down Button
			obj_controller.pad_down = obj_controller.pad_toCheck;
			obj_controller.dpadIndex = 4;
			break;
		
		case 2: //Right Button
			obj_controller.pad_right = obj_controller.pad_toCheck;
			obj_controller.dpadIndex = 3;
			break;
		
		case 1: //Up Button
			obj_controller.pad_up = obj_controller.pad_toCheck;
			obj_controller.dpadIndex = 2;
			break;
			
		case 0: //Shouldn't happen
			show_debug_message("Something went wrong");
			break;
			
		default:
			show_debug_message("Something went wrong");
			break;
	}
}