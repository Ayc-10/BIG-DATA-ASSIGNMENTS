// assigning data list
String [] streamData ;
String [][] data; // do rows ()[columns]
String [] platform;
int counterLivestreaming = 0; // live streaming services
int counterOther = 0 ; // streaming services


void setup() {
  size(900, 900);
  streamData = loadStrings("big data 100(Sheet1).csv");//saving the file to info variable
  //data = new String[streamData.length][]; // data is initialised and the size of the array is the size of the streamData
  platform = new String[streamData.length];

  //printArray(info);
  //where i initailise the list

  for (int i = 1; i<streamData.length; i= i+1) {

    String splitData [] = split(streamData[i], ",");

    platform[i] = splitData[1]; // data of all the platforms
    //printArray(platform);

    if (platform[i].equals("Twitch")) {
      counterLivestreaming = counterLivestreaming+1;     //check how many of that is in the platform array is equal to twitch if so then it is counted!!
      //println(counterLivestreaming);
    } else {
      counterOther = 100 - counterLivestreaming; // the streaming services
    }
  }
}


void draw() {
}
