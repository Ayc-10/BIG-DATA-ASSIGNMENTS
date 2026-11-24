ArrayList<data> visual = new ArrayList<data>();
import processing.sound.*;// accessing the libary for sounds
SoundFile helicopterBlades;
//Copyright information about the sound:not required using a sound from pixabi which allows sounds to be used,restributed without credit legally.
String [] streamData ;
boolean istrue = false;
float r;
float x;
float y;
float radius;


void setup() {
  randomSeed(435434); // allows the same randomly generated number to generate!
  size(1000, 1000);
  background(255);
  for(int i=0;i<height;i++){
  strokeWeight(1.0);                //Additional background linear gradient  go from blue and fades out ADDITIONAL not that important imo
  stroke(i,i,743);
  line(0,i,width,i);
}
  helicopterBlades = new SoundFile(this, "helicopter.mp3");// sound is saved to the variable called windTurbine
  streamData = loadStrings("big data 100(Sheet1).csv");//saving the file to streamData variable

  for (int i = 1; i<streamData.length; i= i+1) {
    String splitData [] = split(streamData[i], ",");// data is split and saved to splitData list which is a local variable
    String platform = splitData[1];
    float time = float(splitData[3]);
    int emotion = int(splitData[4]);
    int day = int(splitData[0]);
    String edutainment = splitData[5];
    x = random(0, width-50);
    y= random(0, height-60);
    data d = new data(x, y, platform, time, emotion, edutainment, day);
    visual.add(d);
    //Adding creating each object and adding to the list visual to be accessed later
  }

}





void draw() {
  for (data d : visual) {
    d.screens(); //The screens are drawed! 
    d.deviceColours();//colours the rectangles into the colours of the platforms!!
    
  }
  if (key =='m'){
    background(255);
    for(data d:visual){
      d.screens();
      //moves the x and y postion of the rectangle!
      d.dayControls();

}    
  }else if(key =='M'){ // CLEARS THE BACKGROUND IF U WANT TO
  background(255);}
}


//INTERATION BELOW
void mousePressed() {
  istrue = !istrue;
  if (istrue== true) {
    helicopterBlades.play();
    //loop() to loop
  } else {
    helicopterBlades.pause();
  }
}

void keyPressed(){} 
