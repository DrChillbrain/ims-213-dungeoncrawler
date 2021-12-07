/// @description Insert description here
var willenemymove = 0;
if timesmoved < 8 and enemymoving = true {
if place_meeting(movingtargetx,movingtargety,obj_pathtile) or place_meeting(movingtargetx,movingtargety,obj_roomtile) {
if movingtargetx > x {
x+=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
}
}
if movingtargety > y {
y+=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
}
}
if movingtargety < y {
y-=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
}
}
if movingtargetx < x {
x-=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
}
}
}
}
if obj_player.moving = true and enemymoving = false {
	enemymoving = true;
	if enemycanmove = 1 {
	if point_distance(x,y,obj_player.x,obj_player.y) < 127 {
	willenemymove = irandom_range(0,1);
	}
	else {
	willenemymove = 1;
	}
	}
if willenemymove = 1 { //movement
do {
var directiontomove = irandom_range(0,3);
if directiontomove = 0 {
movingtargetx = x+32;
movingtargety = y;
}
if directiontomove = 1 {
movingtargetx = x;
movingtargety = y+32;
}
if directiontomove = 2 {
movingtargetx = x-32;
movingtargety = y;
}
if directiontomove = 3 {
movingtargetx = x;
movingtargety = y-32;
}
}
until place_meeting(movingtargetx,movingtargety,obj_pathtile) or place_meeting(movingtargetx,movingtargety,obj_roomtile)
/*testtargetx = x;
testtargety = y+32;
var wannareplace = irandom_range(0,3)
if ((point_distance(obj_player.x,obj_player.y,movingtargetx,movingtargety) < point_distance(obj_player.x,obj_player.y,testtargetx,testtargety)) or !wannareplace=0)
{
if place_meeting(testtargetx,testtargety,obj_pathtile) or place_meeting(testtargetx,testtargety,obj_roomtile)
{
movingtargetx = testtargetx;
movingtargety = testtargety;
}
}
testtargetx = x;
testtargety = y-32;
var wannareplace = irandom_range(0,3)
if ((point_distance(obj_player.x,obj_player.y,movingtargetx,movingtargety) < point_distance(obj_player.x,obj_player.y,testtargetx,testtargety)) or !wannareplace=0)
{
if place_meeting(testtargetx,testtargety,obj_pathtile) or place_meeting(testtargetx,testtargety,obj_roomtile)
{
movingtargetx = testtargetx;
movingtargety = testtargety;
}
}
testtargetx = x-32;
testtargety = y;
var wannareplace = irandom_range(0,3)
if ((point_distance(obj_player.x,obj_player.y,movingtargetx,movingtargety) < point_distance(obj_player.x,obj_player.y,testtargetx,testtargety)) or !wannareplace=0)
{
if place_meeting(testtargetx,testtargety,obj_pathtile) or place_meeting(testtargetx,testtargety,obj_roomtile)
{
movingtargetx = testtargetx;
movingtargety = testtargety;
}
}*/
timesmoved = 0;
}
if willenemymove = 0 { //projectile if in range
if point_distance(x,y,obj_player.x,obj_player.y) < 127 and point_distance(x,y,obj_player.x,obj_player.y) > 31 {
instance_create_layer(x,y,"projectiles",obj_projectile)
alarm_set(0,8);
}
}	
}