#include "xparameters.h"
#include "xspi.h"
#include "xil_printf.h"

// Name from xparameters.h
#define SPI_DEVICE_ID    XPAR_AXI_QUAD_SPI_0_DEVICE_ID

// ADXL362 Register Map
#define REG_READ         0x0B
#define REG_WHO_AM_I     0x00
#define REG_POWER_CTL    0x2D
#define REG_DATA_START   0x0E  // XDATA_L starts here

XSpi SpiInstance;

int init_accelerometer() {
    XSpi_Config *ConfigPtr;
    int Status;

    // 1. Initialize the SPI driver
    ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID); // Lookup hardware config
    if (ConfigPtr == NULL) return XST_DEVICE_NOT_FOUND;

    Status = XSpi_CfgInitialize(&SpiInstance, ConfigPtr, ConfigPtr->BaseAddress); // Initialize instance
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // 2. Set SPI Options: Master Mode and Manual Chip Select
    XSpi_Reset(&SpiInstance);
    Status = XSpi_SetOptions(&SpiInstance, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    XSpi_Start(&SpiInstance);
    XSpi_IntrGlobalDisable(&SpiInstance);  // Prevents waiting for interrupts

    // 3. Wake up the ADXL362 (Power Control Register)
    // Write 0x02 to Register 0x2D to enter "Measurement Mode"
    u8 WriteBuf[3] = {0x0A, REG_POWER_CTL, 0x02};
    XSpi_SetSlaveSelect(&SpiInstance, 0x01); // Pull CS Low
    XSpi_Transfer(&SpiInstance, WriteBuf, NULL, 3);
    XSpi_SetSlaveSelect(&SpiInstance, 0x00); // Pull CS High

    xil_printf("SPI Hardware Link Established.\r\n");
    return XST_SUCCESS;
}

void read_accel_data() {
    // We send: [Read Command, Start Register, 6 dummy bytes for X_L, X_H, Y_L, Y_H, Z_L, Z_H]
    u8 WriteBuf[8] = {REG_READ, REG_DATA_START, 0, 0, 0, 0, 0, 0};
    u8 ReadBuf[8];

    XSpi_SetSlaveSelect(&SpiInstance, 0x01);  // Pull CS Low
    XSpi_Transfer(&SpiInstance, WriteBuf, ReadBuf, 8);
    XSpi_SetSlaveSelect(&SpiInstance, 0x00); // Pull CS High

    // The data starts at index 2 because indices 0 and 1 were the command/address
    uint16_t x_raw = ((uint16_t)ReadBuf[3] << 8) | (uint16_t)ReadBuf[2];
    uint16_t y_raw = ((uint16_t)ReadBuf[5] << 8) | (uint16_t)ReadBuf[4];
    uint16_t z_raw = ((uint16_t)ReadBuf[7] << 8) | (uint16_t)ReadBuf[6];

    xil_printf("X raw: %d | Y raw: %d | Z raw: %d\r\n", x_raw, y_raw, z_raw);

    int16_t x = (int16_t)x_raw;
    int16_t y = (int16_t)y_raw;
    int16_t z = (int16_t)z_raw;

    xil_printf("X: %d | Y: %d | Z: %d\r\n", x, y, z);
}

void run_whoami_test(XSpi *SpiPtr) {
    // We send 3 bytes: [Read Command, Address, Dummy]
    u8 WriteBuf[3] = {REG_READ, REG_WHO_AM_I, 0x00};
    u8 ReadBuf[3] = {0, 0, 0};
    int Status;

    xil_printf("\r\n--- ADXL362 WHO_AM_I Test ---\r\n");

    // 1. Reset and Configure for Polled Mode
    XSpi_Reset(SpiPtr);
    XSpi_SetOptions(SpiPtr, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
    XSpi_IntrGlobalDisable(SpiPtr);
    XSpi_Start(SpiPtr);

    // 2. Select the Slave (Physical CS pin D15 goes Low)
    Status = XSpi_SetSlaveSelect(SpiPtr, 0x01);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Slave selection failed.\r\n");
        return;
    }

    // 3. The SPI Transfer
    // WriteBuf[0] is 0x0B, WriteBuf[1] is 0x00
    XSpi_Transfer(SpiPtr, WriteBuf, ReadBuf, 3);

    // 4. Deselect (Physical CS pin D15 goes High)
    XSpi_SetSlaveSelect(SpiPtr, 0x00);

    // 5. Output Results
    // ReadBuf[2] should hold the result of the 3rd clock cycle
    xil_printf("Sent: 0x%02X 0x%02X | Received: [0]=0x%02X, [1]=0x%02X, [2]=0x%02X\r\n",
                WriteBuf[0], WriteBuf[1], ReadBuf[0], ReadBuf[1], ReadBuf[2]);

    if (ReadBuf[2] == 0xAD) {
        xil_printf("SUCCESS: ADXL362 identified correctly!\r\n");
    } else {
        xil_printf("FAILURE: Unexpected ID. If 0xFF, check MISO (E15). If 0x00, check SCLK (F15).\r\n");
    }
}

int main() {
    if (init_accelerometer() != XST_SUCCESS) {
        xil_printf("Accel Initialization Failed!\r\n");
        return -1;
    }

    xil_printf("ADXL362 Ready. Reading gravity...\r\n");

    run_whoami_test(&SpiInstance);

    return 0;

//    while (1) {
//        read_accel_data();
//        for(int i=0; i<1000000; i++); // Small delay
//    }
//
//    return 0;
//	u8 WhoBuf[3] = {0x0B, 0x00, 0x00};
//	u8 Response[3];
//
//	XSpi_SetSlaveSelect(&SpiInstance, 0x01);
//	XSpi_Transfer(&SpiInstance, WhoBuf, Response, 3);
//	XSpi_SetSlaveSelect(&SpiInstance, 0x00);
//
//	xil_printf("Checking ID... Expected 0xAD, Got: 0x%02X\r\n", Response[2]);


//
//	    xil_printf("Done! Received ID: 0x%02X\r\n", Response[2]);
//
//	    // 5. Error Message Logic
//	    if (Response[2] == 0xAD) {
//	        xil_printf("SUCCESS: Found ADXL362 (ID: 0x%02X)\r\n", Response[2]);
//	    }
//	    else if (Response[2] == 0xFF) {
//	        xil_printf("ERROR: Received 0xFF. MISO line is floating high.\r\n");
//	        xil_printf("Check: Are your XDC pin names matching the HDL Wrapper?\r\n");
//	    }
//	    else if (Response[2] == 0x00) {
//	        xil_printf("ERROR: Received 0x00. No data returning.\r\n");
//	        xil_printf("Check: Is the SPI Clock (SCLK) or MOSI connected in the XDC?\r\n");
//	    }
//	    else {
//	        xil_printf("ERROR: Unexpected ID: 0x%02X (Expected 0xAD).\r\n", Response[2]);
//	        xil_printf("Check: Is the SPI Frequency Ratio set to 16 or higher?\r\n");
//	    }
}
