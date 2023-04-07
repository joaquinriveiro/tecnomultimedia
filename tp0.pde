//Nombre: Riveiro Joaquin Rafael 93085/3
//Tp03#
  
  
  //inicio
  PImage pAtito;
  void setup() {
   size(800,400);
   pAtito=loadImage("pAtito.jpg");
   background(28,207,229);
  
}
   
  void draw() {
//patito imagen
   image (pAtito, 0,0);
   
//agua   
    fill(27,116,222);
   rect(400,255,800,145);
   
//detalle agua
   fill(42,161,219);
   line(45,280,85,280);
   
 
//cuerpo
  fill(252,224,3);
  noStroke();
  ellipse(600,240,200,100);
  
//plantas
   fill(31,121,23);
   triangle(405,255, 425,30,435,255);
   fill(31,150,23);
   triangle(400,255, 422,15,430,255);
  
//cola
  fill(229,210,32); 
  triangle(525,230,500,210,500,180);
  triangle(500,210,530,232,420,200);
 
//cabeza 
   fill(252,224,3);
   circle(700,185,70);
  
//nariz
   fill(211,106,64);
  triangle(715,175,725,190,765,180);
  
//ojos
   fill(255);
   circle(710,168,13);
   circle(730,168,13);
   fill(0); 
   circle(710,165,8);
   circle(730,165,8);

//detalles del cuerpo
   fill(222,195,45);
   bezier(565, 260, 690 , 200, 600, 220, 660, 240);
   
     
//sol
   fill(232,162,56);
   circle(690,60,85);
   fill(252,224,3);
   circle(690,60,75);
   
  
//nubes
   fill(255);
   ellipse(610,85,90,40);
   ellipse(540,80,75,40);
   ellipse(575,65,70,35);
   
}
