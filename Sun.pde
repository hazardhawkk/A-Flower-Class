public class Sun {
  private float sunX;
  private float sunY;
  private float sunWidth = 150;
  
  public Sun(float x, float y) {
    sunX = x;
    sunY = y;
  }

 public void display() {
    fill(255, 255, 0);
    stroke(255, 255, 0);
    ellipse(sunX, sunY, sunWidth, sunWidth);
  }
  
  public void setSmiling(boolean smiling){
    if(smiling){
     stroke(0);
      fill(0);
      ellipse(sunX + sunWidth/5, sunY - sunWidth/8, 5, 5);
      ellipse(sunX - sunWidth/5, sunY - sunWidth/8, 5, 5);
      noFill();  //these fractions are just to give a good look to the sun no matter the sunWidth
      arc(sunX, sunY, sunWidth/2, sunWidth/2, QUARTER_PI, QUARTER_PI * 3);
    }
  }
}
