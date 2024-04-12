// Declaración de variables
PShape tierra,sol;
PImage campo_estrellado;
float t = 0, factor_escala = -525, r_tierra = 180, r_sol = 700, orbita, x, y;

void setup(){
  size(1200, 600);
  
  //Importar images
  tierra = loadShape("Tierra4.svg"); 
  sol = loadShape("Sol.svg"); 
  campo_estrellado = loadImage("estrellas.jpg");

}

void draw(){
  
 //Campo de estrellas
 image(campo_estrellado, 0, 0, width,height);

 
 // Obtita
 orbita = factor_escala*(1-pow(0.9,2))/(1-0.9*cos(radians(t)));
 x = (cos(radians(t))*orbita)+1040;
 y = ((height*0.5)+sin(radians(t))*orbita);
 t -= 1;
 
 // Elipce
 strokeWeight(3);
 stroke(255);
 noFill();
 ellipse(575,(height*0.5),1050,460);
 
 //Sol y Tierra
 shape(sol,300,(height*0.5),r_sol,r_sol);
 shape(tierra,x,y,r_tierra,r_tierra);
 
//Guardra frames para el gif
// if((t < 0)&&(t >= -360)){
//   saveFrame("GIF/img_###.png");
//  }

}
