class Boulder {

int radius = 700;
boolean boulderFalling;
boolean isPlaying = false;
float startTime;

void trigger () {

  // if key is pressed, the boulder begins to fall
  if (keyPressed) { 
    if (key == 'g') {
      boulderFalling = true;
    }
  }
}

void show () {
  // when the boulder starts falling, animation starts
  if (boulderFalling) { 
    background (#0F7417);
    // boulder shadow
    float shadowRadius = map (radius, 700, 100, 900, 80);
    float shadowXPos = map (radius, 700, 100, 400, 250);
    float shadowYPos = map (radius, 700, 100, 400, 250);
    fill (#17431A);
    ellipse (shadowXPos, shadowYPos, shadowRadius, shadowRadius); 
    // boulder
    fill (#B7B3B3);
    ellipse (250, 250, radius, radius);
    // circle gets smaller ("falls")
    if (radius > 100) {
      radius = radius - 10;
    }
    // when the radius is 320, sound starts playing
    if (radius == 320) {
     boulder.play ();
     radius = radius - 10;
     isPlaying = true;
     startTime = millis ();
    }
    // when the radius is 100, ground cracks (boulder is on the ground)
    if (radius == 100) {
      stroke (#28432A);
      strokeWeight (2);
      // cracks
      line (312, 190, 312, 175);
      line (312, 175, 325, 185);
      line (325, 185, 330, 140);
      line (312, 270, 325, 250);
      line (325, 250, 335, 285);
      line (335, 285, 360, 240);
      line (360, 240, 375, 275);
      line (240, 310, 260, 325);
      line (260, 325, 250, 350);
      line (250, 350, 280, 370);
      line (215, 315, 175, 315);
      line (175, 315, 195, 360);
      line (195, 360, 175, 355);
      line (175, 355, 175, 370);
      line (180, 275, 175, 260);
      line (175, 260, 165, 280);
      line (165, 280, 140, 250);
      line (205, 215, 175, 205);
      line (175, 205, 190, 160);
      line (190, 160, 150, 175);
    }
    
  }
    if (isPlaying) {
      // sees how long sound is and track how long its been playing
      float now = millis();
      float playbackPosition = now - startTime;
      float duration = boulder.duration() * 1000;
      // tells animation to stop and resets the screen
    if (playbackPosition >= duration) {
      isPlaying = false;
      boulderFalling = false;
      radius = 700;
    }
    }
}

}
