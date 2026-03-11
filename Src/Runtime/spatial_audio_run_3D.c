#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"
#include "sleep.h"
#include "PmodJSTK2.h"
#include "xuartlite_l.h"

PmodJSTK2 joystick;
XGpio angle_gpio;

int main() {
    init_platform();

    print("--- 3D Spatial Audio Control ---\n\r");
    print("Joystick: Controls Azimuth (Angle)\n\r");
    print("Keyboard: Type Elevation (-30, 0, 30, 60, 90) and press ENTER\n\r");
    print("> ");

    // 1. Initialize the Dual-Channel GPIO
    XGpio_Initialize(&angle_gpio, XPAR_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&angle_gpio, 1, 0x00); // Channel 1: Angle
    XGpio_SetDataDirection(&angle_gpio, 2, 0x00); // Channel 2: Elevation

    // 2. Initialize the Pmod Joystick
    JSTK2_begin(
        &joystick,
        XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
        XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR
    );

    // Initial states: Angle 0 (Index 0), Elevation 0 (Index 1)
    u8 current_angle_index = 0;
    u8 current_elevation_index = 1;

    XGpio_DiscreteWrite(&angle_gpio, 1, current_angle_index);
    XGpio_DiscreteWrite(&angle_gpio, 2, current_elevation_index);

    u32 uart_base_addr = XPAR_UARTLITE_0_BASEADDR;

    // UART Buffer Variables
    char input_buffer[10];
    int buffer_index = 0;

    while (1) {
        // ==========================================
        // 1. NON-BLOCKING UART (ELEVATION)
        // ==========================================
        if (!XUartLite_IsReceiveEmpty(uart_base_addr)) {
            u8 key_input = XUartLite_RecvByte(uart_base_addr);

            if (key_input == '\r' || key_input == '\n') {
                if (buffer_index > 0) {
                    input_buffer[buffer_index] = '\0';
                    int parsed_elevation = atoi(input_buffer);
                    int valid = 1;
                    u8 new_elevation_index = current_elevation_index;

                    // Map the typed real-world elevation to the 4-bit hardware index
                    if      (parsed_elevation == -30) new_elevation_index = 0;
                    else if (parsed_elevation ==   0) new_elevation_index = 1;
                    else if (parsed_elevation ==  30) new_elevation_index = 2;
                    else if (parsed_elevation ==  60) new_elevation_index = 3;
                    else if (parsed_elevation ==  90) new_elevation_index = 4;
                    else {
                        xil_printf("\n\rError: %d is not a supported elevation!\n\r", parsed_elevation);
                        valid = 0;
                    }

                    if (valid && (new_elevation_index != current_elevation_index)) {
                        current_elevation_index = new_elevation_index;
                        XGpio_DiscreteWrite(&angle_gpio, 2, current_elevation_index);
                        xil_printf("\n\rSuccess! Elevation changed to %d (Index %d)\n\r", parsed_elevation, current_elevation_index);
                    } else if (valid) {
                        xil_printf("\n\rElevation is already %d.\n\r", parsed_elevation);
                    }

                    buffer_index = 0;
                    print("> ");
                }
            }
            else if (key_input == 8 || key_input == 127) {
                if (buffer_index > 0) {
                    buffer_index--;
                    outbyte(8); outbyte(' '); outbyte(8);
                }
            }
            // MODIFIED: Accept 0-9 AND the minus sign '-'
            else if ((key_input >= '0' && key_input <= '9') || key_input == '-') {
                if (buffer_index < 9) {
                    input_buffer[buffer_index] = key_input;
                    buffer_index++;
                    outbyte(key_input);
                }
            }
        }

        // ==========================================
        // 2. JOYSTICK POLLING (ANGLE)
        // ==========================================
        JSTK2_Position position = JSTK2_getPosition(&joystick);
        float dx = 0.0;
        float dy = 0.0;

        if (position.XData >= 192) dx = (float)(position.XData - 192) / 63.0;
        else dx = (float)(position.XData - 192) / 192.0;

        if (position.YData >= 192) dy = (float)(position.YData - 192) / 63.0;
        else dy = (float)(position.YData - 192) / 192.0;

        if (fabs(dx) > 0.1 || fabs(dy) > 0.1) {
            float angle_rad = atan2(dx, -dy);
            float angle_deg = angle_rad * (180.0 / M_PI);

            if (angle_deg < 0) angle_deg += 360.0;

            int new_angle_index = (int)(angle_deg / 5.0);
            if (new_angle_index >= 72) new_angle_index = 0;

            if (new_angle_index != current_angle_index) {
                current_angle_index = (u8)new_angle_index;
                XGpio_DiscreteWrite(&angle_gpio, 1, current_angle_index);
                // Clear current typing line, print angle update, then restore prompt
                xil_printf("\r                            \rAngle: %3d deg -> Index: %2d\n\r> ", (int)angle_deg, current_angle_index);

                // Re-echo any characters currently sitting in the typing buffer
                for(int i=0; i < buffer_index; i++){
                    outbyte(input_buffer[i]);
                }
            }
        }

        // 50ms polling rate
        usleep(50000);
    }

    cleanup_platform();
    return 0;
}
