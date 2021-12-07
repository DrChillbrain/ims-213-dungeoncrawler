/// @description iframe flashing
if canbecontrolled = 1 {
if canbehurt = 1 {
image_alpha = 1;	
}
if canbehurt = 0 {
var tempalpha = image_alpha
if tempalpha = 1 {
image_alpha = 0
}
if tempalpha = 0 {
image_alpha = 1	
}
}
}
else {
image_alpha = 1;	
}