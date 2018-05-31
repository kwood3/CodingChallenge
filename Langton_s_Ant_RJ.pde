//Langton's Ant (Rougayyah's Version) 

void draw()
{
  col1 = random (255); 
  col2 = random(255);
  col3 = random (255); 
  langton.moveForward();

}

void setup()
{
  size(400, 400);
  background(255);
  langton = new ant((int)floor(width/2), (int)floor(height/2));
}
{
ant langton;

}

class ant
{
  int ax;
  int ay;
  String dir = "right";
float col1; 
float col2;
float col3; 


  public ant(int xa, int ya)
  {
    ax = xa;
    ay = ya;
  }

  void moveForward () /* Method used after instantiating an object of my class. 
   since main is a static method, Non-static methods cannot be called without 
   an object. */ 

  {
    //when the ant is actually moving (it's direction of movement). 

    if ( dir == "right" )
    {
      ax+=1;
    } else if ( dir == "left")
    {
      ax-=1;
    } else if ( dir == "up")
    {
      ay-=1;
    } else if ( dir == "down")
    {
      ay+=1;
    }

    // when the ant turns

  
  color cp = get(ax, ay);
  if (cp != color(255, 255, 255))
  {
    //turn left. make white
    if (dir == "right")
    {
      dir = "up";
    } else if (dir == "up")
    {
      dir = "left";
    } else if (dir == "left")
    {
      dir = "down";
    } else if (dir == "down")
    {
      dir = "right";
    }
    stroke(255);
    point(ax, ay);

   
  } else
  {
    //turn right. make black
    if (dir == "right")
    {
      dir = "down";
    } else if (dir == "up")
    {
      dir = "right";
    } else if (dir == "left")
    {
      dir = "up";
    } else if (dir == "down")
    {
      dir = "left";
    }



    stroke(random(255), random (255), random(255)) ; //change colours based on where it is specifically. 
    point(ax, ay);
  }
        loadPixels(); 
int pix = ax * width + ay; 
        if (cp == color(255, 255, 255)) {
          pixels[pix] = color(255);
        } else {
          pixels[pix] = color(col1, col2, col3);
        }
     
    
    updatePixels();

}




}
}