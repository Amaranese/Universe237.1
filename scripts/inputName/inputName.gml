// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inputName(phase,letterPosition,namePosition,chosenName,x,y){

	// Nameposition cycles left/right
	// Letter position up/down
	
	if(phase=="inputName"){
		inputCharacters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",""]
		userName = instance_create_layer(x,y,"Instances",letterHolder)
		fullName = ""
		phase="userInputName"
	}
	
	if(phase=="userInputName"){
	
		up    = keyboard_check_pressed(vk_up)
		down  = keyboard_check_pressed(vk_down)
		right = keyboard_check_pressed(vk_right)
		left  = keyboard_check_pressed(vk_left)
		enter = keyboard_check_pressed(vk_enter)
	
	
		// Increment/Decrement letter position 
		if(up){letterPosition++}
		if(down){letterPosition--}
		if(letterPosition > array_length(inputCharacters) - 1){letterPosition = 0}
		if(letterPosition < 0){letterPosition =array_length(inputCharacters) - 1}
	
		// MOVE RIGHT/LEFT
		if(right){namePosition +=1; letterPosition = userName.myWordPosition[namePosition]}
		if(left){namePosition -=1; letterPosition = userName.myWordPosition[namePosition]}
		if(namePosition > array_length(userName.myWord) - 1){namePosition = array_length(userName.myWord) - 1}
		if(namePosition < 0){namePosition = 0}
	
		userName.myValue                        = inputCharacters[letterPosition] // Object current letter
		userName.namePosition                   = namePosition                    // objects current letter value left/right
		userName.myWord[namePosition]           = inputCharacters[letterPosition] // object stores letters
		userName.myWordPosition[namePosition]   = letterPosition
		
		if(enter){phase="displayName"; chosenName = userName.myWord; instance_destroy(userName) }
	
	
	}
	
	if(phase="displayName"){
		// Parse Name
		for(i=0; i < array_length(chosenName)-1; i++){
			var curLetter = string(chosenName[i])
			fullName += curLetter
		}
		chosenName = fullName
		
		phase = "nameComplete"
	}
	
	return_Array = [phase,letterPosition,namePosition,chosenName]
	return return_Array;
	
}