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
    radius = 50;
    this.day = day;
  }// contructor method - where assignment of values are above!




  void draw() {
    for (int row= 0; row<10; row=row+1) {
      for (int col=0; col<10; col=col+1) {
        float rectW = width/10;
        float rectH = height/10;
        rect(row*rectW+20, col*rectH+20, 50, 90);
        circle(row*rectW+50/2, col*rectH+20+90/2, 20);  // make the circle rotate in the circle and let it bleed let the fill colour be the emotion! :)
      }
    }
  }
  // colour change method for the visulisaton
  void colourChanges() {
  }// where the colour change of each is change and will be called in the draw ;)
}//coulorChanges()
