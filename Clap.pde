class Clap {

  //if 'c' is pressed, confetti / fireworks will appear

void trigger (){
    if (keyPressed) {
    if (key == 'c') {
      clappy ();
    }
  }
}
  
  void clappy () {
    background (#FAF2D7);
    clap.play (1.0, 1.0);
    
    float xPos = random (0, 500);
    float yPos = random (0, 500);
    float rad = random (5, 80);
    
    float r = random (255);
    float g = random (255);
    float b = random (255);
    
    fill (r, g, b);
    ellipse (xPos, yPos, rad, rad);


}}
