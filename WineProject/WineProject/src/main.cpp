#include <Arduino.h>
#include <MoistSensor.h>
#include <MoistSensor.cpp>
#include <WiFiServerController.h>
#include <WiFiServerController.cpp>
#include <AccelStepper.h>


int pin = D0;// Define the pin to which the moisture sensor is connected
long lastUpdateTime;
long interval; // Time interval for periodic actions
long currentTime;
char ssid[] = "OnePlus Nord"; // WiFi network SSID
char password[] = "123456789"; // WiFi network password
int targetPosition = 0; // Initial target position for the stepper motor
const int maxDistance = 12500; // Maximum distance the stepper motor can travel

// Define pins for the stepper motor control
#define IN1 5
#define IN2 4
#define IN3 14
#define IN4 12

// Create instances of the MoistSensor, WiFiServerController, and AccelStepper classes
MoistSensor moist(pin);
WiFiServerController server(ssid, password);
AccelStepper stepper(AccelStepper::HALF4WIRE, IN1, IN3, IN2, IN4);

void setup() {
  Serial.begin(115200);
  server.begin();
  lastUpdateTime = 0;
  interval = 500;

  // Configure the stepper motor settings
  stepper.setMaxSpeed(1500);
  stepper.setAcceleration(750);
  stepper.moveTo(0); // Set the initial target position to 0
}

void loop() {
  // Handle client requests for the WiFi server
  server.handleClient();
  currentTime = millis();

  // Check if it's time to perform actions based on the defined time interval
  if (currentTime - lastUpdateTime >= interval) {
    lastUpdateTime = currentTime;
    moist.update(); // Update moisture sensor data

    // If the moisture sensor detects wetness
    if (moist.getIsWet()) {
      server.setIsOn(false); // Turn off something controlled by the server
      stepper.moveTo(-maxDistance); // Move the stepper motor to a negative maximum distance
    }
    // If something is currently moving as per server control
    else if (server._isMoving) {
      // Increment the target position and move the stepper motor (if within limits)
      if (targetPosition <= maxDistance) {
        targetPosition += 500;
        stepper.moveTo(targetPosition);
        server.move(false); // Update the server to indicate that movement has finished
      }
    }
    // If the server is on
    else if (server.getIsOn()) {
      // Move the stepper motor to the target position (if within limits)
      if (targetPosition <= maxDistance) {
        stepper.moveTo(targetPosition);

        // If the stepper motor has reached the target position, increment the target position
        if (stepper.distanceToGo() == 0) {
          targetPosition += 500;
        }
      }
    }
  }
  stepper.run(); // Run the stepper motor
}
