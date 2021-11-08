Dot dot;
Fish fish;
Box2DProcessing box2d;
PImage img;

import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
ArrayList boundaries;


void setup() {
  size(800,600);
  frameRate(60);
  background(0);
  //dot = new Dot(new Vector(10,10),new Vector(0,0),new Vector(0,0),1,10);
  fish = new Fish(new Vector(100,200),new Vector(0,0),new Vector(0,0),10,50);
  //fish.setTarget(new Vector(width,height));
  img = loadImage("fish.png");
  
  boundaries = new ArrayList();
  boundaries.add(new Boundary(width/2,height-5,width,10,0));
  boundaries.add(new Boundary(width/2,5,width,10,0));
  boundaries.add(new Boundary(width-5,height/2,10,height,0));
  boundaries.add(new Boundary(5,height/2,10,height,0));
  
}


ArrayList<Dot> dots = new ArrayList<Dot>();
boolean fc = false;


void mousePressed() {
  // Check to see if the mouse was clicked on the box
  if (box.contains(mouseX, mouseY)) {
    // And if so, bind the mouse location to the box with a spring
    spring.bind(mouseX,mouseY,box);
  }
}


void draw() {
  /*if (fc && !mousePressed) {
      dots.add(dot);
      fc = false;
    }
     fill(64);
      rect(0,0,width,height/4);
      fill(0);
      rect(0,height/4,width,height);
    if (dots.size() > 0) {
     
     
      for (int i = 0; i < dots.size(); i++) {
        Dot dot = dots.get(i);
        if (dot.pos.y > height/4) {
          dot.addForce(new Vector(-dot.velo.x*2,-dot.velo.y*2));
        }
       dot.addForce(new Vector(0,dot.mass*1)); 
       dot.update();
       
       if (dot.pos.y > height - 10)
         dots.remove(i);
       }
       if (dots.size() > 0) fish.setTarget(dots.get(0));
    }
    fish.update();
  if (mousePressed) { 
    if (!fc) {
      dot = new Dot(new Vector(mouseX,mouseY),new Vector(0,0),new Vector(0,0),5,10);
      
      fc = true; 
    }
    dot.move(new Vector(mouseX,mouseY));
  }*/
 
      if (fc && !mousePressed) {
      dots.add(dot);
      fc = false;
    }
    
      fill(64);
      rect(0,0,width,height/4);
      fill(0);
      rect(0,height/4,width,height);
    if (dots.size() > 0) {
     
     
      for (int i = 0; i < dots.size(); i++) {
        Dot dot = dots.get(i);
        if (dot.pos.y > height/4) {
          dot.addForce(new Vector(-dot.velo.x*2,-dot.velo.y*2));
        }
       dot.addForce(new Vector(0,dot.mass*1)); 
       dot.update();
       
       if (dot.pos.y > height - 10)
         dots.remove(i);
       }
       if (dots.size() > 0) fish.setTarget(dots.get(0));
    }
    fish.update(new Vector(mouseX,mouseY));
  if (mousePressed) { 
    if (!fc) {
      dot = new Dot(new Vector(mouseX,mouseY),new Vector(0,0),new Vector(0,0),5,10);
      
      fc = true; 
    }
    dot.move(new Vector(mouseX,mouseY));
  }
    
  
  
}
void drawbackground() {
    
}
