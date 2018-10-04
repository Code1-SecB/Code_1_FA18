// Examples created by Bryan Ma
// https://github.com/whoisbma/Code_1_FA17/blob/master/week-03/w3_06_functionsReturn/w3_06_functionsReturn.pde

void setup() {
  noReturnFunction();
  
  int intResult = returnAnInt(100);
  print("100 x 2 is ...\t");
  println(intResult);
  println();

  String strResult = returnAString();
  print("returned string is ...\t");
  println(strResult);
  println();
  
  String str = "bet you can't count this, function";
  int lenOfStr = returnLengthOfString(str);
  print("length of 'str' is...\t");
  println(lenOfStr);
  println();
  
  int lenOfNextStr = returnLengthOfString("ok I was wrong");
  print("length of next string...\t");
  println(lenOfNextStr);
  println();
  
  int num1 = 11;
  boolean num1IsGreaterThanTen = isGreaterThanTen(num1);
  
  int num2 = 9;
  boolean num2IsGreaterThanTen = isGreaterThanTen(num2);
  
  println(num1 + " is greater than ten?/t" + num1IsGreaterThanTen);
  println(num2 + " is greater than ten?/t" + num2IsGreaterThanTen);
}

void draw() {
  
}

void noReturnFunction() {
  println("I am a function that doesn't return any value.");
  println("In other words, I am a 'side effect' function.");
}

int returnAnInt(int intParameter) {
  println("I am a function that returns an integer 2x the integer you put in my arguments.");
  return intParameter * 2;
}

String returnAString() {
  println("I am a function that returns a string, but takes no argument.");
  return "woo!";
}

int returnLengthOfString(String stringToMeasure) {
  println("I am a function that returns the length of the given String. This is redundant because processing gives us this function too, which belongs to the String object.");
  
  return stringToMeasure.length();
}

boolean isGreaterThanTen(int num) {
  println("I am a function that returns 'true' if the number given is greater than 10, otherwise returning 'false'");
  if (num > 10) {
    return true;
  } else {
    return false;
  }
}
