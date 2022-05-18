// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function textToScreen(xPos,yPos,layer,textToWrite,action){
	
	if(action = "destroy"){instance_destroy(writeText);exit;}
	
	textHolderBox = instance_create_layer(xPos, yPos,"Instances",writeText);
	textHolderBox.textToWrite = textToWrite
	textHolderBox.x = xPos;
	textHolderBox.y = yPos;
}