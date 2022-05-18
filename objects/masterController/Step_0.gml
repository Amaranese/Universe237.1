
// --------------------------------------- START MENU
if(room = startMenu){

if(startMenuState = "incomplete"){
	startMenuState = instance_create_layer(x,y,"instances",startMenuObject); 
	startMenuState = "complete"}

}

// --------------------------------------- INTRO FMV
if(room = gameIntroRoom){

if(proceed =0){exit}
proceed=1; 
if(introScene = "incomplete"){
	introScene = instance_create_layer(x,y,"instances",sceneIntro); 
	introScene = "complete"}
	
}



// --------------------------------------- SELECT COUNTRY

if(room = selectNationRoom){
	
	if(MENUSET=0){
	
		HeaderText     = instance_create_layer(100,100, "Instances", writeText) 
		HeaderText.textToWrite = "Select Your Country" 
	
	
		backGroundBlue = instance_create_layer(0, 0, "L1", holderObject)
		backGroundBlue.sprite_index = blueBox;
		backGroundBlue.image_xscale = 1.5;
		backGroundBlue.image_yscale = 1.5;

		createNationsButtons()
	
		displayText     = instance_create_layer(room_width/3, 0.85 * room_height, "Instances", writeText) 
	
	
		MENUSET=1;
	}

	if(selectedCountry > -1){
	displayText.textToWrite = "Country Selected: " + string(countryCode[selectedCountry][0]) 
	}



	if(exitCountrySelect =1){
	MENUSET = 0;
	oButton.destroyMe = 1;
	room_goto(gameIntroRoom)

	}




}


if(room = testRoom){
	if(testMenuState  = "inactive"){
		testMenuState = instance_create_layer(x,y,"instances",testZone); 
		testMenuState = "active"}

}






