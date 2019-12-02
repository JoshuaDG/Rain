class Drop {
  float z = random(0,20);
  float x = random(width);
  float y = random(-500, -50);
  float yspeed = map(z, 0 ,20, 5, 20);
  float len = map(z, 0 ,20, 1, 20);
  
  void fall(){
    y = y + yspeed;
    if(y > height){
      x = random(width);
      y = random(-200, -100);
      yspeed = map(z, 0 ,20, 5, 15);
    }
  }
  
  void show(){
    float thick = map(z, 0 ,20,1, 3);
    strokeWeight(thick);
    if(len <= 5){
      stroke(141, 88, 215);
    }else if(len > 5 && len <= 12){
      stroke(125, 56, 215);
    }else{
      stroke(102, 20, 209);
    }
    line(x,y,x,y + len);
  }
  
}
