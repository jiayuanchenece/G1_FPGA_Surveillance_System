open_project hdmi_v_mix_0_0
set_top v_mix
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_mix_config.h
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_mix.cpp
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_mix.h
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_dma.cpp
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_dma.h
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_csc.cpp
add_files -cflags " -I c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src " c:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_v_mix_0_0/src/v_csc.h

open_solution "prj"
set_part {xc7a200tsbg484-1}
create_clock -period 10 -name ap_clk

                 
config_rtl -enable_axiFlushable

config_interface -input_reg_mode both -output_reg_mode both



config_rtl -prefix hdmi_v_mix_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 3.0
exit
