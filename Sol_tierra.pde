PShape tierra,sol;
PImage campo_estrellado;
float t = 0, factor_escala = -525, rl = 180, rt = 700, orbita, x, y;
int space = 0;

void setup(){
  size(1200, 600);
  tierra = loadShape("Tierra4.svg"); // Cargar el svg con la forma de Saturno.
  sol = loadShape("Sol.svg"); // Cargar el svg con la forma de la Tierra.
  campo_estrellado = loadImage("estrellas.jpg");// Carga la imagen que se usará de fondo.

}

void draw(){
 image(campo_estrellado, 0, 0, width,height); // Establcer la imagen de fondo.
 strokeWeight(3);
 stroke(255);
 noFill();
 
 orbita = factor_escala*(1-pow(0.9,2))/(1-0.9*cos(radians(t)));
 x = (100+cos(radians(t))*orbita)+940;
 y = ((height*0.5)+sin(radians(t))*orbita);
 
 ellipse(575,(height*0.5),1050,460);
 shape(sol,300,(height*0.5),rt,rt);
 shape(tierra,x,y,rl,rl);
 
 t -= 1;
 
// if((t < 0)&&(t >= -360)){
//   saveFrame("GIF/img_###.png");
//  }

//}
