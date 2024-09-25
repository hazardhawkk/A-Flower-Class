public class Flower {
  private float maxHeight;
  private float xPos;
  private float currentHeight;

  private int petalWidth = 50;
  private int stemWidth = 10;
  private int maxAge;
  private int currentAge;




  public Flower(float maximumHeight, int maximumAge) {
    maxHeight = maximumHeight;
    maxAge = maximumAge;
    resetFlower();
    currentAge = 0;
  }

  public void display() {
    fill(0, 255, 0);
    stroke(0, 255, 0);
    rect(xPos, currentHeight, stemWidth, currentHeight);

    if (currentHeight == maxHeight) {
      stroke(0, 0, 255);
      fill(0, 0, 255);
      ellipse(xPos + stemWidth/2 + petalWidth/2, currentHeight, petalWidth, petalWidth);
      ellipse(xPos + stemWidth/2 - petalWidth/2, currentHeight, petalWidth, petalWidth);
      ellipse(xPos + stemWidth/2, currentHeight + petalWidth/2, petalWidth, petalWidth);
      ellipse(xPos + stemWidth/2, currentHeight - petalWidth/2, petalWidth, petalWidth);


      stroke(250, 0, 0);
      fill(250, 0, 0);
      ellipse(xPos + stemWidth/2, currentHeight, 50, 50);
    }
  }

  public void grow() {
    if (currentHeight > maxHeight) { //if less than max height
      currentHeight--;
    } 
    else {
      currentAge++;
    }
    
    if (currentAge == maxAge) {  //if at max age
      resetFlower();
    }
  }

  public boolean isMaxHeight() {
    if (currentHeight <= maxHeight) {
      return true;
    }
    return false;
  }

  public void resetFlower() {
    xPos = random(0, width);
    currentHeight = height; //makes the height 0
    currentAge = 0;
  }
}
