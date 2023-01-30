class After_ipt{
  String input,question;
  
  void afterInputProcess(){
    if(scene.judge.isCorrect(scene.input.getText(),scene.typing.text[scene.questionNum])){

      scene.input.resetText();
        
      scene.questionNum += 1;
      
      scene.mistakeMessageFlag = 0;
        
      scene.time.changeTime(scene.timeLimits);
        
      if(scene.questionNum == scene.typing.getTextLength()){
        scene.sceneControlFlag = "gameclearMenu";
        scene.input.removeInputForm();
      }
    }else{
      scene.mistakeMessageFlag = 1;
    }
    
  }
}
