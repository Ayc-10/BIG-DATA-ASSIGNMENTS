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
    radius = 100;
    this.day = day;
  }// contructor method - where assignment of values are!


  //what you want to make

  //

  // own method to make for the class
  // void amethod(){
  // method about what u want ur processing thing to do?? move,twerk etc
  //}

  void draw() {    // change draw
    for (int i =0; i<100; i=i+1)
      if (istrue == true) {

        pushMatrix();
        translate(width/2, height/2);
        rotate(radians(r));
        circle(xPos, yPos, 2);
        r = r+21.5;

        popMatrix();
        pushMatrix();
        translate(width/2, height/2);
        circle(0, 0, 20);
        popMatrix();
      }
  }

 
}
