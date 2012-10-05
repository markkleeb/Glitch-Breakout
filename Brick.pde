public class Brick {  
  Rectangle rectangle;
  // BRICK PROPERTIES --
  boolean hasStroke = false;
  color strokeColor = #FFFFFF;
  boolean hasFill = true;
  color fillColor = color(random(0, 255), random(0, 255), random(0, 255));

  int x = gameFrameWidth/2;
  int y = 270;

  boolean respawns = true;
  int timeToRespawn = 6; // time is in frames

  int frame;
  boolean imAlive;

  Brick(int X, int Y, int W, int H, boolean HASSTROKE, color STROKE, boolean HASFILL, color FILL) {
    rectangle = new Rectangle(W, H, HASSTROKE, STROKE, HASFILL, FILL);
    rectangle.setPosition(X, Y);
    imAlive = true;
  }
  
  void refresh() {
    if (imAlive) {
      rectangle.drawYourself();
    }
    else {
      if (respawns) {
        frame++;
        if (frame>timeToRespawn) {
          // rise up from your grave, brick
          imAlive=true;
        }
      }
    }
  }

  void die() {
    imAlive = false;
    frame = 0;
  }
}

