#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xspi.h"
#include "xil_printf.h"
#include "sleep.h"

#define SPI_DEVICE_ID XPAR_SPI_0_DEVICE_ID

XSpi AccelSpi;

void SweepSpiModes() {
    u8 send_buf[3] = {0x0B, 0x00, 0x00};
    u8 recv_buf[3] = {0, 0, 0};
    int status;

    // The 4 combinations of CPOL (Active Low) and CPHA (Phase)
    u32 spi_modes[4] = {
        0,                                                  // Mode 0: CPOL=0, CPHA=0
        XSP_CLK_PHASE_1_OPTION,                             // Mode 1: CPOL=0, CPHA=1
        XSP_CLK_ACTIVE_LOW_OPTION,                          // Mode 2: CPOL=1, CPHA=0
        XSP_CLK_PHASE_1_OPTION | XSP_CLK_ACTIVE_LOW_OPTION  // Mode 3: CPOL=1, CPHA=1
    };

    xil_printf("\n\r--- Sweeping SPI Modes ---\n\r");

    for (int i = 0; i < 4; i++) {
        // Reset and apply the new mode
        XSpi_Reset(&AccelSpi);

        u32 options = XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION | spi_modes[i];
        XSpi_SetOptions(&AccelSpi, options);
        XSpi_Start(&AccelSpi);
        XSpi_IntrGlobalDisable(&AccelSpi);

        // Clear the buffer just to be sure
        recv_buf[0] = 0; recv_buf[1] = 0; recv_buf[2] = 0;

        // Perform the transfer
        XSpi_SetSlaveSelect(&AccelSpi, 0x01);
        status = XSpi_Transfer(&AccelSpi, send_buf, recv_buf, 3);
        XSpi_SetSlaveSelect(&AccelSpi, 0x00);

        if (status != XST_SUCCESS) {
            xil_printf("Mode %d: AXI Transfer Failed!\n\r", i);
        } else {
            xil_printf("Mode %d -> ID: 0x%02X | Raw: [%02X %02X %02X]\n\r",
                       i, recv_buf[2], recv_buf[0], recv_buf[1], recv_buf[2]);
        }

        usleep(100000); // Small delay between tests
    }
}

int main() {
    init_platform();

    XSpi_Config *ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID);
    if (ConfigPtr == NULL) return XST_DEVICE_NOT_FOUND;

    XSpi_CfgInitialize(&AccelSpi, ConfigPtr, ConfigPtr->BaseAddress);

    while(1) {
        SweepSpiModes();
        usleep(3000000); // Run sweep every 3 seconds
    }

    cleanup_platform();
    return 0;
}
