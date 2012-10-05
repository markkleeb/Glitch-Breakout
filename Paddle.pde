public class Paddle {
  Rectangle rectangle;
  // PADDLE PROPERTIES --
  int width = 60;
  int height = 5;
  boolean hasStroke = false;
  color strokeColor = #FFFFFF;
  boolean hasFill = true;
  color fillColor = #ffffff;
  
  int x = gameFrameWidth/2;
  int y = int(random(0, height));
  
  Paddle() {
    rectangle = new Rectangle(width, height, hasStroke, strokeColor, hasFill, fillColor);
    rectangle.setPosition(x, y);
  }

  void refresh() {
    updatePosition();
    rectangle.setPosition(x, y);
    rectangle.drawYourself();
  }

  void updatePosition() {
    x += random(-100, 100);
    x = constrain(x, 0, gameFrameWidth-width);
  }
}

