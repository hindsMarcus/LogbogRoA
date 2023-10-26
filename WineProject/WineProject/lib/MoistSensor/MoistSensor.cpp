#include "Arduino.h"
#include "MoistSensor.h"

// Constructor for the MoistSensor class, taking a pin as a parameter
MoistSensor::MoistSensor(int pin)
: _pin(pin), _isWet(false) // Initialize member variables, pin, and wetness status
{}

// Method to update the moisture sensor data
void MoistSensor::update()
{
  int sensor_analog = analogRead(_pin); // Read the analog value from the moisture sensor
  float moisture_percentage = ( 100 - ( (sensor_analog/1023.00) * 100 ) ); // Calculate moisture percentage

  // Check if the moisture percentage is greater than 5%
  if(moisture_percentage > 5.00)
  {
    _isWet = true; // Set the wetness status to "true"
  }
  else
  {
    _isWet = false; // Set the wetness status to "false"
  }
}

// Method to get the wetness status
bool MoistSensor::getIsWet()
{
    return _isWet; // Return the current wetness status
}
