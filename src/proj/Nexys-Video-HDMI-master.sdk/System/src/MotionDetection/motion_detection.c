#include "motion_detection.h"

void set_frame_a_address(unsigned int frame_a_address) {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_FRAME_A_OFFSET) = frame_a_address;
}

void set_frame_b_address(unsigned int frame_b_address) {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_FRAME_B_OFFSET) = frame_b_address;
}

void set_overlay_address(unsigned int overlay_address) {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_OVERLAY_OFFSET) = overlay_address;
}


void set_md_dma_address(unsigned int dma_address) {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_DMA_OFFSET) = dma_address;
}

void set_md_threshold(unsigned int threshold) {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_THRESHOLD_OFFSET) = threshold;
}

unsigned int get_md_threshold() {
    return *(volatile unsigned int *) (MOTION_BASE_ADDR + MD_THRESHOLD_OFFSET);
}

void start_md() {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_STATUS_OFFSET) = 0x00000001;
}

void unset_md() {
    *(unsigned int *) (MOTION_BASE_ADDR + MD_STATUS_OFFSET) = 0x00000002;
}

unsigned int get_md_curr_diff() {
    return *(unsigned int *) (MOTION_BASE_ADDR + MD_CURR_DIFF_OFFSET);
}

unsigned int get_md_result() {
	return *(volatile unsigned int *) (MOTION_BASE_ADDR + MD_RESULT_OFFSET);
}

void set_md_delay(unsigned int delay) {
	*(unsigned int *) (MOTION_BASE_ADDR + MD_DELAY_OFFSET) = delay;
}

unsigned int get_md_delay() {
	return *(volatile unsigned int *) (MOTION_BASE_ADDR + MD_DELAY_OFFSET);
}
