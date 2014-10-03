SlotMachine machine;
boolean rolling = false;
// button information
boolean button = false;
int x = 640/2;
int y = 440;
int w = 150;
int h = 50;

// declare variables
// --------------------------------------------
// put your code inside here
int totalScore = 500;

mahcine.setSlotFruit(int x, int fid);
int mahcine.setSlotFruit(0, 0)=60;
int mahcine.setSlotFruit(1, 0)=60;
int mahcine.setSlotFruit(2, 0)=60;
int mahcine.setSlotFruit(0, 1)=10;
int mahcine.setSlotFruit(1, 1)=10;
int mahcine.setSlotFruit(2, 1)=10;
int mahcine.setSlotFruit(0, 2)=20;
int mahcine.setSlotFruit(1, 2)=20;
int mahcine.setSlotFruit(2, 2)=20;
int mahcine.setSlotFruit(0, 3)=30;
int mahcine.setSlotFruit(1, 3)=30;
int mahcine.setSlotFruit(2, 3)=30;
int mahcine.setSlotFruit(0, 4)=40;
int mahcine.setSlotFruit(1, 4)=40;
int mahcine.setSlotFruit(2, 4)=40;
int mahcine.setSlotFruit(0, 5)=50;
int mahcine.setSlotFruit(1, 5)=50;
int mahcine.setSlotFruit(2, 5)=50;

// --------------------------------------------

void setup() {
  size(640,480);
  textFont(createFont("fonts/Square_One.ttf", 20));
  machine = new SlotMachine();
}

void draw() {
  background(245,229,124);
  fill(64,162,171);
  rect(320,248,396,154,25);
  fill(253,253,253);
  rect(220,247,97,114,2);
  rect(320,247,97,114,2);
  rect(420,247,97,114,2);
  // draw button
  fill(64,162,171);
  noStroke();
  rectMode(CENTER);
  rect(x,y,w,h,105);
  // show title
  fill(64,64,63);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Slot Machine",x,49);
  textSize(20);
  text("Score"+" "+":"+" "+totalScore,x, 89);
  
  // event handler
  if (button) {
    if (!rolling){
      rolling = true;
      // start rolling
      // -------------------------------------------------
      // put your code inside here
      a = random(6);
      b = random(6);
      c = random(6);
      int result = machine.probability(0.1);
      
      // -------------------------------------------------
    }
    machine.roll();
    textSize(19);
    text("Stop",x,y);
  
  } else {
    if (rolling){
      rolling = false;
      // stop rolling
      // -------------------------------------------------
      // put your code inside here
        rolling = false;
        int a = mahcine.getSlotScore(0); //
        int b = mahcine.getSlotScore(1); // 
        int c = mahcine.getSlotScore(2); // 
        mahcine.getSlotScore(int x);
 

      
      // -------------------------------------------------
    }
    machine.stop();
    fill(253,253,253);
    textSize(19);
    text("Roll",x,y);
  }

}

// When the mouse is pressed, the state of the button is toggled.   
void mousePressed() {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    button = !button;
  }  
}







