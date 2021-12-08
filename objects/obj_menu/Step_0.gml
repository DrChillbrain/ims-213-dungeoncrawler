//selection movement
if (!obj_controller.mapping)
{
	if (gamepad_axis_value(obj_controller.pad_num, axisToCheck) < 0.5 && gamepad_axis_value(obj_controller.pad_num, axisToCheck) > -0.5)
	{
		axisActive = false;
	}
	
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_button))
	{
	audio_play_sound(sfx_select,1,false);	
	switch (menuIndex){

		case 0:
			room_goto(r_play);
		break;
		
		case 1:
			room_goto(r_tutorial);
		break;
		
		case 2:
			game_end();
		break;

	}
	}

	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_up) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_up) < -0.5)
	{
		if (!axisActive)
		{
			Up();
		}
	}

	if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_down) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_down) > 0.5)
	{
		if (!axisActive)
		{
			Down();
		}
	}
}