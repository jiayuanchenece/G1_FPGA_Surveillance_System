#include "camera_ctrl.h"

void sendcmd(int cmd) {
  u8 cmdb[3];                   // buffer for bytes to send
  volatile unsigned SendCount;  // return code from XIic_Send

  // Load the byte buffer
  cmdb[0] = (cmd >> 16) & 0xFF;
  cmdb[1] = (cmd >> 8) & 0xFF;
  cmdb[2] = cmd & 0xFF; 

  do {
    // Try Send
    SendCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR,
                          0x3c,                     // I2C Address of OV5640
                          cmdb, 3,
                          XIIC_STOP);

    // Clear the TX FIFO on failure
    if (SendCount != 3) {
      XIic_WriteReg(XPAR_AXI_IIC_0_BASEADDR,  XIIC_CR_REG_OFFSET,
                    XIIC_CR_TX_FIFO_RESET_MASK);
      XIic_WriteReg(XPAR_AXI_IIC_0_BASEADDR, XIIC_CR_REG_OFFSET,
                    XIIC_CR_ENABLE_DEVICE_MASK);
    }
  } while (SendCount != 3);
}

void camera_setup(u8 *framePtr[DISPLAY_NUM_FRAMES], int currentFrame){

	camera_iic();

	camera_dma_enable(framePtr, currentFrame);

}

