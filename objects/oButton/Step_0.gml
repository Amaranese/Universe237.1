event_inherited()
image_blend = c_white;
if position_meeting(mouse_x, mouse_y,self){

	image_blend = c_blue;
	
	if(mouse_check_button_pressed(mb_left)){
	masterController.exitCountrySelect = 1;
	}
	
	
	
}


if(destroyMe = 1){instance_destroy(self)}