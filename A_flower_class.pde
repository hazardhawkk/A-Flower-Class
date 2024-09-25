Flower flower1;
Flower flower2;
Sun sun;

void setup() {
  size(800, 600);
  flower1 = new Flower(300, 40);
  sun = new Sun(200, 100);
}

void draw() {
  background(200, 200, 250); //this is needed to cover/delete the previous flower
  sun.display();
  flower1.display();
  flower1.grow();
  //flower2.display();
  //flower2.grow();
  if (flower1.isMaxHeight()) {
    sun.setSmiling(true);
  }
}
