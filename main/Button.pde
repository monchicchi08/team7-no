class Button{
  int x,y; 
  int w,h; 
  color buttonColorOut,textColorOut; 
  color buttonColorIn,textColorIn;  
  String buttonText;
  
  Button(int x0,int y0,int w0,int h0,String s0){
    x = x0;
    y = y0;
    w = w0;
    h = h0;
    
    buttonText     = s0;
    
    buttonColorIn  = color(236,104,203);
    buttonColorOut = color(255);
    textColorIn    = color(255);
    textColorOut   = color(0);
  }
  
  boolean isInside(){
    if(x-w/2 < mouseX && mouseX < x+w/2){
      if(y-h/2 < mouseY && mouseY < y+h/2){
        return true;
      }
      else return false;
    }    
    else return false;
  }
  
  void display(){
    
    rectMode(CENTER);    
    if(isInside()) fill(buttonColorIn);
    else           fill(buttonColorOut);
    rect(x,y,w,h);
    textSize(20);
    textAlign(CENTER,CENTER);
    if(isInside()) fill(textColorIn);
    else           fill(textColorOut);
    text(buttonText,x,y);
  }
}
