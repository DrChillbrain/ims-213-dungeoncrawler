function FloorGenerator(){
instance_destroy (obj_pathtile);
instance_destroy (obj_roomtile);
instance_destroy (obj_stairs);
instance_destroy (obj_roomentry);
//Clear out the previous floor.
global.roomtiles = [];
global.allentries = [];
randomize();
for (roomsmade = 0; roomsmade < global.roomstomake; roomsmade +=1) {
roomx = (irandom_range(0,17)*32)+64
roomy = (irandom_range(0,17)*32)+64
roomsizex = (irandom_range(3,5));
roomsizey = (irandom_range(3,5));
for (var xspacesmade = 0; xspacesmade < roomsizex; xspacesmade+=1) {
instance_create_layer(roomx,roomy,"ground",obj_roomtile)
temproomy = roomy
for (var yspacesmade = 0; yspacesmade < roomsizey; yspacesmade+= 1) {
instance_create_layer(roomx,temproomy,"ground",obj_roomtile)
temproomy+=32;
}
roomx+=32;
}
roomy = temproomy
var roomedgeforentry = irandom_range(0,3);
if roomedgeforentry = 0 {
var createdroomentry = instance_create_layer(((roomx - (irandom_range(1,roomsizex-1)*32))),(roomy-(roomsizey*32)),"controllerlayer",obj_roomentry)
}
if roomedgeforentry = 1 {
var createdroomentry = instance_create_layer(((roomx - (irandom_range(1,roomsizex-1)*32))),(roomy),"controllerlayer",obj_roomentry)	
}
if roomedgeforentry = 2 {
var createdroomentry = instance_create_layer((roomx-(roomsizex*32)),((roomy - (irandom_range(1,roomsizey-1)*32))),"controllerlayer",obj_roomentry)	
}
if roomedgeforentry = 3 {
var createdroomentry = instance_create_layer((roomx),((roomy - (irandom_range(1,roomsizey-1)*32))),"controllerlayer",obj_roomentry)	
}
}
with obj_roomentry {
roomx = x;
roomy = y;
lastplacedx = x;
lastplacedy = y;
array_push (global.allentries, id);
for (var roomsconnected = 0; roomsconnected < (array_length(global.allentries)); roomsconnected+=1) {
if global.allentries[roomsconnected] != myID {
do {
var checkroomx = lastplacedx+32;
var checkroomy = lastplacedy;
if point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,checkroomx,checkroomy) < point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,roomx,roomy)
{
roomx = checkroomx;
roomy = checkroomy;
}
var checkroomx = lastplacedx;
var checkroomy = lastplacedy+32;
if point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,checkroomx,checkroomy) < point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,roomx,roomy)
{
roomx = checkroomx;
roomy = checkroomy;
}
var checkroomx = lastplacedx-32;
var checkroomy = lastplacedy;
if point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,checkroomx,checkroomy) < point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,roomx,roomy)
{
roomx = checkroomx;
roomy = checkroomy;
}
var checkroomx = lastplacedx;
var checkroomy = lastplacedy-32;
if point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,checkroomx,checkroomy) < point_distance(global.allentries[roomsconnected].x,global.allentries[roomsconnected].y,roomx,roomy)
{
roomx = checkroomx;
roomy = checkroomy;
}
instance_create_layer(roomx,roomy,"ground",obj_pathtile)
lastplacedx = roomx;
lastplacedy = roomy;
}
until place_meeting (roomx,roomy,obj_roomentry)
}
}
instance_create_layer(x,y,"ground",obj_roomtile)
}
instance_destroy(obj_roomentry);
with obj_roomtile {
if y>702 or y<33 or x>702 or x<33 {
instance_destroy();
}
array_push(global.roomtiles,id);	
}
with obj_pathtile {
if y>702 or y<33 or x>702 or x<33 {
instance_destroy();
}
array_push(global.roomtiles,id);	
}
stairtarget = irandom_range (0, (array_length(global.roomtiles)));
var stairspawn_x = global.roomtiles[stairtarget].x
var stairspawn_y = global.roomtiles[stairtarget].y
if !place_meeting(stairspawn_x,stairspawn_y,obj_pathtile) and !place_meeting(stairspawn_x,stairspawn_y,obj_roomtile) {
instance_create_layer(stairspawn_x,stairspawn_y,"ground",obj_roomtile)
instance_create_layer(stairspawn_x+32,stairspawn_y,"ground",obj_roomtile)
instance_create_layer(stairspawn_x,stairspawn_y+32,"ground",obj_roomtile)
instance_create_layer(stairspawn_x+32,stairspawn_y+32,"ground",obj_roomtile)
instance_create_layer(stairspawn_x-32,stairspawn_y,"ground",obj_roomtile)
instance_create_layer(stairspawn_x,stairspawn_y-32,"ground",obj_roomtile)
instance_create_layer(stairspawn_x-32,stairspawn_y-32,"ground",obj_roomtile)
instance_create_layer(stairspawn_x-32,stairspawn_y+32,"ground",obj_roomtile)
instance_create_layer(stairspawn_x+32,stairspawn_y-32,"ground",obj_roomtile)
}
instance_create_layer(stairspawn_x, stairspawn_y, "interactables",obj_stairs);
do {
playertarget = irandom_range (0, (array_length(global.roomtiles)));
}
until playertarget != stairtarget;
var playerspawn_x = global.roomtiles[playertarget].x
var playerspawn_y = global.roomtiles[playertarget].y
if !place_meeting(playerspawn_x,playerspawn_y,obj_pathtile) and !place_meeting(playerspawn_x,playerspawn_y,obj_roomtile) {
instance_create_layer(playerspawn_x,playerspawn_y,"ground",obj_roomtile)
instance_create_layer(playerspawn_x+32,playerspawn_y,"ground",obj_roomtile)
instance_create_layer(playerspawn_x,playerspawn_y+32,"ground",obj_roomtile)
instance_create_layer(playerspawn_x+32,playerspawn_y+32,"ground",obj_roomtile)
instance_create_layer(playerspawn_x-32,playerspawn_y,"ground",obj_roomtile)
instance_create_layer(playerspawn_x,playerspawn_y-32,"ground",obj_roomtile)
instance_create_layer(playerspawn_x-32,playerspawn_y-32,"ground",obj_roomtile)
instance_create_layer(playerspawn_x-32,playerspawn_y+32,"ground",obj_roomtile)
instance_create_layer(playerspawn_x+32,playerspawn_y-32,"ground",obj_roomtile)
}
obj_player.x = playerspawn_x;
obj_player.y = playerspawn_y;
array_delete(global.roomtiles,0,(array_length(global.roomtiles)));
array_delete(global.allentries,0,(array_length(global.allentries)));
}