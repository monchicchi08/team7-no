class Scene{
  
  Question  typing;  
  InputForm   input;
  Timer       time;
  After_ipt  afterinput;
  
  Judge judge      = new Judge();
  
  Button startMenuButton     = new Button(width/2,height/2,200,40,"スタート");
  Button gameclearMenuButton = new Button(width/2,height/2+100,200,40,"スタート画面に戻る");
  Button retryButton         = new Button(width/2,height/2+150,240,40,"リトライ");
  Button toTitleButton       = new Button(width/2,height/2+200,240,40,"スタート画面に戻る");
   
  String sceneControlFlag = "startMenu";
  int questionNum = 0;  
  int timeLimits = 10;   
  int EasiestLimit = 10;  
  int delayTime = 1000;  
  int mistakeMessageFlag = 0;
  int count = 0;

  void playScene(){
    
    if(sceneControlFlag == "startMenu"){
      background(150, 200, 150);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("脳トレタイピング",width/2,height/3);
      startMenuButton.display();
      if(mousePressed == true && startMenuButton.isInside()){
        delay(delayTime);
        sceneControlFlag = "gameMenu";
        makingObjectsForReset(); 
        time.changeTime(timeLimits);
      }
      
    }else if(sceneControlFlag == "gameMenu"){  
      noStroke();
      fill(250, 230, 210, 120);
      rect(width/2, height*3/4, width, height/2);
      line(0,height/2,width,height/2);
      time.display();
      time.updateTime();

      typing.display(questionNum, input.getText());

      input.display();
      
      if(keyPressed == true){
        if(key == ENTER){
          if(input.getText() != ""){
            afterinput.afterInputProcess();
          }
        }
      }
      
      if(mistakeMessageFlag == 1){
        fill(255,0,0);
        textSize(20);
        text("間違え",width/2,height/2+150);
      }
      
      if(time.isTimeUp()){ 
        sceneControlFlag = "gameoverMenu";
        input.removeInputForm();
      }
      
    }else if(sceneControlFlag == "gameoverMenu"){
      
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームオーバー",width/2,height/2+50);
      
      retryButton.display();
      if(mousePressed == true && retryButton.isInside()){
          delay(delayTime);
          sceneControlFlag = "gameMenu";
          makingObjectsForReset(); 
          time.changeTime(timeLimits);
          questionNum = 0;
          mistakeMessageFlag = 0;
      }
      toTitleButton.display();
      if(mousePressed == true && toTitleButton.isInside()){
          sceneControlFlag = "startMenu";
          questionNum = 0;
          mistakeMessageFlag = 0;
          
      }
  
    }else{
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームクリア！またやってみてね！",width/2,height/3);
        
      gameclearMenuButton.display();
      if(mousePressed == true && gameclearMenuButton.isInside()){
          sceneControlFlag = "startMenu";
          questionNum = 0;
          mistakeMessageFlag = 0;
          time.changeTime(6);
      }
    }
  }
  
  void makingObjectsForReset(){
    input      = new InputForm(width/2,height/2+200);
    typing     = new Question(width/2,height/2+100);
    time       = new Timer();
    afterinput = new After_ipt();
  }
      
}
