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

int totalScore = 500; //Start totalScore

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

totalScore=totalScore-50; //Every time press start minus 50

int result = machine.probability(0.5);
println(result);
machine.setSlotFruit(0,0);
machine.setSlotFruit(1,0);
machine.setSlotFruit(2,0);
      
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
      
int a = int (random(6)); 
int b = int (random(6));
int c = int (random(6));
      machine.setSlotFruit(0,a);
      machine.setSlotFruit(1,b);
      machine.setSlotFruit(2,c); 
      
      int d = machine.getSlotScore(0); 
      int e = machine.getSlotScore(1); 
      int f = machine.getSlotScore(2);
int g = machine.getFruitCount(0);
int h = machine.getFruitCount(1);
int i = machine.getFruitCount(2);

      totalScore=totalScore+d*g+e*h+f*i; //calculate total score 
     



      
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
