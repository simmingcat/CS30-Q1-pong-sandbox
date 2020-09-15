

void textSetup() {
  //printArray(fontList); 
}

void textDraw(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); 
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE


  if (string.length() >= 14) { 
    fontSize = textCalculator(height, string, rectWidth);
    if (string == WTBP) {
      println("using this");
      fontSize = fontSize * 0.8;
    }
    
  } 
  
  else {
    //Catch for string less than 14 characters
    //if (string != quitButton) {fontSize = fontSize * 0.04;} //Option: build catches for different fonts and characters
    //if (string == quitButton) {
      fontSize = fontSize * 0.04;
    //}
    
  }
  

  textFont(font, fontSize); 
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(random(0,255), random(0, 255), random(0,255)); 
}

//Exemplar RETURN with Parameters
float textCalculator(float size, String string, float rectWidth) {
  textSize(size); //For textWidth Sizing
  while (textWidth(string) > rectWidth) {
    size = size * 0.99;
    textSize (size);
  }
  size = 26;
  return size; //Purpose of Calculator
}
