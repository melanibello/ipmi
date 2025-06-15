void funcionFondo(int posX, int posY, int tam, int cantidad) {
translate(400, 0);
  for (int X=0; X<cantidad; X++) {
    for (int Y=0; Y<cantidad; Y++){
    int x = posX + X * tam;
    int y = posY + Y  * tam;
    
    fill(200);
    rect(x, y , tam, tam);
    
    fill(colorCuadraditos, transparencia); // de blanco a azulcito
      rect(x + 25, y, tam / 2, tam / 2);
      
    fill(0);
    quad(x+ tam/2, y, x+tam/2, y+tam/2, x, y+tam, x, y+tam/2);
    quad(x+tam/2, y+tam/2, x+tam, y+tam/2, x+tam/2, y+tam, x, y+tam);
   
   float centro = calcularCentro(tam);
quad(x + centro, y, x + centro, y + centro, x, y + tam, x, y + centro);

    }
  }
}
