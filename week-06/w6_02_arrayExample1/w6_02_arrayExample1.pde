int[] placeHolder = new int[4];
// this notation will set up an empty array with 
// a length of 4 --> { , , , }

int[] myNums = {6,2,9,5,7,4,3,1,22};
             // 0,1,2,3,4,5,6,7,8 <-- index values
             // myNums.length = 9 <-- length of array
             
String[] names = {"Cierra","Chyelle","Fu"}; 
                //   0         1       2
void setup(){
  //println(myNums[0]);
  //println(myNums.length);
  
  // calculate length of array and save to variable
  int length = myNums.length;
  
  // print the last entry in the array
  println(myNums[length-1]);
  
  // print the first entry in the array
  println(myNums[0]);
  
  // print the second entry in the array
  println(names[1]);
}
