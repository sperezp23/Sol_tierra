PShape s1,s2;
PImage img;
float t = 0, rg = 100, rl = 180, rt = 700, orbita, x, y;
int space = 0;

void setup(){
  size(1200, 600);
  s1 = loadShape("Tierra4.svg"); //Cargar el svg con la forma de Saturno.
  s2 = loadShape("Sol.svg"); //Cargar el svg con la forma de la Tierra.
  img = loadImage("estrellas.jpg");// Carga la imagen que se usará de fondo.

}

void draw(){
 image(img, space, space, width - space*2,height - space*2); // Establcer la imagen de fondo.
 strokeWeight(3);
 stroke(255);
 noFill();
 
 orbita = rg*pow(1-0.9*cos(radians(t)),-1);
 x = (100+cos(radians(t))*orbita);
 y = ((height*0.5)+sin(radians(t))*orbita);
 
 ellipse(575,(height*0.5),1050,460);
 shape(s2,300,(height*0.5),rt,rt);
 shape(s1,x,y,rl,rl);
 
 t -= 1;
 
 //if((t < 0)&&(t >= -360)){
 //  saveFrame("GIF/img_###.png");
 // }

}
