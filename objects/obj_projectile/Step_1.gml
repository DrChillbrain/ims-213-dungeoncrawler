/// @description Insert description here
if !place_meeting(x+1,y+1,obj_roomtile) and !place_meeting(x+1,y+1,obj_pathtile) {
instance_destroy();
}
if !place_meeting(x+31,y+31,obj_roomtile) and !place_meeting(x+31,y+31,obj_pathtile) {
instance_destroy();
}
if !place_meeting(x+1,y+31,obj_roomtile) and !place_meeting(x+1,y+31,obj_pathtile) {
instance_destroy();
}
if !place_meeting(x+31,y+1,obj_roomtile) and !place_meeting(x+31,y+1,obj_pathtile) {
instance_destroy();
}