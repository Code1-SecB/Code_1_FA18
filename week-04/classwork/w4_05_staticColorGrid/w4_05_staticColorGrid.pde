fill(255,0,0);
background(255);
size(500,500);


for(int j = 0; j < 5; j++) {
  for(int i = 0; i < 5; i++) {
    fill(50*i,50*j,0); //0, 50, 100, 150, 200
    rect(100 * i, 100 * j, 100, 100);
  }
}
