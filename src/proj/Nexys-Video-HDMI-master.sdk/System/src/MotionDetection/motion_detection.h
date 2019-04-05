#ifndef MOTION_DETECTION_H
#define MOTION_DETECTION_H

#define MOTION_BASE_ADDR    0xC0000000
#define MD_FRAME_A_OFFSET   0x00
#define MD_FRAME_B_OFFSET   0x04
#define MD_DMA_OFFSET       0x08
#define MD_STATUS_OFFSET    0x0C
#define MD_THRESHOLD_OFFSET 0x10
#define MD_CURR_DIFF_OFFSET 0x14
#define MD_RESULT_OFFSET 	0x18
#define MD_DELAY_OFFSET		0x1C
#define MD_OVERLAY_OFFSET 	0x20
#define MD_CURRENT_BOX_OFFSET 0x24
#define MD_LOCATION			0x28

void set_frame_a_address(unsigned int frame_a_address);
void set_frame_b_address(unsigned int frame_b_address);
void set_overlay_address(unsigned int overlay_address);
void set_md_dma_address(unsigned int dma_address);
void set_md_threshold(unsigned int threshold);
unsigned int get_md_threshold();
void start_md();
void unset_md();
unsigned int get_md_curr_diff();
unsigned int get_md_result();
void set_md_delay(unsigned int delay);
unsigned int get_md_delay();

#endif
