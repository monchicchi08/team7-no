Scene scene;
Key_Ob nullObserver = new NullObserver();
Key_Ob observerHandler = nullObserver;
PImage imgTitle, imgLose;
final String GAME_TITLE = "脳トレタイピング";

void setup(){
  size(800,800);
  surface.setTitle(GAME_TITLE);
  
  scene     = new Scene();
  
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
}

void draw(){
  background(255);
  scene.playScene();
}

void keyPressed() {
  observerHandler.onPress(keyCode);
}

void keyReleased() {
  observerHandler.onRelease(keyCode);
}

void setObserver(Key_Ob o) {
  if(o == null) {
    observerHandler = nullObserver;
  } else {
    observerHandler = o;
  }
}
