/// @description Insert description here
/*myprojectilepath = path_add();
path_add_point(myprojectilepath,x,y,50);
var firstpoint_x = x+(0.5*(obj_player.x-x))
var firstpoint_y = y+(0.5*(obj_player.y-y))
path_add_point(myprojectilepath, firstpoint_x, firstpoint_y, 50);
path_add_point(myprojectilepath, obj_player.x, obj_player.y, 50);*/
endpoint_x = 8+x+(8*(obj_player.x-x))
endpoint_y = 8+y+(8*(obj_player.y-y))
audio_play_sound(sfx_projectile,3,false);
/*path_add_point(myprojectilepath, endpoint_x, endpoint_y, 50);
path_start(myprojectilepath, 10, path_action_stop, false);*/