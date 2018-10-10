// Inventory of Global Variables
// All the variables we might need in our program listed here

int[] numbersArray = {7,4,9,2,30,77}; // length of 6
String[] animalsArray = {"dolphin","cat","giraffe", "zebra"};
               // index:    0        1       2          3
               // length:   1        2       3          4
String[] plantsArray = {"fern","pine tree","ivy", "aloe"};
boolean[] boolsArray = {true, true, false, false, true};
boolean[] boolsArray2 = {false, false, false, false, false};
color[] colorsArray = {color(255), color(255,0,0), color(0,255,255)};


// Inventory of Function Definitions
// All the functions we might want to call are defined here

// a custom function definition
// this function takes in ANY string array
// and returns its first value --> the value at index 0
String returnFirstString(String[] stringArray){
   return stringArray[0];    
}

String returnLastString(String[] stringArray){
  // getting the length of the array - 1 and setting it to a variable
  int lastIndex = stringArray.length-1;
  // use the above variable to bracket into your array at the last index
  return stringArray[lastIndex];  
}

void printIntegerArray(int[] intArray){
  for(int i = 0; i < intArray.length; i++){
  // i = 0, 1, 2, 3 ... length 
    println("i: " + i + " value: " + intArray[i]);
  }
}

void printBooleansArrayOpposite(boolean[] boolsArray){
  for(int j = 0; j < boolsArray.length; j++){
    println(!boolsArray[j]); 
  }
}

void setup(){
  // Calling functions that were defined above
  // Passing arrays of the appropriate dataType as parameters
  
  println(returnFirstString(animalsArray)); 
  println(returnFirstString(plantsArray));
  println(returnLastString(animalsArray));
  printIntegerArray(numbersArray);
  printBooleansArrayOpposite(boolsArray);
  printBooleansArrayOpposite(boolsArray2);
}
