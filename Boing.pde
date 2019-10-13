class Boing {
  boolean boingIsHappening = false;
  float rectYPos1 = 300;
  float rectYPos2 = 350;
  float rectYPos3 = 400;
  int rectYPos4 = 450;
  float startTime;
  
  boolean bounced = false;
  boolean isPlaying = false;
  

void trigger () {
  //if 'b' is pressed, the spring wil jump up
  if (keyPressed) {
    if (key == 'b') {
      boingIsHappening = true ;
      
    }
  }
}

void display () {

  if (boingIsHappening) {
    // rects spring up (like boing)
    background (#B7A9F0);
    fill (#F2AB1B);
    rect (250, rectYPos1, 300, 25);
    rect (250, rectYPos2, 275, 25);
    rect (250, rectYPos3, 250, 25);
    rect (250, rectYPos4, 225, 25);
    
    if (bounced == false) { // compresses down to 450 before bouncing
      if (rectYPos1 < 450) {
        rectYPos1 = rectYPos1 + 10;
      }
    }
    
    if (rectYPos1 == 450) { // once it reaches 450, bounce is true
        bounced = true;
        isPlaying = true;
        startTime = millis ();
        boing.play ();
    }
    
    if (bounced == true) { // once its true, rects spring up
      if (rectYPos1 > 100) {
        rectYPos1 = rectYPos1 - 10;
      }
    }
    
    rectYPos2 = map (rectYPos1, 300, 100, 350, 250); // rest of the spring 
    rectYPos3 = map (rectYPos1, 300, 100, 400, 350); // mapped to rectYPos1
    }
    
   if (isPlaying) {
      // sees how long sound is and track how long its been playing
      float now = millis();
      float playbackPosition = now - startTime;
      float duration = boing.duration() * 1000;
      // tells animation to stop and resets the screen
    if (playbackPosition >= duration) {
      isPlaying = false;
      boingIsHappening = false;
      bounced = false;
      rectYPos1 = 300;
    }
    }
  }
}
