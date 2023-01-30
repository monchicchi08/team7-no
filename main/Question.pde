class Question{
  int x,y;
  String[] text = {
  "risu", 
  "sasimi", 
  "humikiri", 
  "banira", 
  "orenji", 
  "hanabi", 
  "syaberu",
  "hyousi",
  "sika", 
  "kuri"
  };
  
  String[] QuestionText = {
  "イギリスに隠れてる動物は何? ", 
  "シミはシミでも魚で作るシミは何?", 
  "線路にあるキリは何?", 
  "アイスクリームに入ってるニラは何?", 
  "食べられるレンジは何?", 
  "夏に夜空に咲く花は何?", 
  "土を掘るベルは何?",
  "本の中で4匹のヒョウがいるのはどこ?",
  "虫歯を直してくれる動物は何?", 
  "びっくり箱の中にある食べ物は何?"
  };
  
  Question(int x,int y){
    this.x = x;
    this.y = y;
  }
  
  public String[] getTexts(){
    return text;
  }
  
  //this function returns test's length
  public int getTextLength(){
    return text.length;
  }
  
  public void display(int num, String inputtedText){
    int textLeftX = (width / 2) - (int)(9 * text[num].length());
    displayInputtedText(textLeftX, inputtedText);
    displayHiraganaText(num);
  }
  
  private void displayInputtedText(int leftX, String inputtedText){
    fill(0);
    textSize(30);
    textAlign(LEFT);
    text(inputtedText, leftX, y);
  } 
  
  private void displayHiraganaText(int num){
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text(QuestionText[num], width/2, y-50);
  }
}
