/// @description Insert description here
if (mapping)
{	
	for (var i = 0; i < gamepad_button_count(pad_num); i++)
	{	
		if (gamepad_button_check_pressed(pad_num, i))
		{
			pad_toCheck = i;
			NextStep();
		}
		
		if ((gamepad_axis_value(pad_num, pad_toCheck) > -0.5 && gamepad_axis_value(pad_num, pad_toCheck) < 0.5))
		{
			axisActive = false;
		}
		
		if ((gamepad_axis_value(pad_num, i) > 0.5 || gamepad_axis_value(pad_num, i) < -0.5) && axisActive == false)
		{
			pad_toCheck = i;
			axisActive = true;
			NextStep();
		}
	}
}