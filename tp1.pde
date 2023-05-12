//Joaquin Riveiro TP1 Comision2.

PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10;
PFont mainfont;
int estado;
int marcaeneltiempo;
int segunditos;
float textMovX, textMovX2, textMovY, textMovY2;
float opacidad, agrandar;
//int x, y, d;
//float distancia, radio;
//int colorBtn;


void setup() {
  size(640, 480);
  //
  background(255);
  //
  fill(255);
  //cargar imagen
  imagen1 = loadImage("suricata2.jpg");
  imagen2 = loadImage("suricata3.jpg");
  imagen3 = loadImage("suricata4.jpg");
  imagen4 = loadImage("suricata5.jpg");
  imagen5 = loadImage("suricata6.jpg");
  imagen6 = loadImage("suricata7.jpg");
  imagen7 = loadImage("suricata8.jpg");
  imagen8 = loadImage("suricata9.jpg");
  imagen9 = loadImage("suricata10.jpg");
  imagen10 = loadImage("descarga.jpg");
  //cargar fuente
  mainfont = loadFont("LeelawadeeUI-Bold-48.vlw");
  //
  estado = 0;
  //
  segunditos = 7000;
  //
  textMovX = 0;
  textMovX2 = 0;
  textMovY = 480;
  textMovY2 = 0;
  agrandar = 0;
  opacidad=0;

  //x = 50;
  //y = 200;
  //d = 70;
}

void draw() {
  int diferenciatemporal = millis() - marcaeneltiempo;

  textFont(mainfont);

  if (estado==0) {
    image(imagen1, 0, 0, 640, 480);
    opacidad = opacidad+1.65;
    fill(255, opacidad);
    textSize(55);
    textAlign(CENTER, CENTER);
    text(" ¡Bienvenidos!\n Este es el\n Tp1 basado en\n\n LAS SURICATAS", 310, 240);
    if ( diferenciatemporal >= 5000 ) {
      estado = 1;
      marcaeneltiempo = millis();
      opacidad = 0;
      //
    }
  } else if (estado == 1 ) {
    textMovY = textMovY - 1 ;
    if (textMovY <= height/2) {
      textMovY = height/2;
    }
    image(imagen3, 0, 0, 640, 480);
    textSize(25);
    fill(255);
    //textAlign(CENTER,CENTER);
    text(" La suricata es una de\n las mangostas más\n pequeñas del\n mundo.\n Tienen aproximadamente\n una longitud del cuerpo y la\n cabeza de entre 25\n y 35 cm.", 310, textMovY);
    if ( diferenciatemporal >= segunditos ) {
      estado = 2;
      marcaeneltiempo = millis();
    }
  } else if (estado==2) {
    textMovX = textMovX + 1.50;
    if (textMovX >= 120) {
      textMovX = 120;
    }
    image(imagen4, 0, 0, 640, 480);
    textSize(16);
    fill(55, 36, 22);
    text("Las hembras paren de media\n tres crías, después\n de 11 semanas de gestación.\n Pueden llegar a tener\n tres camadas en un año.", textMovX, 90 );
    if ( diferenciatemporal >= 8000 ) {
      estado = 3;
      marcaeneltiempo = millis();
      textMovX=0;
    }
  } else if (estado==3) {
    textMovX = textMovX + 1.50;
    if (textMovX >= 150) {
      textMovX = 150;
    }
    image(imagen6, 0, 0, 640, 480);
    textSize(18);
    fill(221, 171, 129);
    text("Vive en las sabanas secas\n y las llanuras subdesérticas\n del extremo sur de África.\n Se alimenta principalmente\n de insectos y otros invertebrados. ", textMovX, 70);
    if ( diferenciatemporal >= 9000 ) {
      estado = 4;
      marcaeneltiempo = millis();
      textMovX = 640;
    }
  } else if (estado==4) {
    textMovX = textMovX - 1.40;
    if (textMovX <= 460) {
      textMovX = 460;
    }
    image(imagen7, 0, 0, 640, 480);
    textSize(18);
    fill(255);
    text("Se caracterizan por tener un\n comportamiento altamente social\n y cooperativo entre los miembros,\n que se agrupan en manadas\n de hasta 30 individuos,\n sin embargo, son agresivos y\n territoriales con otros suricatos.", textMovX, 140);
    if ( diferenciatemporal >= 10000 ) {
      estado = 5;
      marcaeneltiempo = millis();
      textMovX = 0;
    }
  } else if (estado==5) {
    image(imagen8, 0, 0, 640, 480);
    opacidad = opacidad + 2.00;
    fill(255, opacidad);
    textSize(24);
    text("Los depredadores de estos animales\n incluyen a halcones y águilas.\n Durante las amenazas las suricatas\n aparentan ser más grandes de lo\n que en realidad son.", 310, 240);
    if ( diferenciatemporal >= 9000 ) {
      estado = 6;
      marcaeneltiempo = millis();
    }
  } else if (estado==6) {
    image(imagen10, 0, 0, 640, 480);
    agrandar = agrandar + 1;
    if (agrandar >= 25) {
      agrandar = 25;
    }
    textSize(agrandar);
    text("¡Gracias por ver!\n PRESIONE EL BOTÓN PARA REINICIAR", 310, 240);
    if ( diferenciatemporal >= 5000 ) {
      estado = 7;
      marcaeneltiempo = millis();
      agrandar = 0;
    }
  }  if (estado==7) {
    image(imagen2, 640, 480);
    fill(255);
    circle(320,300,50);
    if(mousePressed){
      if(dist(320,300,mouseX,mouseY)<80/2){
        fill(255);
        circle(100,100,50);
        estado=0;
        marcaeneltiempo =millis();
        
      }
    }
  }
  println(millis() + "-"+marcaeneltiempo+"="+diferenciatemporal);
}
