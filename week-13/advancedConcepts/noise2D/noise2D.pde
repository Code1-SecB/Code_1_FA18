float counter = 0.0;

void setup(){
  size(600,600);
  smooth(); 
}

void draw(){
  loadPixels();
  noiseDetail(10,0.5);

  float xoff = 0.0;
  
  for(int x = 0; x < width; x++){
    float yoff = 0.0;
    for(int y = 0; y < height; y++){
      float brightness = map(noise(xoff,yoff,counter), 0, 1, 0, 255);
      pixels[x+y*width] = color(brightness);
      
      yoff += 0.003;
    }
    xoff += 0.003;
  }
  counter += 0.1;
  updatePixels();
}
