JSONObject json;
int seatValue;
PShape seat; 
void setup(){
  json = loadJSONObject("https://api.thingspeak.com/channels/606482/fields/1/last.json");
  seatValue = json.getInt("field1");
  println(seatValue);
  size(500,500);
}

void draw(){
  
  json = loadJSONObject("https://api.thingspeak.com/channels/606482/fields/1/last.json");
  seatValue = json.getInt("field1");
  size(500,500);
  seat = createShape(RECT, 250,250,15,15);
  
  if (seatValue == 1){
    seat.setFill(color(#FF0A0A));
  }
  
  if (seatValue == 0){
    seat.setFill(color(#BFBDBD));
  }
  
  shape(seat);
  
  
}
