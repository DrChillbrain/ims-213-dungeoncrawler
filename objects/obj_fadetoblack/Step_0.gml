/// @description Insert description here
if fading = "in" {
image_alpha += 0.1
if image_alpha = 1 {
FloorGenerator();
fading = "out"
}
}
if fading = "out" {
image_alpha -= 0.1
if image_alpha = 0 {
instance_destroy();
obj_player.canmove = true;
}
}