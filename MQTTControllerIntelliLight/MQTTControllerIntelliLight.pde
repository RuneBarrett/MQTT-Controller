import mqtt.*;
MQTTClient client;

void setup() {
  client = new MQTTClient(this);
  client.connect("mqtt://username:password@192.168.1.175", "processing");
}

void draw() {
}

void keyPressed() {
  if (key == 'U' || key == 'u')
    client.publish("intelliLight/dimming", "UP");
  if (key == 'D' || key == 'd')
    client.publish("intelliLight/dimming", "DOWN");
  if (key == 'P' || key == 'p')
    client.publish("intelliLight/lightMode", "party");
  if (key == 'N' || key == 'n')
    client.publish("intelliLight/lightMode", "normal");
}

void messageReceived(String topic, byte[] payload) {
  println("new message: " + topic + " - " + new String(payload));
}