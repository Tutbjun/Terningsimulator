int[] udfald = new int[6];

void setup(){
  size(350,375);
  textSize(20);
}

void draw(){
  nulstil();
  background(0);
  logik();
  graf();  
  delay(2000);  
}

void logik(){
  for (int i = 0; i < 100; i++){
    udfald[floor(random(0,1)*6)]++;
  }
}

void graf(){  
  pushMatrix();
  translate(29,275);
    for(int i=0;i<6;i++){
      fill(255);
      rect(i*50,50-(float)udfald[i]*10,40,(float)udfald[i]*10);
      fill(0);
      text(Integer.toString(udfald[i]),7+i*50,45);
      fill(255);
      text(Integer.toString(i+1),14+i*50,73);
    }
  popMatrix();
}

void nulstil(){
  for(int i = 0; i < 6; i++){
    udfald[i]=0;
  } 
}
