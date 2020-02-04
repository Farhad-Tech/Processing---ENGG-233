void setup(){
  size(400, 400);
  // creates parking stall objects
  ParkingStall ps1 = new ParkingStall(10, 10, 50, 70);
  ParkingStall ps2 = new ParkingStall(60, 10, 50, 70);
  
  // sets parking stalls time of occupation
  Date ps1_date = new Date (3, 7, 6, true);
  ps1.setStatus(true, ps1_date );
  Date ps2_date = new Date (3, 5, 6, true);
  ps2.setStatus(false, ps2_date); 
  
  // draws parking stalls on the screen  
  ps1.drawStall();
  ps2.drawStall();
 
  // displays the time stall occupied on the console
  println( "stall ps1 was occupied on: " + ps1.timeTaken);

}


class ParkingStall {
  // STALL ATTRIBUTES
  boolean occupied;
  Date timeTaken;

  // DIMENSIONS AND POSITION
  float stallWidth;
  float stallHeight;
  float posX;
  float posY;

  ParkingStall(float x, float y, float w, float h) {
    occupied = false;
    posX = x;
    posY = y;
    stallWidth = w;
    stallHeight = h;
  }

  void drawStall() {
    if (occupied)
      fill(color(255, 90, 71)); // RED STALL
    else
      fill(color(152, 251, 152));  // GREEN STALL
    strokeWeight(4);
    stroke(255);
    rect(posX, posY, stallWidth, stallHeight);
    strokeWeight(1);
  }

  // Sets whether the stall is occupied or not
  void setStatus(boolean status, Date time)
  {
    occupied = status;
    if (occupied) {
      timeTaken = new Date(time);
    }
  }
}