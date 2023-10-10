float angulo = 0;
float escala = 1.0;
boolean aumentar = true;
float shearValue = 0.0;
PVector position;

void setup() {
  size(400, 400);
  position = new PVector(200, 200);
}

void draw() {
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(255);
  stroke(0);
  fill(rojo, verde, azul);

  // Crear una matriz de transformación
  pushMatrix();

  // Aplicar transformaciones
  translate(position.x, position.y);
  scale(escala);
  rotate(angulo);
  shearX(shearValue);

  // Dibujar el rectángulo
  rect(-50, -50, 100, 100);

  // Restaurar la matriz de transformación
  popMatrix();
}

void keyPressed() {
  if (key == '1' || key == '1') {
    // Tecla '1' para traslación
    position.add(10, 10);
  } else if (key == '2' || key == '2') {
    // Tecla '2' para aumentar el escalado
    escala *= 1.1;
  } else if (key == '3' || key == '3') {
    // Tecla '3' para rotación
    angulo += radians(10);
  } else if (key == '4' || key == '4') {
    // Tecla '4' para sesgado en el eje X
    shearValue += radians(10);
  }
}
