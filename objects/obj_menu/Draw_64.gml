
draw_set_font(gameFont);
draw_set_halign(fa_center);

//draws each option, changes the color if it matches the index option
for(var i=0;i<array_length(menuArray);i++){ 
	
	var color = c_white;
	if(menuIndex == i){
		color = c_red;
	}
	draw_text_color(x,y+100*i,string(menuArray[i]),color,color,color,color,1);
	
}