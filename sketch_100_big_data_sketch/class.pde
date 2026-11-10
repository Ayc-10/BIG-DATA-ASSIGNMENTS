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

  void draw() {
    {
      if (istrue == true) {
        fill(0);
        rect(xPos, yPos, 60, 90);
        float tempx = xPos +20;
        float tempy= yPos +90;
        rect(tempx,tempy,25,10);
        pushMatrix(); // store the transformation
        float centreW = xPos+25;
        float centreH = yPos+40;
        translate(centreW, centreH);
        rotate(radians(r));
        colourforCirle();
        noStroke();
        rect(0, 0, speed/2, 20);
        edutainmentsChecker();
        circle(0, speed, radius);
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
      fill(124,124,124);
    }
  }
  
  void deviceColours(){ // colours each rectangle to platform colours and others as another colour!
    String platforms = this.platform;
    if (platforms.equals("Twitch")){
    stroke(145, 70, 255);
    strokeWeight(2.6);}
    else if(platforms.equals("Youtube")||platforms.equals("Netflix")){
    stroke(255,174,201);
    strokeWeight(2.6);}
    else{
    stroke(173, 235, 179);
    }
    }
  
  void edutainmentsChecker(){ // customises the device where it is education or entertainment!!
   String edu = this.edutainment;
   if (edu.equals("Education")){
     strokeWeight(3);
     stroke(82,207,240);
   }
   else if(edu.equals("Entertainment")){
     strokeWeight(3);
     stroke(125,40,127);
   }  }
}
  
  
  
  
    
    
    

  
  
  
  
  
