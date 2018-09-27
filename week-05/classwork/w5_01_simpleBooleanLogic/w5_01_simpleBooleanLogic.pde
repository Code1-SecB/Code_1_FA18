// simple boolean and logical statement example

boolean isTrue = true;
boolean isFalse = false;

if(isTrue){
  // the true boolean will satisfy the 'if' condition
  // so this will print
  println("Hello"); 
}

if(isFalse){
  // the false boolean will not satisfy the 'if' condition
  // so this will  not print
  println("Goodbye"); 
}

// the && symbol stands for 'and'
// ALL statements connected by && must be true
// to satisfy the condition
if(isTrue && 3>2){
  // both of the statements are true so this will print
  println("Both of the above are true"); 
}

if(isTrue && 5<2){
  // one of the above statements is false so this will not print
  println("One of the above is not true"); 
}

// the || symbol stands for 'or'
// ONLY ONE of the statements connected by || must be true
// to satisfy the condition
if(isTrue || 5<2){
  // one of the above statements is true so this will print
  println("One of the above is true"); 
}

// the ! symbol stands for 'not'
// it can be used to reverse a statement
// let's look at the first set of examples 
// but add the !

if(!isTrue){
  // the ! symbol reverses this true boolean
  // so this will not print
  println("Hello"); 
}

if(!isFalse){
  // the ! symbol reverses this false boolean
  // so this will print
  println("Goodbye"); 
}
