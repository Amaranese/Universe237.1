/// @description Insert description here
spriteHeight = sprite_get_height(chosenSprite)
spriteWidth  = sprite_get_width(chosenSprite)



// left
draw_sprite(chosenSprite,0,x,y)


if(mouse_x >= x && mouse_y >= y && mouse_x < x + spriteWidth && mouse_y < y + spriteHeight){

	draw_sprite_ext(chosenSprite,0,x,y,1,1,0,blendColor,1)
	buttonClicked = 0;
	if(mouse_check_button_pressed(mb_left)){
		buttonClicked = 1;
	}
	
	
}

// text at end to go on top of button
draw_set_font(NokiaFont)	
draw_text(x + textXStart * spriteWidth,y + textYStart * spriteHeight,buttonText)

if(destroyMe = 1){instance_destroy(self)}