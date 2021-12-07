/// @description Insert description here
move_towards_point(endpoint_x,endpoint_y,3)
if point_distance(x,y,endpoint_x,endpoint_y)<6 {
instance_destroy();	
}
if !collision_rectangle(x, y, x-32, y-32, obj_roomtile, false, false) and !collision_rectangle(x, y, x-32, y-32, obj_pathtile, false, false) {
instance_destroy();
//path_delete(myprojectilepath)
}