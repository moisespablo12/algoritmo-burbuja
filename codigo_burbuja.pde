int[] array = new int[6];  // numero de graficas a ordena.
void setup() {
  size(800, 600);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(5, 100);
  }
  frameRate(6);
}
int i=0;
int temp;
void draw() {
  background(180);

  for (int j=0; j<array.length; j++) {
    if (array[i]<array[j]) {
      temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    stroke(0);
    //strokeWeight(2);
    fill(0, 255, 0);

    // rectangulo de los numeros
    rect(50*j, j+100, 45, array[j]-100); // array[j]-100 para poner las barras hacia arriba
    fill(0, 0, 0);

    // 100- array[j] para poner los numeros de menor a mayor
    text(100-array[j], 55*j, 150+j);
  }

  i++;
  if (i>array.length-1)
    noLoop();
}
