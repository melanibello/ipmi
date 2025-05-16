//Melani Bello 122608/5

PImage tlou, actores, gordinflon, joelxellie, elliextess;

int miVariable;

PFont mifuente;

float posicionX, posicionY;

int segundos;

float valorOpacidad;

float pos1, pos2, pos3, pos4, pos5;

void setup() {
  size(640, 480);

  // imágenes
  tlou = loadImage("tlou.jpg");
  gordinflon = loadImage("gordinflon.png");
  joelxellie = loadImage("joelxellie.jpg");
  elliextess = loadImage("elliextess.jpg");
  actores = loadImage("actores.jpg");

println(frameCount);

  valorOpacidad = 0; //por si acaso

  // fuente
  mifuente = loadFont("monastic.vlw");
  textFont(mifuente);

  // posiciones iniciales
  posicionX = 10;
  posicionY = 10;

  miVariable = 1000;
  segundos = 0;
  
  //posiciones del texto
pos2 = width;
pos3 = -400;
pos4 = width + 200;
pos5 = 150;


}

void draw() {
  background(0);

miVariable = frameCount;
println (miVariable);

  // contador de tiempo 
  if (frameCount % 60 == 1) {
    segundos++;
  }

  // diapositiva 1
  
  if (segundos >= 0 && segundos <= 5) {
    image(tlou, 0, 0, 640, 480);
    textAlign(LEFT);
    fill(255);
    textSize(30);
    text("The Last Of Us, El Ultimo de Nosotros", posicionX * 2, height / 5);
    posicionX++;
  }

  // diapositiva 2
  
  else if (segundos > 5 && segundos <= 16) {
    posicionX=15;
    image(actores, 0, 0, 640, 480);
    textAlign(LEFT);
    fill(255);
    textSize(30);
    text("Protagonizada por Bella Ramsey, Pedro Pascal y dirigida por Neil Druckmann", pos2, height / 2);
    pos2 -= 2; 

}

  // diapositiva 3 
  
  else if (segundos > 16 && segundos <= 22) {
    posicionX=10;
    image(gordinflon, 0, 0, 640, 480);
    textAlign(LEFT);
    fill(255);
    textSize(30);
    posicionX--;
    text("Con humanos infectados por un hongo peligroso", pos3, height - 40);
  pos3 += 2;
    
  }

  // diapositiva 4
  
  else if (segundos > 22 && segundos <= 30) {
    posicionX=15;
    image(joelxellie, 0, 0, 640, 480);
    textAlign(RIGHT);
    fill(255);
    textSize(30);
    text("Joel y Ellie son los protagonistas de esta historia", pos4, height / 3);
    pos4 -= 2;

}

  // diapositiva 5 
  
  else if (segundos > 30 && segundos <= 36) {
    posicionX=13;
    image(elliextess, 0, 0, 640, 480);
    textAlign(LEFT);
    fill(255);
    textSize(30);
    text("Ellie tiene algo que la hace ser una posible cura a la infección", pos5, height / 2);
    pos5 -=1;
    
  }
  
  //diapostiva 6 y final 
  
    else if (segundos > 36) {
    background(0);

    // Botón
    fill(35,134,28); // color 
    rect(210, 260, 190, 40); //tamaño

    // boton
    fill(0);
    textSize(20);
    text("Click", 240, 285);
  }
}
void mousePressed() { //esta es la diapositiva del boton (la sexta)
  if (segundos > 36 && mouseX > 150 && mouseX < 450 && mouseY > 250 && mouseY < 310) {
    // valores
    segundos = 0;
    frameCount = 0;
    posicionX = 10;
    pos1 = 0;
    pos2 = width;
    pos3 = -400;
    pos4 = width + 200;
    pos5 = 150;
  }
}
