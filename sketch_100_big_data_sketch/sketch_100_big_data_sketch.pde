ArrayList<data> visual = new ArrayList<data>();
String [] streamData ;
boolean istrue = false;
float r;



// remove after u do the class stuff
int counterLivestreaming = 0; // live streaming services
int counterOther = 0 ; // streaming services


void setup() {
  size(900, 900);
  streamData = loadStrings("big data 100(Sheet1).csv");//saving the file to streamData variable

  //declaring the list called visual and fixing the size to 100
  for (int i = 1; i<streamData.length; i= i+1) {
    String splitData [] = split(streamData[i], ",");// data is split and saved to splitData list which is a local variable
    String platform = splitData[1];
    float time = float(splitData[3]);
    int emotion = int(splitData[4]);
    int day = int(splitData[0]);
    String edutainment = splitData[5];
    float  x = random(100, 200); // random x values
    float y = random(0, 300); // random y values
    data d = new data(x, y, platform, time, emotion, edutainment, day);
    visual.add(d);
    //Adding creating each object and adding to the list visual to be accessed later




    //printArray(splitData);

    // but this in the class section
    if (platform.equals("Twitch")) { // can use this to colour all platform to purple etc??
      counterLivestreaming = counterLivestreaming+1;     //check how many of that is in the platform array is equal to twitch if so then it is counted!!
      //println(counterLivestreaming);
    } else {
      counterOther = 100 - counterLivestreaming; // the streaming services
    }
  }
}



void draw() {
  for (data d : visual) {
    d.draw();
  }
}

void mousePressed() {
  istrue = !istrue;
}
