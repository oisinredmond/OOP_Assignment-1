class Fuelbar
{
  float bar_height;
  float bar_width;
  int posx;
  int posy;
  float fuel;
  float fuel_height;
  float fuel_loss;
  
  Fuelbar(int bar_height,int bar_width,int posx,int posy)
  {
    this.bar_height = bar_height;
    this.bar_width = bar_width;
    this.posx = posx;
    this.posy = posy;
    fuel_height = bar_height;
  }
  
  void render()
  {
    stroke(255,0,0);
    noFill();
    rect(posx,posy,bar_width,bar_height);
    
    fuel_loss = map(ship_speed,0,1000,0,1);
    if(fuel_height > 0)
    {
      fuel_height = fuel_height - (0.3*fuel_loss);
    }
    
    for(float i = 0; i <fuel_height; i++)
    {
      float j = map(i,0,bar_height,0,255);
      stroke(255,j,0);
      line(posx,(bar_height*2) - i + 16,posx + bar_width,(bar_height*2) - i + 16);
    }
    
    
    textSize(25);
    fill(0,255,0);
    text("FUEL",posx,posy + bar_height + 20);
  }
}