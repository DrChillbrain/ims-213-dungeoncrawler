draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_color(c_black);

draw_text(room_width/2,room_width*5/8,tutorialArray[tutstep]);
if(tutstep == 0){
	draw_text(room_width/2,room_width*6/8,"enemies only move when you do,");
	draw_text(room_width/2,room_width*7/8,"but projectiles always move");
}

if(tutstep == 3){
	draw_text(room_width/2,room_width*6/8,"void in your heart");
}