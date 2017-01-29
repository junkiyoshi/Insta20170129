class Circle
{
  PVector center;
  PVector location;
  float size;
  float dist;
  float angle;
  color bodyColor;
  
  Circle(PVector c, float a)
  {
    center = c;
    location = new PVector(0, 0);
    size = 5;
    dist = 0;
    angle = a;
    bodyColor = color(frameCount % 255, 255, 255);
  }
  
  void run()
  {
    update();
    display();
  }
  
  void update()
  {
    float x = dist * cos(radians(angle)) + center.x;
    float y = dist * sin(radians(angle)) + center.y;
    location = new PVector(x, y);
    
    size += 0.15;
    dist += 1;
    angle += 1;
  }
  
  void display()
  {
    fill(bodyColor);
    noStroke();
    
    ellipse(location.x, location.y, size, size);
  }
  
  boolean isDead()
  {
    if(location.x > width + size || location.x < -size || location.y > height + size || location.y < -size)
    {
      return true;
    }
    return false;
  }
}