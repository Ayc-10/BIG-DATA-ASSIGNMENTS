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
    radius = 25;
    this.day = day;
  }// contructor method - where assignment of values are above!
// method of the screens that is drawed!

  void screens() {
    {
      if (istrue == true) {
        fill(0);
        rect(xPos, yPos, 60, 90);
        float tempx = xPos +20;
        float tempy= yPos +90;
        rect(tempx, tempy, 25, 10);
        pushMatrix(); // store the transformation
        float centreW = xPos+25;
        float centreH = yPos+40;
        translate(centreW, centreH); //Changes the coordinate system
        rotate(radians(r)); // rotate is a function that takes the input of a radian it rotates the radian
        colourforCirle(); //colours the circle based on emotion
        noStroke();// u know
        rect(0, 0, speed/2, 20); // draw the rectangle with specific coordinates
        edutainmentsChecker(); //Adds a stroke around the circles
        circle(0, speed, radius); // speed increases the x values and it varies if speed is high then it speeds faster!  // speed used the time i use the platform for so faster spinning means more time spent watch that platform!
        popMatrix(); // saves the transformation and reverts the coordinate system to normal
        r = r+5;
      }
    }
  }






  //colours the circle in the centre ! //circle in the centre represent the emotion!!
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
    } else {
      noStroke();
      fill(124, 124, 124);
    }
  }

  void deviceColours() { // colours each rectangle to platform colours and others as another colour!
    String platforms = this.platform;
    if (platforms.equals("Twitch")) {
      stroke(145, 70, 255);
      strokeWeight(2.6);
    } else if (platforms.equals("Youtube")||platforms.equals("Netflix")) {
      stroke(255, 174, 201);
      strokeWeight(2.6);
    } else {
      stroke(173, 235, 179);
    }
  }

  void edutainmentsChecker() { // customises the device where it is education or entertainment!!
    String edu = this.edutainment;
    if (edu.equals("Education")) {
      strokeWeight(3);
      stroke(0, 150, 255); //Light blue colour
    } else if (edu.equals("Entertainment")) {
      strokeWeight(3);
      stroke(255, 105, 180); //hot pink
    }
  }
   

 void dayControls(){                    //method that generate more numbers then others depending on the day they watch the certain platform
 int days =this.day;
 if (days==1){
    xPos+=random(-1,2);
    yPos+=random(-2,3);}
 else if(days==2){
    xPos+=random(-6,6);
    yPos+=random(-9,9);
 }
 else if(days==3){
 xPos+=random(-10,10);
 yPos+=random(-14,16);}
 else if(days==4){
 xPos+=random(-15,15);
 yPos+=random(-20,21);}
 else if(days==5){
 xPos+=random(-20,20);
 yPos+=random(-28,28);}
 else if(days==6){
 xPos+=random(-25,25);
 yPos+=random(-35,36);
 }
 else if(days==7){
 xPos+=random(-30,40);
 yPos+=random(-45,46);} 
 }

  
}
