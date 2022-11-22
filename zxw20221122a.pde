int num = 60;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(600, 600);
  noStroke();
  fill(255, 153); 
}

void draw() {
  background(random(10,110),random(10,150),random(100,209)); 
  
 fill(232,106,84);
 stroke(255);
 strokeWeight(7);
 ellipse(300,250,100,200);

 fill(232,106,84);
 stroke(255);
 strokeWeight(7);
 ellipse(300,450,100,100);

  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
