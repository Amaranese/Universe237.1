/// @description Game intro FMV, user name is established at the end

	
// ---------------FIRST DIALOGUE 

if(MENUSET=0){

	dialogue[0] = "**rustle**....**clunk** ...oh not again!";
	dialogue[1] = ".....Wait......"
	dialogue[2] = "..who the hell are you? How did you get in here? ... "
	// CREATE TEXTBOX 
	textBox = instance_create_layer(room_width/10, 0.2 * room_height,"instances", oTextBox); 
	textBox.text       = dialogue;
	textBox.creator    = self;											 
	textBox.name       = "Arbeiter";	
	
	MENUSET=1;

}
	
if(phase="start"  and textBox.textComplete = 1){phase="inputNameMessage" instance_destroy(textBox); dialogue = 0;}
	
	
// --------------GET NAME ---- 
	
	
// DIALOGUE BOX WITH INSTRUCTIONS
if(phase="inputNameMessage"){
	
	textToScreen(room_width/3,0.3 * room_height,"Instances","Enter Name","create")
	textToScreen(room_width/5,0.7 * room_height,"Instances","Use Arrow Keys to input name","create")
	myBox = instance_create_layer(room_width/10, 0.2 * room_height,"I2",holderObject);
	myBox.sprite_index = dialogueBox 
	phase="inputName"
	}
	
// GET USER NAME
if(nameAquired = "no"){
	nameScript     = inputName(phase,letterPosition,namePosition,chosenName,300,300)
	phase          = nameScript[0]
	letterPosition = nameScript[1]
	namePosition   = nameScript[2]
	chosenName     = nameScript[3]
}
	
	
if(phase=="nameComplete"){
nameAquired = "yes"
masterController.userName = chosenName;
textToScreen(room_width/3,0.3 * room_height,layer,"Enter Name","destroy")
instance_destroy(myBox)
phase="dialogue2"
	 
}
	
	
	
	
// --------------- DIALOGUE 2

if(phase=="dialogue2"){
	dialogue[0] = "I am " + string(chosenName);
	
	// CREATE TEXTBOX 
	textBox = instance_create_layer(room_width/10, 0.2 * room_height,"instances", oTextBox); 
	textBox.text       = dialogue;
	textBox.creator    = self;											 
	textBox.name       = chosenName;	
	phase="dialogue2a"
}
if(phase=="dialogue2a"){	
	if(textBox.textComplete = 1){phase="dialogue3" instance_destroy(textBox); dialogue = 0;}
	}
		
		
		
// --------------- DIALOGUE 3

if(phase=="dialogue3"){
	dialogue[0] = "ah, so YOU are the one.";
	dialogue[1] = "It's truly an honor to meet you " + string(chosenName) + " please know that we all appreciate your sacrifice.. "
	dialogue[2] = ".......are you ready?"
		
	// CREATE TEXTBOX 
	textBox = instance_create_layer(room_width/10, 0.2 * room_height,"I2", oTextBox); 
	textBox.text       = dialogue;
	textBox.creator    = self;											 
	textBox.name       = "Arbeiter";
	phase="dialogue3a"
}
if(phase=="dialogue3a"){	
	if(textBox.textComplete = 1){phase="dialogue4"; dialogue = 0;}
	}
		

	
if(phase=="dialogue4"){
	
	instance_destroy(textBox)
	instance_destroy(self)
	room_goto(selectNationRoom)

	yesIcon = instance_create_layer(0.3 * room_width, 0.7 * room_height, "Instances", oButton)
	yesIcon.sprite_index = yesnoButtons
	yesIcon.image_index = 0 
	
	
	noIcon = instance_create_layer(0.5 * room_width, 0.7 * room_height, "Instances", oButton)
	noIcon.sprite_index = yesnoButtons
	noIcon.image_index = 1

}