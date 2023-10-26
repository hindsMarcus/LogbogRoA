#include "WiFiServerController.h"

// Constructor for the WiFiServerController class, taking SSID and password as parameters
WiFiServerController::WiFiServerController(char* ssid, char* password)
    : server(80), _ssid(ssid), _password(password), _isOn(false), _isMoving(false) {}

// Initialize the WiFi server and network connection
void WiFiServerController::begin() {
    setupWiFi(); // Call a private method to set up the WiFi connection
    server.begin();
}

// Handle incoming client requests
void WiFiServerController::handleClient() {
    WiFiClient client = server.accept(); // Accept an incoming client connection
    if (!client) {
        return; // If there's no client, exit the function
    }

    client.setTimeout(5000); // Set a timeout for client operations

    String req = client.readStringUntil('\r'); // Read the request from the client

    // Check the request and take actions based on its content
    if (req.indexOf("/gpio/0") != -1) {
        setIsOn(false); // Set the device or feature controlled by the server to "off"
    } else if (req.indexOf("/gpio/1") != -1) {
        setIsOn(true); // Set the device or feature controlled by the server to "on"
    } else if (req.indexOf("/gpio/2") != -1) {
        move(true); // Set the movement status to indicate something is moving
    }

    while (client.available()) {
        client.read(); // Clear the client buffer (not using the data here)
    }

    // Send a response to the client
    client.print("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>\r\nWine is now ");
    client.print("<br><br>Click <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/2'>here</a> to move a little, or <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/1'>here</a> to start the sequence, or <a href='http://");
    client.print(WiFi.localIP());
    client.print("/gpio/0'>here</a> to end the sequence.</html>");

    client.stop(); // Close the client connection
}

// Set up the WiFi connection
void WiFiServerController::setupWiFi() {
    Serial.println();
    Serial.println();
    Serial.print(F("Connecting to "));
    Serial.println(_ssid);

    WiFi.mode(WIFI_STA); // Set the WiFi mode to Station (client)
    WiFi.begin(_ssid, _password); // Connect to the WiFi network using the provided credentials

    while (WiFi.status() != WL_CONNECTED) {
        delay(500); // Wait for the connection to establish
        Serial.print(F("."));
    }
    Serial.println();
    Serial.println(F("WiFi connected"));

    Serial.println(WiFi.localIP()); // Print the local IP address once connected
}

// Set the status of a device or feature controlled by the server
void WiFiServerController::setIsOn(bool status) {
    _isOn = status;
}

// Get the status of a device or feature controlled by the server
bool WiFiServerController::getIsOn() {
    return _isOn;
}

// Set the movement status (whether something is currently moving)
void WiFiServerController::move(bool isMoving) {
    _isMoving = isMoving;
}
