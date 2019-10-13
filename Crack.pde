class Crack {
  float startTime;
  float duration;
  boolean isPlaying = false;
  
  Crack() {
    duration = crack.duration() * 1000;
  }
  
  void update() {
    float now = millis();
    float playbackPosition = now - startTime;
    // if we've been playing longer than the duration of the crack sound, set isPlaying to false
    if (playbackPosition >= duration) {
      isPlaying = false;
    }
  }
  
  void trigger() {
    // if 'h' is pressed, the heart will crack
    if (keyPressed) { 
      if (key == 'h') {

        isPlaying = true;
        startTime = millis();
      }
    }
  }

  void display() {
    // display whole heart w crack animations
    if (isPlaying) {
      background (0);
      
      float now = millis();
      float playbackPosition = now - startTime;
      float animationProgress = map(playbackPosition, 0, duration, 0, 1);
      
      // heart 
      fill (200, 0, 0);
      beginShape ();
      vertex (250, 200);
      bezierVertex (250, 200, 400, 125, 250, 300);
      vertex (250, 200);
      bezierVertex (250, 200, 100, 125, 250, 300);
      endShape ();
      // heart cracks : FIX
      strokeWeight (5);
      stroke (0);
      if (animationProgress >= 0.1) {
        line (250, 200, 260, 210); // 1
        crack.play (1.0, 1.0);
      }
      if (animationProgress >= 0.2) {
        line (260, 210, 250, 220); // 2
      }
      if (animationProgress >= 0.3) {
        line (250, 220, 260, 230); // 3
      }
      if (animationProgress >= 0.4) {
        line (260, 230, 250, 240); // 4
      }
      if (animationProgress >= 0.5) {
        line (250, 240, 260, 250); // 5
      }
      if (animationProgress >= 0.6) {
        line (260, 250, 250, 260); // 6
      }
      if (animationProgress >= 0.7) {
        line (250, 260, 260, 270); // 7
      }
      if (animationProgress >= 0.8) {
        line (260, 270, 250, 280); // 8
      }
      if (animationProgress >= 0.9) {
        line (250, 280, 250, 300); // 9 
      }
    }
  }
}
  
  
  
