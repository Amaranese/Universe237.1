
// ******MODIFY LATER DYNAMIC SIZE ******//
//if(string_length(text[page]) < 70){spriteBox = sTextBox}
//if(string_length(text[page]) < 22){spriteBox = sTextBoxSmall}
//if(string_length(text[page]) > 69){spriteBox = sTextBoxBig}



// draw textbox
textBoxHeight = sprite_get_height(spriteBox)
textBoxWidth  = sprite_get_width(spriteBox)
 
xLeftMargin  = 0.07 * textBoxWidth;
xRightCutOff = XMARGIN * textBoxWidth;
yTopMargin   = YMARGIN * textBoxHeight;
 

// -------------------- DRAW TEXT BOX 

draw_sprite(spriteBox, 0 , x,y);										
draw_set_font(NokiaFont)		


// -------------------- stream letters (increments CHAR COUNT)
if(charCount < string_length(text[page])){ charCount += counterSpeed }	 
textPart = string_copy(text[page],1, charCount)
 
 
// ---------------------DRAW STEP

draw_text(x + (0.4 * textBoxWidth),y + yTopMargin,name); // Name


//    xstarting, 
//    y starting, 
//    text
//    space between lines vertically
//    right margin
draw_text_ext(x + xLeftMargin, y + 3 * yTopMargin , textPart, 1.3 * string_height("I"), xRightCutOff);