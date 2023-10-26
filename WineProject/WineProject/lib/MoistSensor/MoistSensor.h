#ifndef MOISTSENSOR_H
#define MOISTSENSOR_H

// Declare the MoistSensor class
class MoistSensor
{
    public:
        // Constructor for the MoistSensor class, taking a pin as a parameter
        MoistSensor(int pin);
        
        // Method to update the sensor data
        void update();
        
        // Method to get the wetness status
        bool getIsWet();

    private:
        int _pin; // Pin to which the moisture sensor is connected
        bool _isWet; // Variable to store the wetness status
        long _nextChange; // Variable to store the time of the next change
};

#endif
