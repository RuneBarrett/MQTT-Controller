import mqtt.*;
MQTTClient client;

void setup() {
  client = new MQTTClient(this);
  client.connect("mqtt://<username>:<password>@192.168.1.***", "processing");
}

void draw() {}

void keyPressed() {
  client.publish("intelliLight/dimming", "UP");
}

void messageReceived(String topic, byte[] payload) {
  println("new message: " + topic + " - " + new String(payload));
}
