#include "Arduino.h"

#define VERSION "v1.0"
#define BUILD_DATE "20180128"
#define LED_BUILTIN PC13
#define LIGHT1 PB8
#define LIGHT2 PB9

USBSerial usb;

void reset()
{
    // Set the LED and light ports off then print a prompt
    usb.println("Reset");
    digitalWrite(LIGHT1, LOW);
    digitalWrite(LIGHT2, LOW);
    digitalWrite(LED_BUILTIN, HIGH);
    usb.print("> ");
}

void info()
{
    // Build info. Useful for checking firmware version but also verifying serial connectivity
    usb.println("Initialize");
    usb.println("Woot-Off Auto " VERSION);
    usb.println(BUILD_DATE);
}

void setup()
{
    // Setup the pins for output
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(LIGHT1, OUTPUT);
    pinMode(LIGHT2, OUTPUT);

    // Setup USB serial
    usb.begin(9600);  // 9600 8N1
    usb.setTimeout(2000);  // 2 second timeout on reads


    // Blink the LED twice to indicate successful boot and startup
    digitalWrite(LED_BUILTIN, LOW);
    delay(250);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(250);
    digitalWrite(LED_BUILTIN, LOW);
    delay(250);
    digitalWrite(LED_BUILTIN, HIGH);

    info();
    reset();
}

void loop()
{
    int ch;
    long timeout;
    long lightSpec;

    // Check for input
    if (usb.available() > 0) {
        // Single character commands
        switch (ch = usb.read()) {
            case '?':  // info
                usb.println("?");
                info();
                break;
            case 'r':  // Reset the board
                // Blink the LED three times to indicate a reset
                usb.println("r");
                usb.println("Reset device");
                digitalWrite(LED_BUILTIN, LOW);
                delay(250);
                digitalWrite(LED_BUILTIN, HIGH);
                delay(250);
                digitalWrite(LED_BUILTIN, LOW);
                delay(250);
                digitalWrite(LED_BUILTIN, HIGH);
                delay(250);
                digitalWrite(LED_BUILTIN, LOW);
                delay(250);
                digitalWrite(LED_BUILTIN, HIGH);
                nvic_sys_reset();  // never pass this, hard reset
                break;
            case 'o':  // Turn on for a specified period
                usb.print("o ");
                // Light specification is a bitmask indicating which lights to act upon
                lightSpec = usb.parseInt();
                usb.print(lightSpec, DEC);
                usb.print(" ");
                // Time is in ms and can be 1ms to 1min
                timeout = usb.parseInt();
                usb.print(timeout, DEC);
                usb.print("\nActivate ");
                if (timeout > 0 && timeout < 60000) {  // sanity check, 1 minute max
                    if (lightSpec & 1) {
                        usb.print("light1 ");
                        digitalWrite(LIGHT1, HIGH);
                    }
                    if (lightSpec & 2) {
                        usb.print("light2 ");
                        digitalWrite(LIGHT2, HIGH);
                    }
                    usb.print("for ");
                    usb.print(timeout, DEC);
                    usb.println("ms");
                    // Can't do anything else while the lights are running. Might be addressed in future versions.
                    delay(timeout);
                }
                // Back to a known state
                reset();
                // Parse the CR if it hasn't already.
                usb.find('\n');
                break;
            case -1:
            default:
                usb.println("Unknown command");
                break;
        }
    }
}
