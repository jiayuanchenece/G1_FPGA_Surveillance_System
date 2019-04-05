#ifndef CAMERA_CTRL_H
#define CAMERA_CTRL_H

#define VGA

#include "xil_types.h"
#include "xparameters.h"
#include "xiic.h"
#include "xiic_l.h"
#include "xil_io.h"
#include "xaxivdma.h"
#include "../Platform/image_config.h"

void camera_setup(u8 *framePtr[DISPLAY_NUM_FRAMES], int currentFrame);
void camera_iic();
void sendcmd(int cmd);

void camera_dma_enable(u8 *framePtr[DISPLAY_NUM_FRAMES], int currentFrame);
void camera_dma_stop();
void camera_dma_change_frame(u32 frameIndex);
void change_resolution (int vga);

#endif 
