public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  myFractal(0,0,200);
  myFractal(500,0,400);
  ellipse(250,250,180,180);
}
public void myFractal(int x, int y, int siz){
  if(siz <= 20){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    noStroke();
    rect(x+y,x+y,siz,siz);
  }else{
    myFractal(x,y,siz/2);
    myFractal(x + (siz/2), y, siz/2);
    myFractal(x + (siz/4), y - (siz/2), siz/2);
  }
}
