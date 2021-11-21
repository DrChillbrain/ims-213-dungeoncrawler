/// @description Insert description here
if (!obj_controller.mapping)
{
	if (gamepad_axis_value(obj_controller.pad_num, axisToCheck) < 0.5 && gamepad_axis_value(obj_controller.pad_num, axisToCheck) > -0.5)
	{
		axisActive = false;
	}
	
	if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_left) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_left) < -0.5)
	{
		if (!axisActive)
		{
			Left();
		}
	}

	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_up) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_up) < -0.5)
	{
		if (!axisActive)
		{
			Up();
		}
	}

	if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_right) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_right) > 0.5)
	{
		if (!axisActive)
		{
			Right();
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


if (moving == true)
{
	
	if (moveCounter < 8)
	{
		x += xmovespeed;
		y += ymovespeed;
		moveCounter += 1;
	}
	
	else
	{
		moving = false;
		xmovespeed = 0;
		ymovespeed = 0;
		moveCounter = 0;
	}
}
if place_meeting (x,y,obj_stairs) and moving = false and canmove = true {
canmove = false;
instance_create_layer(0,0,"fadeout",obj_fadetoblack);
}