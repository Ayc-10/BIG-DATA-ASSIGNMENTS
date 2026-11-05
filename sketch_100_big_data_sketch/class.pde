class data {
  float xPos;
  float yPos;
  String platform;
  float speed;
  int emotion;
  float radius;
  String edutainment;
  int day;

  data(float x, float y, String platform, float time, int emotion, String edutainment, int day) {
    xPos = x;
    yPos = y;
    this.platform = platform;
    speed = time;
    this.emotion=emotion;
    this.edutainment = edutainment;
    radius = 20;
    this.day = day;
  }// contructor method - where assignment of values are above!

  void draw() {
    {
      fill(124,124,124,123);
      stroke(0, 0, 255);
      strokeWeight(3.0);
      rect(xPos, yPos, 60, 90);
      pushMatrix(); // store the transformation
      float centreW = xPos+25;
      float centreH = yPos+40;
      translate(centreW, centreH);
      rotate(radians(r));
      colourforCirle();
      rect(0,0,20,10);
      circle(0, speed, radius);
      popMatrix(); // saves the transformation and reverts the coordinate system to normal
      r = r+5;
    }
  }








  //colours the circle in the centre !
  void colourforCirle() {
    if (this.emotion== 1) {
      noStroke();
      fill(255, 16, 78, 128);
    } else if (this.emotion==2) {
      noStroke();
      fill(125, 0, 0, 128);
    } else if (this.emotion==3) {
      noStroke();
      fill(236, 145, 255, 128);
    } else if (this.emotion==4) {
      noStroke();
      fill(91, 249, 255, 128);
    } else if (this.emotion==5) {
      noStroke();
      fill(255, 244, 124);
    }
  }
}
