#ifndef WiFiServerController_h
#define WiFiServerController_h

#include <ESP8266WiFi.h>
#include <AccelStepper.h>

class WiFiServerController {
public:
    // Constructor that takes the WiFi SSID and password as parameters
    WiFiServerController(char* ssid, char* pass);
    
    // Initialize the WiFi server
    void begin();
    
    // Handle incoming client requests
    void handleClient();
    
    // Set the status of a device or feature controlled by the server
    void setIsOn(bool status);
    
    // Get the status of a device or feature controlled by the server
    bool getIsOn();
    
    // Set the movement status (whether something is currently moving)
    void move(bool isMoving);
    
    // Private variable to store the movement status
    bool _isMoving;

private:
    WiFiServer server; // Instance of the WiFi server
    const char* _ssid; // Stored WiFi SSID
    const char* _password; // Stored WiFi password
    bool _isOn; // Stored status of a device or feature controlled by the server

    // Private method to set up the WiFi connection
    void setupWiFi();
};

#endif
