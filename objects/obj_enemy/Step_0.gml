/// @description Insert description here
var willenemymove = 0;
if timesmoved < 8 and enemymoving = true {
if movingtargetx > x {
x+=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
movingtargetx = x;
movingtargety = y;
}
}
if movingtargetx > y {
y+=4
timesmoved+=1
if timesmoved = 8 {
timesmoved = 0
enemymoving = false
movingtargetx = x;
movingtargety = y;
}
}
}
if obj_player.moving = true and enemymoving = false {
	enemymoving = true;
	if enemycanmove = 1 {
	willenemymove = irandom_range(0,1);
	}
if willenemymove = 1 { //movement
if place_meeting(x+32,y,obj_pathtile) or place_meeting(x+32,y,obj_roomtile) {
movingtargetx = x+32;
movingtargety = y;
}
else {
movingtargetx = x;
movingtargety = y;
}
testtargetx = x;
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
}
timesmoved = 0;
}
if willenemymove = 0 { //projectile
instance_create_layer(x,y,"interactables",obj_projectile)
alarm_set(0,8);
}	
}