/// @description Insert description here
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(obj_controller.pad_num, obj_controller.pad_button)) {
room_goto(r_play);	
}