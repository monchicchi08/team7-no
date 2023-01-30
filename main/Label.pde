class Label {
  private String text;
  private int x;
  private int y;
  
  public Label(int x, int y) {
    this.text = "";
    this.x = x;
    this.y = y;
  }
  
  public void pushBack(char c) {
    text += c;
  }
  
  public void removeLastChar() {
    if(text.length() > 0) {
      text = text.substring(0, text.length() - 1);
    }
  }
  
  public void display() {
    stroke(0);
    textSize(30);
    textAlign(CENTER);
    text(text, x, y);
  }

  public String getText() {
    return text;
  }
  
  public void resetText(){
    text = "";
  }
}