void camera_iic(){
	////////////////////////////////////////////////////////////
	// Set up the OV5640 Camera Registers
	////////////////////////////////////////////////////////////

	// Send the configuration stream. Most values are from the reference manual
	sendcmd(0x310311);
	sendcmd(0x300882);
	sendcmd(0x300842);
	sendcmd(0x310303);
	sendcmd(0x3017ff);
	sendcmd(0x3018ff);
	sendcmd(0x30341a);
	sendcmd(0x363036);
	sendcmd(0x36310e);
	sendcmd(0x3632e2);
	sendcmd(0x363312);
	sendcmd(0x3621e0);
	sendcmd(0x3704a0);
	sendcmd(0x37035a);
	sendcmd(0x371578);
	sendcmd(0x371701);
	sendcmd(0x370b60);
	sendcmd(0x37051a);
	sendcmd(0x390502);
	sendcmd(0x390610);
	sendcmd(0x39010a);
	sendcmd(0x373112);
	sendcmd(0x360008);
	sendcmd(0x360133);
	sendcmd(0x302d60);
	sendcmd(0x362052);
	sendcmd(0x371b20);
	sendcmd(0x471c50);
	sendcmd(0x3a1343);
	sendcmd(0x3a1800);
	sendcmd(0x3a19f8);
	sendcmd(0x363513);
	sendcmd(0x363603);
	sendcmd(0x363440);
	sendcmd(0x362201);
	sendcmd(0x3c0134);
	sendcmd(0x3c0428);
	sendcmd(0x3c0598);
	sendcmd(0x3c0600);
	sendcmd(0x3c0708);
	sendcmd(0x3c0800);
	sendcmd(0x3c091c);
	sendcmd(0x3c0a9c);
	sendcmd(0x3c0b40);
	sendcmd(0x382007);
	sendcmd(0x382100);
	sendcmd(0x381431);
	sendcmd(0x381531);
	sendcmd(0x380000); // start at X = 0
	sendcmd(0x380100);
	sendcmd(0x380200); // start at Y = 4
	sendcmd(0x380300);
	sendcmd(0x38040a); // end at X = 0xa3f
	sendcmd(0x38051f);
	sendcmd(0x380607); // end at Y = 0x79b
	sendcmd(0x380787);

	#ifdef VGA
	sendcmd(0x380802); // 640
	sendcmd(0x380980);
	sendcmd(0x380a01); // 480
	sendcmd(0x380be0);
	sendcmd(0x460c20);
	#else
	sendcmd(0x380801); // 320
	sendcmd(0x380940);
	sendcmd(0x380a00); // 240
	sendcmd(0x380bf0);
	sendcmd(0x460c22); // QVGA
	#endif

	sendcmd(0x380c07);
	sendcmd(0x380d68);
	sendcmd(0x380e05);
	sendcmd(0x380fb0);
	sendcmd(0x303514);
	sendcmd(0x303638);
	sendcmd(0x303713);
	sendcmd(0x310801);
	sendcmd(0x382402);
	sendcmd(0x381000);
	sendcmd(0x381108);
	sendcmd(0x381200);
	sendcmd(0x381302);
	sendcmd(0x361800);
	sendcmd(0x361229);
	sendcmd(0x370864);
	sendcmd(0x370952);
	sendcmd(0x370c03);
	sendcmd(0x3a0203);
	sendcmd(0x3a03d8);
	sendcmd(0x3a0801);
	sendcmd(0x3a0927);
	sendcmd(0x3a0a00);
	sendcmd(0x3a0bf6);
	sendcmd(0x3a0e03);
	sendcmd(0x3a0d04);
	sendcmd(0x3a1403);
	sendcmd(0x3a15d8);
	sendcmd(0x400102);
	sendcmd(0x400402);
	sendcmd(0x560122);
	sendcmd(0x474500);
	sendcmd(0x300000);
	sendcmd(0x30021c);
	sendcmd(0x3004ff);
	sendcmd(0x3006c3);
	sendcmd(0x300e58);
	sendcmd(0x302e00);
	sendcmd(0x430023); // Format setting to RGB888
	sendcmd(0x471306);
	sendcmd(0x440704);
	sendcmd(0x440e00);
	sendcmd(0x460b35);
	sendcmd(0x5000a7);
	sendcmd(0x5001a5);
	sendcmd(0x500308);
	sendcmd(0x5180ff);
	sendcmd(0x5181f2);
	sendcmd(0x518200);
	sendcmd(0x518314);
	sendcmd(0x518425);
	sendcmd(0x518524);
	sendcmd(0x518609);
	sendcmd(0x518709);
	sendcmd(0x518809);
	sendcmd(0x518975);
	sendcmd(0x518a54);
	sendcmd(0x518be0);
	sendcmd(0x518cb2);
	sendcmd(0x518d42);
	sendcmd(0x518e3d);
	sendcmd(0x518f56);
	sendcmd(0x519046);
	sendcmd(0x5191f8);
	sendcmd(0x519204);
	sendcmd(0x519370);
	sendcmd(0x5194f0);
	sendcmd(0x5195f0);
	sendcmd(0x519603);
	sendcmd(0x519701);
	sendcmd(0x519804);
	sendcmd(0x519912);
	sendcmd(0x519a04);
	sendcmd(0x519b00);
	sendcmd(0x519c06);
	sendcmd(0x519d82);
	sendcmd(0x519e38);
	sendcmd(0x53811e);
	sendcmd(0x53825b);
	sendcmd(0x538308);
	sendcmd(0x53840a);
	sendcmd(0x53857e);
	sendcmd(0x538688);
	sendcmd(0x53877c);
	sendcmd(0x53886c);
	sendcmd(0x538910);
	sendcmd(0x538a01);
	sendcmd(0x538b98);
	sendcmd(0x530008);
	sendcmd(0x548001);
	sendcmd(0x548108);
	sendcmd(0x548214);
	sendcmd(0x548328);
	sendcmd(0x548451);
	sendcmd(0x548565);
	sendcmd(0x548671);
	sendcmd(0x54877d);
	sendcmd(0x548887);
	sendcmd(0x548991);
	sendcmd(0x548a9a);
	sendcmd(0x548baa);
	sendcmd(0x548cb8);
	sendcmd(0x548dcd);
	sendcmd(0x548edd);
	sendcmd(0x548fea);
	sendcmd(0x54901d);
	sendcmd(0x558007); // saturation
	sendcmd(0x558350);
	sendcmd(0x558450);
	sendcmd(0x558630);
	sendcmd(0x558630);
	sendcmd(0x558841);
	sendcmd(0x558910);
	sendcmd(0x558a00);
	sendcmd(0x558bf8);
	sendcmd(0x580023);
	sendcmd(0x580114);
	sendcmd(0x58020f);
	sendcmd(0x58030f);
	sendcmd(0x580412);
	sendcmd(0x580526);
	sendcmd(0x58060c);
	sendcmd(0x580708);
	sendcmd(0x580805);
	sendcmd(0x580905);
	sendcmd(0x580a08);
	sendcmd(0x580b0d);
	sendcmd(0x580c08);
	sendcmd(0x580d03);
	sendcmd(0x580e00);
	sendcmd(0x580f00);
	sendcmd(0x581003);
	sendcmd(0x581109);
	sendcmd(0x581207);
	sendcmd(0x581303);
	sendcmd(0x581400);
	sendcmd(0x581501);
	sendcmd(0x581603);
	sendcmd(0x581708);
	sendcmd(0x58180d);
	sendcmd(0x581908);
	sendcmd(0x581a05);
	sendcmd(0x581b06);
	sendcmd(0x581c08);
	sendcmd(0x581d0e);
	sendcmd(0x581e29);
	sendcmd(0x581f17);
	sendcmd(0x582011);
	sendcmd(0x582111);
	sendcmd(0x582215);
	sendcmd(0x582328);
	sendcmd(0x582446);
	sendcmd(0x582526);
	sendcmd(0x582608);
	sendcmd(0x582726);
	sendcmd(0x582864);
	sendcmd(0x582926);
	sendcmd(0x582a24);
	sendcmd(0x582b22);
	sendcmd(0x582c24);
	sendcmd(0x582d24);
	sendcmd(0x582e06);
	sendcmd(0x582f22);
	sendcmd(0x583040);
	sendcmd(0x583142);
	sendcmd(0x583224);
	sendcmd(0x583326);
	sendcmd(0x583424);
	sendcmd(0x583522);
	sendcmd(0x583622);
	sendcmd(0x583726);
	sendcmd(0x583844);
	sendcmd(0x583924);
	sendcmd(0x583a26);
	sendcmd(0x583b28);
	sendcmd(0x583c42);
	sendcmd(0x583dce);
	sendcmd(0x502500);
	sendcmd(0x3a0f30);
	sendcmd(0x3a1028);
	sendcmd(0x3a1b30);
	sendcmd(0x3a1e26);
	sendcmd(0x3a1160);
	sendcmd(0x3a1f14);
	sendcmd(0x300802);
	sendcmd(0x303521);
	sendcmd(0x501f00);

	//sendcmd(0x30361c);
	sendcmd(0x303650); // Clock Multiplier, configure frame rate

}

