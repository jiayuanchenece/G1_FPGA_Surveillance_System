# G1_FPGA_Surveillance_System ECE 532 Project

## 1.0 Project Structure

```
G1_FPGA_Surveillance_System
  ┣ docs 							                        # Project documentations
  ┣ host_server 						                  # Remote server source
  ┣ src								                        # Vivado source files
  ┃ ┣ new_ip							                    # Custom motion detection IP
  ┃ ┣ proj							                      # Vivado project
  ┃ ┃ ┣ Nexys-Video-HDMI-master.cache			    # Vivado cached files
  ┃ ┃ ┣ Nexys-Video-HDMI-master.hw			      # Vivado hardware files
  ┃ ┃ ┣ Nexys-Video-HDMI-master.ip_user_files	# Vivado IPs
  ┃ ┃ ┣ Nexys-Video-HDMI-master.runs			    # Vivado runs
  ┃ ┃ ┣ Nexys-Video-HDMI-master.sim			      # Vivado simulation
  ┃ ┃ ┣ Nexys-Video-HDMI-master.srcs			    # Vivado Verilog source files
  ┃ ┃ ┣ Nexys-Video-HDMI-master.sdk			      # Vivado SDK
  ┃ ┃ ┃ ┣ RemoteSystemsTempFiles			
  ┃ ┃ ┃ ┣ System						                  # Main SDK source
  ┃ ┃ ┃ ┃ ┣ src
  ┃ ┃ ┃ ┃ ┃ ┣ CameraControl				            # Camera control API
  ┃ ┃ ┃ ┃ ┃ ┣ DisplayControl				          # Display control API
  ┃ ┃ ┃ ┃ ┃ ┣ DynamicClockControl			        # Dynamic clock control API
  ┃ ┃ ┃ ┃ ┃ ┣ InterruptControl				        # Interrupt control API
  ┃ ┃ ┃ ┃ ┃ ┣ MotionDetection				          # Custom motion detection API
  ┃ ┃ ┃ ┃ ┃ ┣ Platform					              # Platform configuration
  ┃ ┃ ┃ ┃ ┃ ┣ TimerControl				            # Timer control API
  ┃ ┃ ┃ ┃ ┃ ┣ logo.h					                # Overlay logo
  ┃ ┃ ┃ ┃ ┃ ┣ lscript.ld					            # Linker file
  ┃ ┃ ┃ ┃ ┃ ┣ main.c					                # Main – entry point
  ┃ ┃ ┃ ┃ ┗ ┗ main.h					                # Main includes
  ┃ ┃ ┃ ┣ System_bsp					                # System board support file
  ┃ ┃ ┃ ┃ ┣ Makefile					                # SDK Makefile
  ┃ ┃ ┃ ┃ ┗ system.mss					              # System microprocessor software spec
  ┃ ┃ ┃ ┣ top_hw_platform_0					
  ┃ ┃ ┃ ┗ top.hdf						                  # System hardware description file
  ┃ ┃ ┣ Nexys-Video-HDMI-master.tmp			      # Vivado temporary files
  ┃ ┃ ┗ Nexys-Video-HDMI-master.xpr			      # Vivado project file
  ┗ ┗ repo							                      # Digilent IP source files
  ```
  
## 2.0 Project Resource Requirement
```
  | Xilinx Vivado 2018.2  | Xilinx TEMAC IP License | Xilinx Video Mixer License  |
  |-----------------------|-------------------------|-----------------------------|
  | Nexys Video Board     | OV 5640 Camera          | Ethernet connection to Host |
```

## 3.0 Acknowledgement 
```
  This project contains various source files from Xilinx and Digilent.  Please acknowledge 
  the copyright agreement for academic workplaces only.
```
