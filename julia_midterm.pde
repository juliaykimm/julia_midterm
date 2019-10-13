import processing.sound.*;

// classes
Crack cracks;
Boing boings;
Clap claps ;
Boulder boulders;

// sound files
SoundFile crack;
SoundFile boing;
SoundFile boulder;
SoundFile clap;


void setup () {
  size (500, 500);
  rectMode (CENTER);
  smooth ();
  
  // load sound files
  crack = new SoundFile (this, "crack.wav");
  boing = new SoundFile (this, "boing.wav");
  boulder = new SoundFile (this, "boulder.wav");
  clap = new SoundFile (this, "clap.wav");
  
  // classes
  cracks = new Crack ();
  boings = new Boing ();
  //boulders = new Boulder ();
  claps = new Clap ();
  boulders = new Boulder ();

}

void draw () {
  background (#F4D7F5);
  noStroke ();
  String instructions = "press b, g, c, or h to begin" ;
  fill (0);
  text (instructions, 250, 300, 300, 100);
  
  
  // call classes
  cracks.trigger();
  cracks.update();
  cracks.display();
  
  boulders.trigger ();
  boulders.show ();
 
  boings.trigger ();
  boings.display ();

  claps.trigger ();
  
}
