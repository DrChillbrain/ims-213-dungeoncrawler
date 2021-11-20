/// @description Insert description here
global.roomstomake = 7;
FloorGenerator();
controllerConnected = false;
mapping = false;
dpadIndex = 0;
buttonIndex = 0;
axisActive = false;
pad_num = 0;
pad_left = 0;
pad_up = 0;
pad_right = 0;
pad_down = 0;
pad_button = 0;
pad_toCheck = 0;
function StopMapping()
{
	alarm_set(0, 30);
}