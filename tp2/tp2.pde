int etapa = 0;            
int tiempoAnterior = 0;    
int intervalo = 3000;       

PImage img1, img2, img3;

float y = 300;              
boolean bajando = true;   

boolean mostrarBoton = false;

void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  textSize(23);
  
  img1 = loadImage("Obra1.png");
  img2 = loadImage("Obra2.png");
  img3 = loadImage("Obra3.png");
}

void draw() {
  // Fondo diferente 
  if (etapa == 0 && img1 != null) {
    image(img1, 0, 0, width, height);
} else if (etapa == 1 && img2 != null) {
    image(img2, 0, 0, width, height);
  } else if (etapa == 2 && img3 != null) {
    image(img3, 0, 0, width, height);
  }
  fill(255);
  
  // texto cambia
  if (etapa == 0) {
    text("ONIONLAB, estudio multidisciplinar de Barcelona", width/2, y);
  } else if (etapa == 1) {
    text("Tree of Balance,instalación de vídeomapping 3D que tiene tabletas\ndonde los visitantes podían responder preguntas\nsobre sus hábitos y su impacto en el medio ambiente.", width/2, y);
  } else if (etapa == 2) {
    text("Este fue un excelente ejemplo de cómo la interactividad puede\nmejorar la participación de los visitantes, ofrecer una experiencia\nmemorable sobre temas importantes para nuestra sociedad.", width/2, y);
  }

  // Movimiento del texto
  if (bajando) {
    y += 0.5;
    if (y > 320) bajando = false;
  } else {
    y -= 0.5;
    if (y < 280) bajando = true;
  }

  // Cambiar 
  if (millis() - tiempoAnterior > intervalo && etapa < 2) {
    etapa = etapa + 1;
    tiempoAnterior = millis();
    y = 300;
  }

  // botón
  if (etapa == 2 && millis() - tiempoAnterior > intervalo) {
    mostrarBoton = true;
    dibujarBoton();
  }
}

void dibujarBoton() {
  fill(50, 200, 255);
  rect(240, 400, 150, 50);
  fill(0);
  textSize(20);
  text("Reiniciar", 320, 425);
  textSize(24);
  fill(255);
}

void mousePressed() {
  if (mostrarBoton) {
    if (mouseX > 240 && mouseX < 395 && mouseY > 400 && mouseY < 450) {
      etapa = 0;
      tiempoAnterior = millis();
      y = 300;
      mostrarBoton = false;
    }
  }
}
