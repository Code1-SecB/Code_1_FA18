// ------------------------------------------------------------------------------
// DECLARING A SINGLE VARIABLE VS. DECLARING AN ARRAY ---------------------------
// ------------------------------------------------------------------------------

// Declaring a single variable and declaring an array of variables of that type 
// without initializing its value look pretty similar -
// the only difference is that there is an empty bracket [] after the type name.

int a;      // declare an uninitialized integer variable called 'a'.
int[] b;    // declare an uninitialized array of integers called 'b'.

//println(b);  // If you try to use the array without initializing, 
               // you will get a warning.

// if you declare a variable is not initialized, 
// that means there is no value.
// In the case of an uninitialized array, 
// it doesn't know how many spaces it has (it doesn't know how much memory to reserve)

// ------------------------------------------------------------------------------
// DECLARING AND INITIALIZING MANUALLY ------------------------------------------
// ------------------------------------------------------------------------------

int oneInt = 10;    // declare and initialize integer 'oneInt', assign value of 10
int[] intArray = {50, -999, 2, 3, 4, 100};  // declare and initialize array of 
                                            // integers intArray, manually give values

// We can access and assign all the values inside the array
// just like we would for any other variable.

intArray[1] = 77;          // assign intArray at index position [1] value of 77
intArray[5] = oneInt;      // assign intArray at index position [5] value of oneInt (10)
intArray[2] = intArray[5]; // assign intArray at index position [2] value of intArray
                           // at position [5] (oneInt -> 10)

println(intArray);    // Processing nicely prints out the whole array for us.
println(intArray[2]); // Or we can print out individual positions in the array.

// ------------------------------------------------------------------------------
// GIVING OR DOING SOMETHING WITH VALUES VIA LOOPS ------------------------------
// ------------------------------------------------------------------------------

// Often we will want to make an array that contains more positions in it than we 
// would want to manually initialize. We can do that by first telling Processing
// how much space the array will take up in memory:

int[] bigIntArray = new int[1000]; // bigIntArray will contain 1000 integers.

// In order to give everything in the array values, we could go through one by one...
bigIntArray[0] = 10;
bigIntArray[1] = 10;
bigIntArray[2] = 10;
bigIntArray[3] = 10;
// ... don't do this. Remember not to repeat yourself in your code! Loop!

// Loop to fill the array with all values of 10:
for (int i = 0; i < bigIntArray.length; i++) {
  bigIntArray[i] = 10;
}

// Note the use of the .length field of the array. 
// It is equal to 1000, because that is the size that we set it to when we created the array.

// We can check the values of the array by printing out the array name,
println(bigIntArray);

// or we could loop through ourselves and print it how we want to print it.
for (int i = 0; i < bigIntArray.length; i++) {
  println("bigIntArray at position " + i + " is: " + bigIntArray[i]);
}

// How big would this array be? 
int[] otherArray = new int[intArray[1]];

//ANSWER: 

// What about this?? All you have to do is resolve the value inside the bracket. 
// Start on the inside.
int[] lastArray = new int[intArray[bigIntArray[0] - 7]];

//ANSWER: 

// If you can't figure it out, just println() out their .length field!

// Fill both of these last arrays with values here:

//LOOP: