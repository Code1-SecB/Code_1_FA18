float offset = 0.0;

void setup(){
  size(600,600);
  fill(255);
}

void draw(){
  background(255);
  float noiseS = map(noise(offset),0,1,100,300);
  float noiseX = map(noise(offset),0,1,0,width);
  float noiseY = map(noise(offset),0,1,0,width);
  float noiseR = map(noise(offset),0,1,0,255);
  float noiseB = map(noise(offset),0,1,0,255);
  float noiseG = map(noise(offset),0,1,0,255);
  fill(noiseR, 255-noiseG, noiseB);
  ellipse(noiseX,noiseY,noiseS,noiseS);
  offset += 0.005;
  
  //loadPixels();
  //noiseDetail(9,0.5);
  
  //float xoff = 0.0;
  //for(int x = 0; x < width; x++){
  //  float yoff = 0.0;
  //  for(int y = 0; y < height; y++){
  //    color brightness = color(map(noise(xoff,yoff,counter),0,1,0,255));
  //    pixels[x+y*height] = color(brightness);
  //    yoff += 0.01;
  //  } 
  //  xoff += 0.01;
  //}
  //updatePixels();
  //counter += 0.1;
}
