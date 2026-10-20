// assigning data list
String [] streamData ;
String [][] data; // do rows ()[columns]
int [] platform;


void setup() {
  size(900, 900);
  streamData = loadStrings("big data 100(Sheet1).csv");//saving the file to info variable
  data = new String[streamData.length][]; // data is initialised and the size of the array is the size of the streanData
  //printArray(info);
  //where i initailise the list

  for (int row = 0; row<streamData.length; row= row+1) {
    String splitData [] = split(streamData[row],",");
    printArray(splitData);//data of each split (idk if i will do row and columns we will see so far data is loaded and in now i have to figure out what ill will do with data?)
  }
}

void draw() {
}
