if (!obj_controller.mapping and canbecontrolled = 1)
{
	if (gamepad_axis_value(obj_controller.pad_num, axisToCheck) < 0.5 && gamepad_axis_value(obj_controller.pad_num, axisToCheck) > -0.5)
	{
		axisActive = false;
	}
	
	if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_left) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_left) < -0.5)
	{
		LBLeft = true;
		LBRight = false;
		LBUp = false;
		LBDown = false;
		if place_meeting((x-32),y,obj_pathtile) or place_meeting((x-32),y,obj_roomtile) {
			if (!axisActive)
			{
				Left();
			}
		}
	}

	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_up) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_up) < -0.5)
	{
		LBLeft = false;
		LBRight = false;
		LBUp = true;
		LBDown = false;
		if place_meeting(x,(y-32),obj_pathtile) or place_meeting(x,(y-32),obj_roomtile) {
			if (!axisActive)
			{
				Up();
			}
		}
	}

	if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_right) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_right) > 0.5)
	{
		LBLeft = false;
		LBRight = true;
		LBUp = false;
		LBDown = false;
		if place_meeting(x+32,y,obj_pathtile) or place_meeting(x+32,y,obj_roomtile) {
			if (!axisActive)
			{
				Right();
			}
		}
	}

	if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_down) || gamepad_axis_value(obj_controller.pad_num, obj_controller.pad_down) > 0.5)
	{
		LBLeft = false;
		LBRight = false;
		LBUp = false;
		LBDown = true;
		if place_meeting(x,y+32,obj_pathtile) or place_meeting(x,y+32,obj_roomtile) {
			if (!axisActive)
			{
				Down();
			}
		}
	}
}


if (moving == true and canbecontrolled = 1)
{
	
	if (moveCounter < 8)
	{
		x += xmovespeed;
		y += ymovespeed;
		moveCounter += 1;
		if(LBLeft == true){
			image_index = 5;
		}
		if(LBRight == true){
			image_index = 6;
		}
		if(LBUp == true){
			image_index = 3;
		}
		if(LBDown == true){
			image_index = 1;
		}
	}
	
	else
	{
		moving = false;
		xmovespeed = 0;
		ymovespeed = 0;
		moveCounter = 0;
		if(LBLeft == true){
			image_index = 4;
		}
		if(LBRight == true){
			image_index = 7;
		}
		if(LBUp == true){
			image_index = 2;
		}
		if(LBDown == true){
			image_index = 0;
		}
	}
}
if place_meeting (x,y,obj_stairs) and moving = false and canmove = true and canbecontrolled = 1 {
canmove = false;
instance_create_layer(0,0,"fadeout",obj_fadetoblack);
}