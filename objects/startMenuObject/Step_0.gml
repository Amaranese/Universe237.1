/// @description Start Menu
// You can write your code in this editor

// --------------------------------------- FIRST MENU

if(MENUSET=0){


	tabWidth  = sprite_get_width(sMenuOptions)
	newGameIcon = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.4 * room_height, "Instances", holderObject)
	newGameIcon.sprite_index = sMenuOptions;
	newGameIcon.image_speed  = 0;

	continueIcon = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.5 * room_height, "Instances", holderObject)
	continueIcon.sprite_index = sMenuOptions;
	continueIcon.image_speed  = 0;

	optionIcons = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.6 * room_height, "Instances", holderObject)
	optionIcons.sprite_index = sMenuOptions;
	optionIcons.image_speed  = 0;


	// Background 
	backGroundBlue = instance_create_layer(0, 0, "backLayer", holderObject)
	backGroundBlue.sprite_index = sbackSimple;
	backGroundBlue.image_xscale = 10;
	backGroundBlue.image_yscale = 8;

	diamondBack = instance_create_layer(room_width/2 - (0.05 * tabWidth), 0.5 * room_height, "L1", holderObject)
	diamondBack.sprite_index = diamond;
	diamondBack.image_xscale = 4;
	diamondBack.image_yscale = 4;



	diamondtwo = instance_create_layer(room_width/2 - (0.05 * tabWidth), 0.5 * room_height, "L1", holderObject)
	diamondtwo.sprite_index = diamond;
	diamondtwo.image_xscale = 6;
	diamondtwo.image_yscale = 6;





	MENUSET=1;
	}
	else{

		newGameIcon.image_index   = 4;
		continueIcon.image_index  = 5;
		optionIcons.image_index   = 6;


		diamondBack.image_angle  += 0.2;
		diamondtwo.image_angle  -= 0.2;



		// NEW GAME 
		if position_meeting(mouse_x, mouse_y,newGameIcon){
			newGameIcon.image_index  = 0;
			if(mouse_check_button_pressed(mb_left)){
				MENUSET=0;
				room_goto(gameIntroRoom)
				// Kick off an intro timer
				masterController.alarm[0] = 100;
				}
			}
		
		/// CONTINUE 
		if position_meeting(mouse_x, mouse_y,continueIcon){
			continueIcon.image_index  = 1;
			if(mouse_check_button_pressed(mb_left)){
				MENUSET=0;
				room_goto(testRoom)
			}
		}
		
		
		
		
		// OPTIONS
		if position_meeting(mouse_x, mouse_y,optionIcons){optionIcons.image_index  = 2;}


	}

