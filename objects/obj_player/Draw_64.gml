//floor level, increases inside the floor generator script on like the first line of code
draw_text(100,20,"Floor:" + string(floorsCleared));

for (var i=0; i<global.playerhp; i+=1) { //draws the hearts
draw_sprite(spr_heart,image_index,40+(20*i),70);
}

//draw_sprite(spr_loot,0,50,100);
draw_sprite_stretched(spr_loot,0,30,105,35,35);
draw_text(100,100,": "+ string(bugmoney));