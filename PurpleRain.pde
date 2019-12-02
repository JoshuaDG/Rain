Drop[] drops = new Drop[400];
void setup() {
  size(1000,500);
  for (int i = 0; i < drops.length; i++){
    drops[i] = new Drop();
    //print(drops[i].len," ");
  }
}


void draw(){
  background(230, 230, 250);
    for (int i = 0; i < drops.length; i++){
    drops[i].show();
    drops[i].fall();
  }
}
