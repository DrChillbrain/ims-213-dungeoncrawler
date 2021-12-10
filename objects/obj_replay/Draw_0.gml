draw_self();

draw_set_halign(fa_center);
draw_text(x,y+70,"Floors Cleared:" + string(global.floorscleared)); //assigned before the ladybug dies in the alarm
draw_sprite_stretched(spr_loot,0,x-45,y+175,32,32);
draw_text(x+45,y+170,": " + string(global.bugmoney));


if (global.killed == true){
	draw_sprite(spr_GO_defeat,0,x,y-250);
}else{
	draw_sprite(spr_GO_victory,0,x,y-250);
}