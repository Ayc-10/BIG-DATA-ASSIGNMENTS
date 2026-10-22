// assigning data list
// class name class var name;
String [] streamData ;
String [] platform;
// remove after u do the class stuff
int counterLivestreaming = 0; // live streaming services
int counterOther = 0 ; // streaming services


void setup() {
  size(900, 900);
  streamData = loadStrings("big data 100(Sheet1).csv");//saving the file to info variable
  //data = new String[streamData.length][]; // data is initialised and the size of the array is the size of the streamData
  platform = new String[streamData.length];

  //where i initailise the list

  for (int i = 1; i<streamData.length; i= i+1) {

    String splitData [] = split(streamData[i], ",");// data is split and saved to splitData list which is a local variable
    float time = float(splitData[3]);  // will be used for the class (need to figure out what i will be making)
    float emotion = int(splitData[4]);
    String day = splitData[0];
    String edutainment = splitData[5];
    
    // need to figure out what i want to do with the information and more

    platform[i] = splitData[1]; // data of all the platforms
    //printArray(splitData);

    // but this in the class section
    if (platform[i].equals("Twitch")) { // can use this to colour all platform to purple etc??
      counterLivestreaming = counterLivestreaming+1;     //check how many of that is in the platform array is equal to twitch if so then it is counted!!
      //println(counterLivestreaming);
    } else {
      counterOther = 100 - counterLivestreaming; // the streaming services
    }
  }
}


void draw() {
}
