// Alumna: Inchauspe, Celeste 
//https://youtu.be/H7fuHYoKWn4

int cantidadCuadrados = 9;
PImage referencia;
float desplazamientoBase = 4;

void setup() {
  size(800, 400);
  referencia = loadImage("referencia.png");
  dibujarTodo();
}

void draw() {
}

// Función que retorna un valor 
float calcularDesplazamiento() {
  return desplazamientoBase;
}

void dibujarTodo() {
  background(255);
  image(referencia, 0, 0, 400, 400);

  pushMatrix();
  translate(400, 0);

  // FOR anidado para recorrer cuadrantes (4 total = 2x2)
  for (int fila = 0; fila < 2; fila++) {
    for (int col = 0; col < 2; col++) {
      float x = 100 + col * 200;
      float y = 100 + fila * 200;
      int dx = 1;
      int dy = 1;

      // Dirección personalizada
      if (fila == 0 && col == 0) { dx = 1; dy = -1; }   // ↗
      else if (fila == 0 && col == 1) { dx = 1; dy = 1; } // ↘
      else if (fila == 1 && col == 0) { dx = -1; dy = -1; } // ↖
      else if (fila == 1 && col == 1) { dx = -1; dy = 1; }  // ↙

      dibujarCuadrado(x, y, cantidadCuadrados, dx, dy);
    }
  }

  popMatrix();
}

// Función propia con parámetros que NO retorna valor
void dibujarCuadrado(float cx, float cy, int cantidad, int dx, int dy) {
  float tamañoMax = 150;
  float espacio = tamañoMax / cantidad;
  float desplazamiento = calcularDesplazamiento();

  rectMode(CENTER);
  noFill();

  for (int i = 0; i < cantidad; i++) {
    stroke(i % 2 == 0 ? 0 : 255);
    strokeWeight(espacio);
    float tamaño = tamañoMax - i * espacio;

    float offsetX = i * desplazamiento * dx;
    float offsetY = i * desplazamiento * dy;

    rect(cx + offsetX, cy + offsetY, tamaño, tamaño);
  }
}

// Evento de teclado: reiniciar al presionar 'r'
void keyPressed() {
  if (key == 'r' || key == 'R') {
    cantidadCuadrados = 9;
    desplazamientoBase = 4;
    dibujarTodo();
  }
}

// Evento de mouse: cambia cantidad y desplazamiento aleatorio
void mousePressed() {
  cantidadCuadrados = int(random(6, 12));  // usa random()
  desplazamientoBase = random(2, 6);
  dibujarTodo();
}
