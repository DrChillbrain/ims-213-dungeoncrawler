//floor level, increases inside the floor generator script on like the first line of code
draw_text(100,20,"Floor:" + string(floorsCleared));

for (var i=0; i<global.playerhp; i+=1) {
draw_sprite(spr_heart,image_index,40+(20*i),70);
}