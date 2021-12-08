x = room_width/2;
y = room_height/2;
menuArray = ["Play","Tutorial","Quit"];
menuIndex = 0; //the menu option in the array that we're talking about currently
canmovemenu = true
axisActive = false;
axisToCheck = 0;
axisActive = false;
axisToCheck = 0;
function AxisCheck(axis)
{
	if (gamepad_axis_value(obj_controller.pad_num, axis) > 0.5 || gamepad_axis_value(obj_controller.pad_num, axis) < -0.5)
	{
		axisActive = true;
		axisToCheck = axis;
	}
}
function Up()
{
	AxisCheck(obj_controller.pad_up);
		menuIndex -= 1;

		if (menuIndex < 0)
		{
			menuIndex = 2;
		}
}
function Down()
{
	AxisCheck(obj_controller.pad_down);
		menuIndex += 1;

		if (menuIndex > 2)
		{
			menuIndex = 0;
		}
}