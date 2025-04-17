PImage miImagen, puka; 
void setup(){
  size(800,400);
  miImagen=loadImage("puka.jpg");
   
}

void draw(){
  background(255);
  image(miImagen,0,0,400,400); 

fill(0,0,0);//cola izquierda
circle(495,100,85);
fill(0,0,0);//cola derecha
circle(705,100,85);

 fill(252,0,0); //chuflin izquierdo
circle(530,130,70);
fill(252,0,0);//chuflin derecho
circle(670,130,70);

stroke(0); 
strokeWeight(5);
fill(250,231,220);
circle(533,290,27);//mano izquierda 
circle(666,290,27);//mano derecha 

stroke(0,0,0); //brazos
strokeWeight(5);
 fill(252,0,0);
triangle(547,300,570,200,520,280);//brazo izquierdo
triangle(678,280,628,200,650,300);//brazo derecho

 stroke(0);
 fill(0);
 rect(565,300,30,40,404,40,40,40); //pierna izquierda
 rect(605,300,30,39,603,40,40,40);//pierna derecha

 stroke(0,0,0); //cuerpo
 strokeWeight(5);
 fill(252,0,0);
 rect(550,235,100,70,10,10,5,5);

fill(0,0,0); //cabeza atras (pelo)
ellipse(600,163,205,165);
 
fill(250,231,220); //cabeza enfrente 
 ellipse(600,170,185,155);
 
 stroke(0,0,0);
 strokeWeight(5);
 line(530,170,572,180); //ojo ozquierdo 
 line(630,181,672,170);//ojo derecho
 
 noStroke();
 fill(227,160,137);// cachetes
 circle(550,210,20);
 circle(650,211,20);
 
 stroke(0);
 fill(250,231,220); //boca
circle(600,210,20);
 noStroke();
 rect(580,189,40,20,20,20,20,20);//rectangulo que tapa la mitad de la boca
 

 
 

}
