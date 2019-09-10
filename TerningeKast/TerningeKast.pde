
void setup() {
  size (1000, 500);
}

void draw() {
  //Laver en tilfældig farvet baggrund
  background(random(0, 256), random(0, 256), random(0, 256));
  //opsætter variabler til hver terningekast
  int one = 0;
  int two = 0;
  int three = 0;
  int four =0;
  int five = 0;
  int six = 0;

  int i = 1;
  //Starter et loop der laver 1000 terningeslag
  while (i<=1000) {
    i++;
    switch((int)random(1, 7)) {
    case 1:
      one ++;
      break;
    case 2:
      two ++;
      break;
    case 3:
      three ++;
      break;
    case 4:
      four ++;
      break;
    case 5:
      five ++;
      break;
    case 6:
      six ++;
      break;
    }
  }
  //Opstiller skrift type
  PFont.list();
  createFont("Comic Sans MS", 20);
  textFont(createFont("Comic Sans MS", 20));

  //Farver og tegner graferne for hvor meget der er slået
  fill(255);
  rect(100, 500, 50, -one);
  rect(200, 500, 50, -two);
  rect(300, 500, 50, -three);
  rect(400, 500, 50, -four);
  rect(500, 500, 50, -five);
  rect(600, 500, 50, -six);
  rect(700, 200, 200, 100);

  //Skriver værdien af terningeslagene på canvaset
  fill(0);
  text("Retry", 775, 255);
  text("1 = "+one, 90, 100);
  text("2 = "+two, 190, 100);
  text("3 = "+three, 290, 100);
  text("4 = "+four, 390, 100); 
  text("5 = "+five, 490, 100);
  text("6 = "+six, 590, 100);

  //Stopper loopet, så det kun bliver udført en gang
  noLoop();
}

void mousePressed() {
//starter loopet forfra
  if (mouseX>700 && mouseX<900 && mouseY >200 && mouseY <300)
    loop();
}
