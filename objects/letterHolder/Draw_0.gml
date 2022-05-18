/// @description Write the Name or input to screen
//increment = 30 * namePosition;
//draw_text(x + increment,y,myValue)


for(var i = 0; i < array_length(myWord); i++;){
	
	
	// If the last letter, skip first 20 frames, display another 20 then repeat
	if(i = namePosition){
		letterFlashTimer +=1
		if(letterFlashTimer < 20){draw_text(x + (i * 30),y,"")}
		if(letterFlashTimer > 20){draw_text(x + (i * 30),y,myWord[i])}
		if(letterFlashTimer > 40){letterFlashTimer = 0}
	}
	else{draw_text(x + (i * 30),y,myWord[i])}
}






//draw_text(x, y + 100, myWord)
//draw_text(x, y + 200, myWordPosition)