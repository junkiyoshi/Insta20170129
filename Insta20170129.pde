import java.util.*;

ArrayList<Circle> circles;

void setup()
{
  size(1024, 1024);
  smooth();
  frameRate(30);
  colorMode(HSB);
  background(255);
  
  circles = new ArrayList<Circle>();
}

void draw()
{
  background(255);
  
  Iterator<Circle> it = circles.iterator();
  while(it.hasNext())
  {
    Circle c = it.next();
    c.run();
    if(c.isDead())
    {
      it.remove();
    }
  }
  
  if(frameCount % 15 == 1)
  {
    circles.add(new Circle(new PVector(width / 2, height / 2), 0));
    circles.add(new Circle(new PVector(width / 2, height / 2), 90));
    circles.add(new Circle(new PVector(width / 2, height / 2), 180));
    circles.add(new Circle(new PVector(width / 2, height / 2), 270));
  }
  
  /*
  saveFrame("screen-#####.png");
  if(frameCount > 900)
  {
     exit();
  }
  */
}