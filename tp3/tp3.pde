//Melani Bello
//122608/5
//https://www.youtube.com/watch?v=Al258tE0qMQ

PImage poArt;
int aumentarCuadraditos;
color colorCuadraditos;
float transparencia = 255;

void setup() {
  size(800, 400);
  poArt = loadImage("poArt.jpg");

  reiniciar();
  aumentarCuadraditos = 8;
  colorCuadraditos= color(255);
}

void draw() {
  background(255);
  image(poArt, 0, 0, 400, 400);
  funcionFondo(0, 0, 50, aumentarCuadraditos);
  transparencia = map(mouseX, 0, width, 0, 255);


}

void reiniciar() {
  aumentarCuadraditos = 8;
  colorCuadraditos = color(255); // blanco
}
