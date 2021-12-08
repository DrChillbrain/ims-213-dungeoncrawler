/// @description Insert description here
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_button)) {
	image_index = 1;
	alarm_set(0,5); //i just want the text to turn red to indicate u clicked it
}