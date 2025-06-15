//los clicks inician el conteo de cuadrados
//cualquier tecla les agrega color y la "r" reinicia todo 
void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar(); 
  } else {
    colorCuadraditos = color(0,0,255); //azulcito
  }
}

void mousePressed() {
  aumentarCuadraditos++;
  if (aumentarCuadraditos > 8) {
    aumentarCuadraditos = 1;
  }
}
float calcularCentro(int tam) {
  return tam / 2.0;
}