void change_resolution (int vga) {
	if (vga == 1) {
		sendcmd(0x380802); // 640
		sendcmd(0x380980);
		sendcmd(0x380a01); // 480
		sendcmd(0x380be0);
		sendcmd(0x460c20);
	} else {
		sendcmd(0x380801); // 320
		sendcmd(0x380940);
		sendcmd(0x380a00); // 240
		sendcmd(0x380bf0);
		sendcmd(0x460c22); // QVGA
	}
}

void camera_dma_enable(u8 *framePtr[DISPLAY_NUM_FRAMES], int currentFrame) {
	int Status;
	XAxiVdma AxiVdma;
	XAxiVdma_Config *Config;
	XAxiVdma_DmaSetup WriteCfg;

	// Get Hardware VDMA Config from device ID
	Config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_1_DEVICE_ID);
	// Initialize the VDMA
	Status = XAxiVdma_CfgInitialize(&AxiVdma, Config, Config->BaseAddress);

	// Define a DMA Transfer Configuration
	WriteCfg.VertSizeInput = 480;
	WriteCfg.HoriSizeInput = 640 * 3; // 640 pixels by 4 bytes per pixel
	WriteCfg.Stride = DEMO_STRIDE;
	WriteCfg.FrameDelay = 0;
	WriteCfg.PointNum = 0;
	WriteCfg.EnableFrameCounter = 0;
	WriteCfg.EnableCircularBuf = 1;
	WriteCfg.EnableSync = 0;
	WriteCfg.FixedFrameStoreAddr = currentFrame;

	//WriteCfg.FrameStoreStartAddr[0] = (u32) framePtr[0];
	for (int i = 0; i < DISPLAY_NUM_FRAMES; i++) {
		WriteCfg.FrameStoreStartAddr[i] = (u32) framePtr[i];
	}

	// Apply the write transfer config
	Status = XAxiVdma_DmaConfig(&AxiVdma, XAXIVDMA_WRITE, &WriteCfg);
	if (Status != XST_SUCCESS) {
	  xil_printf("Write channel config failed %d\r\n", Status);
	}

	// Set the destination address to be the base address of DDR memory
	// same location as the AXI TFT
	Status = XAxiVdma_DmaSetBufferAddr(&AxiVdma, XAXIVDMA_WRITE, WriteCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
	  xil_printf("Write channel set buffer address failed %d\r\n", Status);
	}
	Status = XAxiVdma_DmaStart(&AxiVdma, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS) {
	  xil_printf("Start Write transfer failed %d\r\n", Status);
	}
	Status = XAxiVdma_StartParking(&AxiVdma, currentFrame, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS) {
	  xil_printf("Unable to park the Write channel %d\r\n", Status);
	}
}

void camera_dma_stop() {
	int Status;
	XAxiVdma AxiVdma;
	XAxiVdma_Config *Config;

	// Get Hardware VDMA Config from device ID
	Config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_1_DEVICE_ID);
	// Initialize the VDMA
	Status = XAxiVdma_CfgInitialize(&AxiVdma, Config, Config->BaseAddress);

	// Stop the VDMA Core
	XAxiVdma_DmaStop(&AxiVdma, XAXIVDMA_READ);
	while(XAxiVdma_IsBusy(&AxiVdma, XAXIVDMA_READ));

	if (XAxiVdma_GetDmaChannelErrors(&AxiVdma, XAXIVDMA_READ))
	{
		xil_printf("Clearing DMA errors...\r\n");
		XAxiVdma_ClearDmaChannelErrors(&AxiVdma, XAXIVDMA_READ, 0xFFFFFFFF);
	}
}

void camera_dma_change_frame(u32 frameIndex) {
	int Status;
	XAxiVdma AxiVdma;
	XAxiVdma_Config *Config;

	// Get Hardware VDMA Config from device ID
	Config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_1_DEVICE_ID);
	// Initialize the VDMA
	Status = XAxiVdma_CfgInitialize(&AxiVdma, Config, Config->BaseAddress);

	Status = XAxiVdma_StartParking(&AxiVdma, frameIndex, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS) {
		xil_printf("Cannot change frame, unable to start parking %d\r\n", Status);
	}
}
