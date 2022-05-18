// increment text 
if(textComplete = 1){exit;}
if(keyboard_check_pressed(ord("G")) or keyboard_check_pressed(vk_enter)){
	
	// skip to end
	if(charCount < string_length(text[page])){
		charCount = string_length(text[page])

	}
	else if (page+1 < array_length_1d(text)){
		page += 1
		charCount = 0;
	}
	else{
		alarm[0] = 20;
		//instance_destroy()
		//creator.myTextbox = noone;
	}
}