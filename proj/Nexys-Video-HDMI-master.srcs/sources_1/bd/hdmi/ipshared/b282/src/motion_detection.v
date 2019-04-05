`timescale 1ns / 1ps

module motion_v1_0 (
  input aclk,
  input aresetn,

  // AXI-Lite slave interface
  input [31:0]  S_AXI_AWADDR,
  input         S_AXI_AWVALID,
  output        S_AXI_AWREADY,

  input [31:0]  S_AXI_WDATA,
  input [3:0]   S_AXI_WSTRB,
  input         S_AXI_WVALID,
  output        S_AXI_WREADY,

  output [1:0]  S_AXI_BRESP,
  output        S_AXI_BVALID,
  input         S_AXI_BREADY,

  input [31:0]  S_AXI_ARADDR,
  input         S_AXI_ARVALID,
  output        S_AXI_ARREADY,

  output [31:0] S_AXI_RDATA,
  output [1:0]  S_AXI_RRESP,
  output        S_AXI_RVALID,
  input         S_AXI_RREADY,

  /********* AXI-Lite master interface **********/
  output reg [31:0] M_AXI_ARADDR,
  output reg       M_AXI_ARVALID,
  input         M_AXI_ARREADY,

  input [31:0]  M_AXI_RDATA,
  input [1:0]   M_AXI_RRESP,
  input         M_AXI_RVALID,
  output        M_AXI_RREADY,

  // write address channel
  output reg [31:0] M_AXI_AWADDR,
  output reg				M_AXI_AWVALID, 
  input 				M_AXI_AWREADY,

  //write data channel 
  output reg [31:0]	M_AXI_WDATA, 
  output  reg [3:0]  M_AXI_WSTRB, 
  output reg        M_AXI_WVALID,
  input         M_AXI_WREADY,
  //write response channel
  input 				M_AXI_BRESP, 
  input 				M_AXI_BVALID, 
  output 	reg			M_AXI_BREADY,

  /*********** AXI Stream interface MM2S ***************/
  input         S_AXI_TVALID,
  input         S_AXI_TLAST,
  input [31:0]  S_AXI_TDATA, 
  input [3:0]   S_AXI_TKEEP,
  output        S_AXI_TREADY,
  
    /*********** AXI Stream interface S2MM ***************/
  output          S_AXI_S2MM_TVALID,
  output    reg     S_AXI_S2MM_TLAST,
  output reg [31:0]  S_AXI_S2MM_TDATA, 
  output [3:0]   S_AXI_S2MM_TKEEP,
  input         S_AXI_S2MM_TREADY,
  
  /************* DEBUG SIGNALS *****************/
  output [4:0]       state,
  output             finish_read1,
  output             finish_read2,
  output reg [31:0]  gray1,
  output reg [31:0]  gray2,
  output 						 done,
  output reg             start1, 
  output             start2, 
  output             start3,
  output   [31:0]    dma_base,
  output 						 motion_detected
);
  assign S_AXI_S2MM_TKEEP = 4'b1111;
// Your Code Here
  // AXI4LITE signals
  reg [31 : 0] 	axi_awaddr;
  reg  	axi_awready;
  reg  	axi_wready;
  reg [1 : 0] 	axi_bresp;
  reg  	axi_bvalid;
  reg [31 : 0] 	axi_araddr;
  reg  	axi_arready;
  reg [31 : 0] 	axi_rdata;
  reg [1 : 0] 	axi_rresp;
  reg  	axi_rvalid;

  //-- Number of Slave Registers 4
  reg [31:0]	slv_reg0;
  reg [31:0]	slv_reg1;
  reg [31:0]	slv_reg2;
  reg [31:0]	slv_reg3;
  reg [31:0]  slv_reg4;
  reg [31:0]  slv_reg5;
  reg [31:0]  slv_reg6;
  reg [31:0]  slv_reg7;
  reg [31:0]  slv_reg8; // destination address for overlay
  reg [31:0]  slv_reg9;
  reg [31:0]  slv_reg10;
  reg [31:0]  slv_reg11;
  
  wire	 slv_reg_rden;
  wire	 slv_reg_wren;
  reg [31:0]	 reg_data_out;
  integer	 byte_index;
  reg	 aw_en;


  localparam integer ADDR_LSB = (32/32) + 1;
  localparam integer OPT_MEM_ADDR_BITS = 3;
  // I/O Connections assignments

  assign S_AXI_AWREADY	= axi_awready;
  assign S_AXI_WREADY	= axi_wready;
  assign S_AXI_BRESP	= axi_bresp;
  assign S_AXI_BVALID	= axi_bvalid;
  assign S_AXI_ARREADY	= axi_arready;
  assign S_AXI_RDATA	= axi_rdata;
  assign S_AXI_RRESP	= axi_rresp;
  assign S_AXI_RVALID	= axi_rvalid;


  // Implement axi_awready generation
  // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
  // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
  // de-asserted when reset is low.

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        aw_en <= 1'b1;
      end 
    else
      begin    
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
          begin
            // slave is ready to accept write address when 
            // there is a valid write address and write data
            // on the write address and data bus. This design 
            // expects no outstanding transactions. 
            axi_awready <= 1'b1;
            aw_en <= 1'b0;
          end
          else if (S_AXI_BREADY && axi_bvalid)
              begin
                aw_en <= 1'b1;
                axi_awready <= 1'b0;
              end
        else           
          begin
            axi_awready <= 1'b0;
          end
      end 
  end       

  // Implement axi_awaddr latching
  // This process is used to latch the address when both 
  // S_AXI_AWVALID and S_AXI_WVALID are valid. 

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_awaddr <= 0;
      end 
    else
      begin    
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
          begin
            // Write Address latching 
            axi_awaddr <= S_AXI_AWADDR;
          end
      end 
  end       

  // Implement axi_wready generation
  // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
  // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
  // de-asserted when reset is low. 

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end 
    else
      begin    
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
          begin
            // slave is ready to accept write data when 
            // there is a valid write address and write data
            // on the write address and data bus. This design 
            // expects no outstanding transactions. 
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end 
  end       

  // Implement memory mapped register select and write logic generation
  // The write data is accepted and written to memory mapped registers when
  // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
  // select byte enables of slave registers while writing.
  // These registers are cleared when reset (active low) is applied.
  // Slave register write enable is asserted when valid address and data are available
  // and the slave is ready to accept the write address and write data.
  assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

  reg receive_1; reg receive_2; reg receive_3;
  reg [4:0] currentState; reg [4:0] nextState;
  wire [31:0] extra_delay;
  assign extra_delay = slv_reg7;
  parameter resetS = 5'b00000, initRead1 = 5'b00001, read1 = 5'b00010, initRead2 = 5'b00011, 
          read2 = 5'b00100, waitforClear = 5'b000101, delayBetweenFrames = 5'b00111,
          initRead3 = 5'b01000, overlayS = 5'b01001, overlayCompleteS = 5'b01010, initS2MMClearS = 5'b01011, initS2MMClearS2 = 5'b01100, transitS = 5'b01101, 
          readClearS = 5'b01110, readClearS2 = 5'b01111, transitS2 = 5'b10000, transitS3 = 5'b10001;

    reg [31:0] currentMaxDiff;
    reg [31:0] maxDiffRow;
    reg [31:0] maxDiffCol;


  always @( posedge aclk )
  begin
    
    slv_reg10 <= currentMaxDiff;
    slv_reg11 <= {maxDiffRow[15:0], maxDiffCol[15:0]};
  
    if ( aresetn == 1'b0 )
      begin
        slv_reg0 <= 0;
        slv_reg1 <= 0;
        slv_reg2 <= 0;
        slv_reg3 <= 0;
        slv_reg4 <= 0;
        slv_reg5 <= 0;
        slv_reg6 <= 0;
        slv_reg7 <= 0;
        slv_reg8 <= 0;
        slv_reg9 <= 0;
        
      end 
    else begin
      if (slv_reg_wren)
        begin
          case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
            4'h0:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 0
                  slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            4'h1:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 1
                  slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            4'h2:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 2
                  slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            4'h3:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            4'h4:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            4'h5:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end 
            4'h6: 
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 3
                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end 
            4'h7: 
                for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                  if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end 
             4'h8: 
                for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                  if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end 
             4'h9: 
               for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                 if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                 // Respective byte enables are asserted as per write strobes 
                 // Slave register 3
                 slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
               end 
            default : begin
                slv_reg0 <= slv_reg0;
                slv_reg1 <= slv_reg1;
                slv_reg2 <= slv_reg2;
                slv_reg3 <= slv_reg3;
                slv_reg4 <= slv_reg4;
                slv_reg5 <= slv_reg5;
                slv_reg6 <= slv_reg6;
                slv_reg7 <= slv_reg7;
                slv_reg8 <= slv_reg8;
                slv_reg9 <= slv_reg9;
              end
          endcase
        end
    end
    if ((receive_1 & receive_2)) begin
        
        if (gray1 >=  gray2) begin
            slv_reg5 <= gray1 - gray2;    
        end
        else begin
            slv_reg5 <= gray2 - gray1;   
        end
    
      end 
    
    slv_reg6 <= {30'b0,currentState == waitforClear,motion_detected};
    
  end    

  // Implement write response logic generation
  // The write response and response valid signals are asserted by the slave 
  // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
  // This marks the acceptance of address and indicates the status of 
  // write transaction.

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end 
    else
      begin    
        if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
          begin
            // indicates a valid write response is available
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // 'OKAY' response 
          end                   // work error responses in future
        else
          begin
            if (S_AXI_BREADY && axi_bvalid) 
              //check if bready is asserted while bvalid is high) 
              //(there is a possibility that bready is always asserted high)   
              begin
                axi_bvalid <= 1'b0; 
              end  
          end
      end
  end   

  // Implement axi_arready generation
  // axi_arready is asserted for one S_AXI_ACLK clock cycle when
  // S_AXI_ARVALID is asserted. axi_awready is 
  // de-asserted when reset (active low) is asserted. 
  // The read address is also latched when S_AXI_ARVALID is 
  // asserted. axi_araddr is reset to zero on reset assertion.

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= 32'b0;
      end 
    else
      begin    
        if (~axi_arready && S_AXI_ARVALID)
          begin
            // indicates that the slave has acceped the valid read address
            axi_arready <= 1'b1;
            // Read address latching
            axi_araddr  <= S_AXI_ARADDR;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end 
  end       

  // Implement axi_arvalid generation
  // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
  // S_AXI_ARVALID and axi_arready are asserted. The slave registers 
  // data are available on the axi_rdata bus at this instance. The 
  // assertion of axi_rvalid marks the validity of read data on the 
  // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
  // is deasserted on reset (active low). axi_rresp and axi_rdata are 
  // cleared to zero on reset (active low).  
  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_rvalid <= 0;
        axi_rresp  <= 0;
      end 
    else
      begin    
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
          begin
            // Valid read data is available at the read data bus
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; // 'OKAY' response
          end   
        else if (axi_rvalid && S_AXI_RREADY)
          begin
            // Read data is M_AXI_WSTRBaccepted by the master
            axi_rvalid <= 1'b0;
          end                
      end
  end    

  // Implement memory mapped register select and read logic generation
  // Slave register read enable is asserted when valid address is available
  // and the slave is ready to accept the read address.
  assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
  always @(*)
  begin
        // Address decoding for reading registers
        case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
          4'h0   : reg_data_out <= slv_reg0;
          4'h1   : reg_data_out <= slv_reg1;
          4'h2   : reg_data_out <= slv_reg2;
          4'h3   : reg_data_out <= slv_reg3;
          4'h4   : reg_data_out <= slv_reg4;
          4'h5   : reg_data_out <= slv_reg5;
          4'h6   : reg_data_out <= slv_reg6;
          4'h7   : reg_data_out <= slv_reg7;
          4'h8   : reg_data_out <= slv_reg8;
          4'h9   : reg_data_out <= slv_reg9;
          4'hA  : reg_data_out <= slv_reg10;
          4'hB  : reg_data_out <= slv_reg11;
          default : reg_data_out <= 0;
        endcase
  end

  // Output register or memory read data
  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end 
    else
      begin    
        // When there is a valid read address (S_AXI_ARVALID) with 
        // acceptance of read address by the slave (axi_arready), 
        // output the read dada 
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;     // register read data
          end   
      end
  end    



    /***********   Master to initiate read to DMA **************/
    // Master setup 
    wire init_read;
    assign init_read = slv_reg3 & 1'b1;

    assign state = currentState;
    // addr of two frames
    wire [31:0] frame1_addr; assign frame1_addr = slv_reg0; // slave register 0
    wire [31:0] frame2_addr; assign frame2_addr = slv_reg1; // slave register 1
    wire [31:0] write_overlay; assign write_overlay = slv_reg8;
    reg [31:0] output_addr; 

    always@(*) begin 
      if (currentState == initRead1) begin 
        output_addr = frame1_addr;
      end 
      else if (currentState == initRead2) begin 
        output_addr = frame2_addr;
      end 
      else if (currentState == initRead3) begin
        output_addr = write_overlay;
      end
      else if (currentState == overlayS) begin 
        output_addr = write_overlay;
      end
      else begin 
        output_addr = 0;
      end 
    end 

    /************* MASTER WRITE DMA REGISTERS *************/
    
    wire [31:0] w1_data; wire w1_awvalid;
    wire [31:0] w1_addr; wire w1_wvalid;
    wire [3:0]  w1_strb; wire w1_bready;
    wire [31:0] dma_2;
    wire [31:0] dma_3;
    
    assign dma_base = slv_reg2; parameter [31:0] read_transfer_length_offst = 32'h00000028;
            parameter	[31:0] read_addr_offset = 32'h00000018; parameter [31:0] write_addr_offset = 32'h00000048;
            parameter [31:0] write_enable = 32'h00000030; parameter [31:0] write_length_offset = 32'h00000058;
     
    reg startClear; reg startClear2; reg startClear3;reg startClear4;
    reg [31:0] transfer_length_offset;
    reg [31:0] addr_offset;
    reg [31:0] dma_init;
    always@(posedge aclk) begin 
        if (currentState == initRead1 || currentState == initRead2) begin 
            transfer_length_offset <= read_transfer_length_offst;
            addr_offset <= read_addr_offset;
            dma_init <= dma_base;
        end
        else if (currentState == initRead3) begin
            transfer_length_offset <= write_length_offset;
            addr_offset <= write_addr_offset;
            dma_init <= dma_base + write_enable;
        end 
        else if (currentState == initS2MMClearS || currentState == initS2MMClearS2) begin
            dma_init <= dma_base + write_enable;
        end
        else if (currentState == readClearS || currentState == readClearS2) begin
            dma_init <= dma_base;
        end
        else begin 
            transfer_length_offset <= 0;
            addr_offset <= 0;
        end 
    end

    write_DMA write_1(
        .start(start1),
        .aclk(aclk),
        .aresetn(aresetn),
        .data(32'h00000001), 
        .addr(dma_init),
        .currentState(currentState),
        // write address channel
        .M_AXI_AWADDR(w1_addr),
        .M_AXI_AWVALID(w1_awvalid), 
        .M_AXI_AWREADY(M_AXI_AWREADY),
        //write data channel 
        .M_AXI_WDATA(w1_data), 
        .M_AXI_WSTRB(w1_strb), 
        .M_AXI_WVALID(w1_wvalid),
        .M_AXI_WREADY(M_AXI_WREADY),
        //write response channel
        .M_AXI_BRESP(M_AXI_BRESP), 
        .M_AXI_BVALID(M_AXI_BVALID), 
        .M_AXI_BREADY(w1_bready),
        .start_next(start2)
    );

    wire [31:0] w2_data; wire w2_awvalid;
    wire [31:0] w2_addr; wire w2_wvalid;
    wire [3:0]  w2_strb; wire w2_bready;

    write_DMA write_2(
        .start(start2),
        .aclk(aclk),
        .aresetn(aresetn),
        .data(output_addr), 
        .addr(dma_base + addr_offset),
        .currentState(currentState),
        // write address channel
        .M_AXI_AWADDR(w2_addr),
        .M_AXI_AWVALID(w2_awvalid), 
        .M_AXI_AWREADY(M_AXI_AWREADY),
        //write data channel 
        .M_AXI_WDATA(w2_data), 
        .M_AXI_WSTRB(w2_strb), 
        .M_AXI_WVALID(w2_wvalid),
        .M_AXI_WREADY(M_AXI_WREADY),
        //write response channel
        .M_AXI_BRESP(M_AXI_BRESP), 
        .M_AXI_BVALID(M_AXI_BVALID), 
        .M_AXI_BREADY(w2_bready),
        .start_next(start3)
    );

    wire [31:0] w3_data; wire w3_awvalid;
    wire [31:0] w3_addr; wire w3_wvalid;
    wire [3:0]  w3_strb; wire w3_bready;

    write_DMA write_3(
        .start(start3),
        .aclk(aclk),
        .aresetn(aresetn),
        .data(/*size of image*/'hE1000), 
        .addr(dma_base + transfer_length_offset),
        .currentState(currentState),
        // write address channel
        .M_AXI_AWADDR(w3_addr),
        .M_AXI_AWVALID(w3_awvalid), 
        .M_AXI_AWREADY(M_AXI_AWREADY),
        //write data channel 
        .M_AXI_WDATA(w3_data), 
        .M_AXI_WSTRB(w3_strb), 
        .M_AXI_WVALID(w3_wvalid),
        .M_AXI_WREADY(M_AXI_WREADY),
        //write response channel
        .M_AXI_BRESP(M_AXI_BRESP), 
        .M_AXI_BVALID(M_AXI_BVALID), 
        .M_AXI_BREADY(w3_bready),
        .start_next(done)
    );
    
    wire doneClear; wire doneClear2;wire doneClear3;wire doneClear4;
    wire [31:0] clear_data; wire clear_awvalid;
    wire [31:0] clear_addr; wire clear_wvalid;
    wire [3:0]  clear_strb; wire clear_bready;

    wire [31:0] clear_data2; wire clear_awvalid2;
    wire [31:0] clear_addr2; wire clear_wvalid2;
    wire [3:0]  clear_strb2; wire clear_bready2;
    
    wire [31:0] clear_data3; wire clear_awvalid3;
    wire [31:0] clear_addr3; wire clear_wvalid3;
    wire [3:0]  clear_strb3; wire clear_bready3;
        
    wire [31:0] clear_data4; wire clear_awvalid4;
    wire [31:0] clear_addr4; wire clear_wvalid4;
    wire [3:0]  clear_strb4; wire clear_bready4;
    
    write_DMA write_clear (
        .start(startClear),
        .aclk(aclk),
        .aresetn(aresetn),
        .data(32'h00000004), 
        .addr(dma_init),
        .currentState(currentState),
        // write address channel
        .M_AXI_AWADDR(clear_addr),
        .M_AXI_AWVALID(clear_awvalid), 
        .M_AXI_AWREADY(M_AXI_AWREADY),
        //write data channel 
        .M_AXI_WDATA(clear_data), 
        .M_AXI_WSTRB(clear_strb), 
        .M_AXI_WVALID(clear_wvalid),
        .M_AXI_WREADY(M_AXI_WREADY),
        //write response channel
        .M_AXI_BRESP(M_AXI_BRESP), 
        .M_AXI_BVALID(M_AXI_BVALID), 
        .M_AXI_BREADY(clear_bready),
        .start_next(doneClear)
    );
    
    write_DMA write_clear2 (
            .start(startClear2),
            .aclk(aclk),
            .aresetn(aresetn),
            .data(32'h00000000), 
            .addr(dma_init),
            .currentState(currentState),
            // write address channel
            .M_AXI_AWADDR(clear_addr2),
            .M_AXI_AWVALID(clear_awvalid2), 
            .M_AXI_AWREADY(M_AXI_AWREADY),
            //write data channel 
            .M_AXI_WDATA(clear_data2), 
            .M_AXI_WSTRB(clear_strb2), 
            .M_AXI_WVALID(clear_wvalid2),
            .M_AXI_WREADY(M_AXI_WREADY),
            //write response channel
            .M_AXI_BRESP(M_AXI_BRESP), 
            .M_AXI_BVALID(M_AXI_BVALID), 
            .M_AXI_BREADY(clear_bready2),
            .start_next(doneClear2)
    );
    
    
    write_DMA write_clear3 (
            .start(startClear3),
            .aclk(aclk),
            .aresetn(aresetn),
            .data(32'h00000004), 
            .addr(dma_init),
            .currentState(currentState),
            // write address channel
            .M_AXI_AWADDR(clear_addr3),
            .M_AXI_AWVALID(clear_awvalid3), 
            .M_AXI_AWREADY(M_AXI_AWREADY),
            //write data channel 
            .M_AXI_WDATA(clear_data3), 
            .M_AXI_WSTRB(clear_strb3), 
            .M_AXI_WVALID(clear_wvalid3),
            .M_AXI_WREADY(M_AXI_WREADY),
            //write response channel
            .M_AXI_BRESP(M_AXI_BRESP), 
            .M_AXI_BVALID(M_AXI_BVALID), 
            .M_AXI_BREADY(clear_bready3),
            .start_next(doneClear3)
        );
        
        write_DMA write_clear4 (
                .start(startClear4),
                .aclk(aclk),
                .aresetn(aresetn),
                .data(32'h00000000), 
                .addr(dma_init),
                .currentState(currentState),
                // write address channel
                .M_AXI_AWADDR(clear_addr4),
                .M_AXI_AWVALID(clear_awvalid4), 
                .M_AXI_AWREADY(M_AXI_AWREADY),
                //write data channel 
                .M_AXI_WDATA(clear_data4), 
                .M_AXI_WSTRB(clear_strb4), 
                .M_AXI_WVALID(clear_wvalid4),
                .M_AXI_WREADY(M_AXI_WREADY),
                //write response channel
                .M_AXI_BRESP(M_AXI_BRESP), 
                .M_AXI_BVALID(M_AXI_BVALID), 
                .M_AXI_BREADY(clear_bready4),
                .start_next(doneClear4)
        );
    

// multiplex the output of three DMA write 

    always@(posedge aclk) begin 
      if (start3 == 1'b1) begin 
        M_AXI_AWADDR <= w3_addr;
        M_AXI_AWVALID <= w3_awvalid;
        M_AXI_WDATA <= w3_data;
        M_AXI_WSTRB <= w3_strb;
        M_AXI_WVALID <= w3_wvalid;
        M_AXI_BREADY <= w3_bready;
      end 
      else if (start2 == 1'b1) begin 
        M_AXI_AWADDR <= w2_addr;
        M_AXI_AWVALID <= w2_awvalid;
        M_AXI_WDATA <= w2_data;
        M_AXI_WSTRB <= w2_strb;
        M_AXI_WVALID <= w2_wvalid;
        M_AXI_BREADY <= w2_bready;
      end 
      else if (start1 == 1'b1) begin 
        M_AXI_AWADDR <= w1_addr;
        M_AXI_AWVALID <= w1_awvalid;
        M_AXI_WDATA <= w1_data;
        M_AXI_WSTRB <= w1_strb;
        M_AXI_WVALID <= w1_wvalid;
        M_AXI_BREADY <= w1_bready;
      end 
      else if (startClear == 1'b1 ) begin
        M_AXI_AWADDR <= clear_addr;
        M_AXI_AWVALID <= clear_awvalid;
        M_AXI_WDATA <= clear_data;
        M_AXI_WSTRB <= clear_strb;
        M_AXI_WVALID <= clear_wvalid;
        M_AXI_BREADY <= clear_bready;
      end
      else if (startClear2 == 1'b1) begin 
        M_AXI_AWADDR <= clear_addr2;
        M_AXI_AWVALID <= clear_awvalid2;
        M_AXI_WDATA <= clear_data2;
        M_AXI_WSTRB <= clear_strb2;
        M_AXI_WVALID <= clear_wvalid2;
        M_AXI_BREADY <= clear_bready2;
      end 
      else if (startClear3 == 1'b1) begin
        M_AXI_AWADDR <= clear_addr3;
        M_AXI_AWVALID <= clear_awvalid3;
        M_AXI_WDATA <= clear_data3;
        M_AXI_WSTRB <= clear_strb3;
        M_AXI_WVALID <= clear_wvalid3;
        M_AXI_BREADY <= clear_bready3;
      end
      else if (startClear4 == 1'b1) begin 
        M_AXI_AWADDR <= clear_addr4;
        M_AXI_AWVALID <= clear_awvalid4;
        M_AXI_WDATA <= clear_data4;
        M_AXI_WSTRB <= clear_strb4;
        M_AXI_WVALID <= clear_wvalid4;
        M_AXI_BREADY <= clear_bready4;
      end 
      else begin 
        M_AXI_AWADDR <= 0;
        M_AXI_AWVALID <= 0;
        M_AXI_WDATA <= 0;
        M_AXI_WSTRB <= 0;
        M_AXI_WVALID <= 0;
        M_AXI_BREADY <= 0;
      end 
    end 
    /********** STREAM SLAVE HANDSHAKE LOGIC *************/
    assign S_AXI_TREADY = (currentState == read1) || (currentState == read2);

    /************* STREAM SLAVE DATA RECEIVE LOGIC *****/
    reg [31:0] rgb1; reg [31:0] rgb2; reg [31:0] rgb3;
    wire [7:0] r1; wire [7:0] g1; wire [7:0] b1; 
    wire [7:0] r2; wire [7:0] g2; wire [7:0] b2;
    wire [7:0] r3; wire [7:0] g3; wire [7:0] b3;
    wire [7:0] r4; wire [7:0] g4; wire [7:0] b4;
    assign r1 = (rgb1 & 32'hFF000000) >> 24; assign g1 = (rgb1 & 32'h00FF0000) >> 16; assign b1 = (rgb1 & 32'h0000FF00) >> 8; 
    assign r2 = (rgb1 & 32'h000000FF); assign g2 = (rgb2 & 32'hFF000000) >> 24; assign b2 = (rgb2 & 32'h00FF0000) >> 16;
    assign r3 = (rgb2 & 32'h0000FF00) >> 8; assign g3 = (rgb2 & 32'h000000FF); assign b3 = (rgb3 & 32'hFF000000) >> 24;
    assign r4 = (rgb3 & 32'h00FF0000) >> 16; assign g4 = (rgb3 & 32'h0000FF00) >> 8; assign b4 = (rgb3 & 32'h000000FF);

    reg delay_S_AXI_TLAST;
    always@(posedge aclk) begin
        if (aresetn != 1'b0) begin
            delay_S_AXI_TLAST <= S_AXI_TLAST;
        end else begin 
            delay_S_AXI_TLAST <= 0;
        end
    end

    // shift three words in from stream
    always@(posedge aclk) begin 
      if (S_AXI_TVALID) begin 
        rgb1 <= rgb2;
        rgb2 <= rgb3;
        rgb3 <= S_AXI_TDATA;
      end 
    end 

    // count number of words available
    reg [1:0] count;
    always @(posedge aclk) begin 
      if (currentState == read1 || currentState == read2 || currentState == overlayS) begin 
        if (count == 3 && S_AXI_TVALID == 1'b1) begin 
          count <= 1;
        end else if (S_AXI_TVALID == 1'b1) begin 
          count <= count + 1;
        end 
      end 
      else begin 
        count <= 0;
      end 
    end
    
    wire [31:0] threshold; assign threshold = slv_reg4;
     
    // Count the total number of pixels read by DMA
    reg [31:0] pixel_word_count;
    reg [31:0] row_count;
    reg [31:0] small_row_count;
    reg [31:0] column_count;
    reg [31:0] small_column_count;
    reg finish_send; 
    always@(posedge aclk) begin
        if (currentState == read1 || currentState == read2) begin
            if (S_AXI_TVALID == 1'b1) begin
                pixel_word_count <= pixel_word_count + 1;
                if (small_column_count < 14) small_column_count <= small_column_count + 1;
                else begin
                    small_column_count <= 0;
                    if (column_count < 31) column_count <= column_count + 1;
                    else begin
                        column_count <= 0;
                        if (small_row_count < 20) small_row_count <= small_row_count + 1;
                        else begin
                            small_row_count <= 0;
                            row_count <= row_count + 1;
                        end
                    end
                end
            end
        end
        else if ((currentState == overlayS) && (S_AXI_S2MM_TREADY == 1'b1) && (finish_send == 1'b0)) begin
            pixel_word_count <= pixel_word_count + 1;
            if (small_column_count < 14) small_column_count <= small_column_count + 1;
            else begin
                small_column_count <= 0;
                if (column_count < 31) column_count <= column_count + 1;
                else begin
                    column_count <= 0;
                    if (small_row_count < 20) small_row_count <= small_row_count + 1;
                    else begin
                        small_row_count <= 0;
                        row_count <= row_count + 1;
                    end
                end
            end
        end else begin
            pixel_word_count <= 0;
            row_count <= 0;
            column_count <= 0;
            small_column_count <= 0;
            small_row_count <= 0;
        end
    end
    
    // 2D Array 32 by 24
    integer _i; 
    reg [31:0] gray1_sub [767:0];
    reg [31:0] gray2_sub [767:0];
    reg [31:0] gray_diff [767:0];
    wire [31:0] box_threshold; assign box_threshold = slv_reg9;
    reg [31:0] box_diff;reg diff_valid;
    
    always@(posedge aclk) begin
        if (currentState == resetS ) begin
            box_diff <= 0; diff_valid <= 0;
            for (_i = 0; _i <= 768; _i = _i + 1) begin
                gray1_sub[_i] = 0;
                gray2_sub[_i] = 0;
            end
        end
    end
   
    reg delay_tvalid;
    always@(posedge aclk) begin
       delay_tvalid <= S_AXI_TVALID;
    end
   
    wire [31:0] grayResult;
    assign grayResult =             (r1 >> 2) + (r1 >> 5) + (g1 >> 1) + (g1 >> 4) + (b1 >> 4) + (b1 >>5)
                                  + (r2 >> 2) + (r2 >> 5) + (g2 >> 1) + (g2 >> 4) + (b2 >> 4) + (b2 >>5)
                                  + (r3 >> 2) + (r3 >> 5) + (g3 >> 1) + (g3 >> 4) + (b3 >> 4) + (b3 >>5)
                                  + (r4 >> 2) + (r4 >> 5) + (g4 >> 1) + (g4 >> 4) + (b4 >> 4) + (b4 >>5);
   
    always@(posedge aclk) begin 
        if (currentState== read1 && count == 3 && delay_tvalid) begin 
            
//            gray1 <= rgb1 + rgb2 + rgb3;
             gray1 <= gray1 + grayResult;

//            gray1_sub[ 32*row_count + column_count] = gray1_sub[32*row_count + column_count]
//                + {rgb1[31:8]} + 
//                {rgb1[7:0],rgb2[31:16]} + 
//                {rgb2[15:0], rgb3[31:24]} +
//                {rgb3[23:0]};

               gray1_sub[ 32*row_count + column_count] = gray1_sub[32*row_count + column_count] 
                    + grayResult;
        end
        else if (currentState == resetS) begin 
          gray1 <= 0;
          receive_1 <= 0;
        end 
        
        if (currentState== read1 && delay_S_AXI_TLAST) begin 
            receive_1 <= 1'b1;
        end 
    end 

    always@(posedge aclk) begin 
        if (currentState == read2 && count == 3 && delay_tvalid) begin 
           gray2 <= gray2 + grayResult;
           gray2_sub[ 32*row_count + column_count] = gray2_sub[32*row_count + column_count] 
                + grayResult;
        end else if (currentState == resetS) begin 
          gray2 <= 0;
          receive_2 <= 0;
        end if (currentState== read2 && delay_S_AXI_TLAST) begin 
            receive_2 <= 1'b1;
        end 
    end 
    
    assign S_AXI_S2MM_TVALID = diff_valid;
    
    always@(posedge aclk) begin
        if ((currentState == overlayS) && (S_AXI_S2MM_TREADY == 1'b1) && (finish_send == 1'b0)) begin 
        
            S_AXI_S2MM_TDATA <= 32'hFFFF_FFFF;
            
            if ((gray1_sub[32*row_count + column_count ] >= gray2_sub[32*row_count + column_count])) begin
                if ((gray1_sub[32*row_count + column_count] - gray2_sub[32*row_count + column_count]) >= box_threshold) begin
                    
                    if ((gray1_sub[32*row_count + column_count] - gray2_sub[32*row_count + column_count]) > currentMaxDiff) begin
                        currentMaxDiff <= gray1_sub[32*row_count + column_count] - gray2_sub[32*row_count + column_count]; 
                        maxDiffRow <= row_count;
                        maxDiffCol <= column_count;
                    end
                
                    S_AXI_S2MM_TDATA <= 32'h0;
                end 
            end else if ( (gray1_sub[32*row_count + column_count] < gray2_sub[32*row_count + column_count])) begin 
                if ((gray2_sub[32*row_count + column_count] - gray1_sub[32*row_count + column_count]) >= box_threshold) begin
                
                    if ((gray2_sub[32*row_count + column_count] - gray1_sub[32*row_count + column_count]) > currentMaxDiff) begin
                        currentMaxDiff <= gray2_sub[32*row_count + column_count] - gray1_sub[32*row_count + column_count]; 
                        maxDiffRow <= row_count;
                        maxDiffCol <= column_count;
                    end
                
                    S_AXI_S2MM_TDATA <= 32'h0;
                end 
            end

          diff_valid <= 1;

          if (pixel_word_count == 230400) begin
                 finish_send <= 1'b1;
                 diff_valid <= 1'b0;
            end

        end else if (currentState != overlayS) begin
            diff_valid <= 0;
            S_AXI_S2MM_TLAST <= 0;
            S_AXI_S2MM_TDATA <= 0;
            finish_send <= 0;
            
            currentMaxDiff <= 32'b0;
            maxDiffRow <= 32'b0;
            maxDiffCol <= 32'b0;
         
        end 

    end  

    // both imgs are received and their diff is greater than threshold
    reg reg_motion_detected;
    always@(*) begin
        if (receive_1 & receive_2) begin
            if (gray1 > gray2) begin 
                reg_motion_detected = (gray1 - gray2) > threshold;
            end
            else begin
                reg_motion_detected = (gray2 - gray1) > threshold;
            end
        end
        else begin
            reg_motion_detected = 0;
        end
    end
    assign motion_detected = reg_motion_detected;
    
    /***************** MAIN FSM TO CONTROL DMA STREAM READ ****************/ 
    
    reg [31:0] delayCounter; 
    reg [31:0] clearDelay;
    reg [31:0] clearDelay2;
    reg [31:0] clearDelay3;
    reg [31:0] clearDelay4;
    reg [31:0] overlayDelayCounter;
    reg [31:0] initS2MMClearSDelay;
    always@(posedge aclk) begin
        if (currentState == resetS) begin
            clearDelay <= 0;
            overlayDelayCounter <= 0;
            initS2MMClearSDelay <= 0;
        end else if (currentState == initS2MMClearS) begin
            clearDelay <= clearDelay + 1;
        end else if (currentState == initRead3) begin
            overlayDelayCounter <= overlayDelayCounter + 1;
        end else if (currentState == overlayS && finish_send == 1'b1) begin
            initS2MMClearSDelay <= initS2MMClearSDelay + 1;
        end
    end
    
    always@(posedge aclk) begin
            if (currentState == resetS) clearDelay2 <= 0;
            else if (currentState == initS2MMClearS2) clearDelay2 <= clearDelay2 + 1;
    end
        
    always@(posedge aclk) begin
        if (currentState == resetS) clearDelay3 <= 0;
        else if (currentState == readClearS) clearDelay3 <= clearDelay3 + 1;
    end
        
    always@(posedge aclk) begin
        if (currentState == resetS) clearDelay4 <= 0;
        else if (currentState == readClearS2) clearDelay4 <= clearDelay4 + 1;
    end
    // Next state logic
    always@(*) begin
        case(currentState)
            resetS: begin 
                if (init_read == 1'b1) nextState = initRead1;
                else nextState = resetS;
            end 
            initRead1: begin  
                if (done == 1'b1)  
                    nextState = read1;
                else nextState = initRead1;
            end
            read1: begin 
                if (receive_1 == 1'b1) nextState = delayBetweenFrames;
                else nextState = read1;
            end
            delayBetweenFrames: begin
                if (delayCounter <= extra_delay) nextState = delayBetweenFrames;
                else nextState = initRead2;
            end
            initRead2: begin 
                if (done == 1'b1) begin
                    nextState = read2;
                end 
                else nextState = initRead2;
            end
            read2: begin 
                if (receive_2 == 1'b1 && motion_detected) nextState = initRead3;
                else if (receive_2 == 1'b1) nextState = waitforClear;
                else nextState = read2;
            end
            initRead3: begin
                if (done == 1'b1 && overlayDelayCounter >= 32'h50) nextState = overlayS;
                else nextState = initRead3;
            end
                        
            overlayS: begin
                if (finish_send == 1'b1 && initS2MMClearSDelay >= 32'h50) nextState = initS2MMClearS;
                else nextState = overlayS;
            end
            
            initS2MMClearS: begin
                if (doneClear == 1'b1 && clearDelay >= 32'h50) nextState = transitS;
                else nextState = initS2MMClearS;  
            end
            
            transitS: begin 
                nextState = initS2MMClearS2;
            end 
            initS2MMClearS2: begin
                if (doneClear2 == 1'b1 && clearDelay2 == 32'h50) nextState = transitS2;
                else nextState = initS2MMClearS2;  
            end
            
            transitS2: begin 
                nextState = readClearS;
            end 
            
            
            readClearS: begin
                if (doneClear3 == 1'b1 && clearDelay3 >= 32'h50) nextState = transitS3;
                else nextState = readClearS;  
            end
                        
            transitS3: begin 
                nextState = readClearS2;
            end 
            readClearS2: begin
                if (doneClear4 == 1'b1 && clearDelay4 == 32'h50) nextState = waitforClear;
                else nextState = readClearS2;  
            end
           
            waitforClear: begin 
                if (slv_reg3 == 32'h00000002) nextState = resetS;
                else nextState = waitforClear;
            end
        endcase
    end

    assign finish_read1 = receive_1; assign finish_read2 = receive_2;

    always@(posedge aclk) begin
        if (currentState == delayBetweenFrames) begin
            delayCounter <= delayCounter + 1;
        end
        else if (currentState == waitforClear) begin
            delayCounter <= 0;
        end
    end

    //State changing on clock edge 
    always@(posedge aclk)begin 
        if(aresetn==1'b0)
            currentState <= resetS;
        else 
            currentState <= nextState;
    end
  
    // Main FSM output Logic
    always@(posedge aclk) begin 
      if (currentState == resetS) begin 
          start1 <= 1'b0;
          startClear <= 1'b0;
          startClear2 <= 1'b0;
          startClear3 <= 1'b0;
          startClear4 <= 1'b0;
        end 
      else if (currentState == initRead1) begin 
          start1 <= 1'b1;
      end 
      else if (currentState == read1) begin 
          start1 <= 1'b0;
      end 
      else if (currentState == initRead2) begin 
          start1 <= 1'b1;
      end 
      else if (currentState == read2) begin 
          start1 <= 1'b0;
      end 
      else if (currentState == initRead3) begin
          start1 <= 1'b1;
      end
      else if (currentState == overlayS) begin
          start1 <= 1'b0;
      end
      else if (currentState == initS2MMClearS) begin
          startClear <= 1'b1;
          startClear2 <= 1'b0;
          startClear3 <= 1'b0;
          startClear4 <= 1'b0;
      end
      else if (currentState == transitS ||currentState == transitS2 || currentState == transitS3) begin 
            startClear <= 1'b0;
            startClear2 <= 1'b0;
            startClear3 <= 1'b0;
            startClear4 <= 1'b0;
      end 
      else if (currentState == initS2MMClearS2) begin
          startClear <= 1'b0;
          startClear2 <= 1'b1;
          startClear3 <= 1'b0;
          startClear4 <= 1'b0;
      end
      
      else if (currentState == readClearS) begin
                startClear <= 1'b0;
                startClear2 <= 1'b0;
                startClear3 <= 1'b1;
                startClear4 <= 1'b0;
      end
      else if (currentState == readClearS2) begin
                startClear <= 1'b0;
                startClear2 <= 1'b0;
                startClear3 <= 1'b0;
                startClear4 <= 1'b1;
      end
      else if (currentState == waitforClear) begin
        startClear <= 1'b0;
        startClear2 <= 1'b0;
        startClear3 <= 1'b0;
        startClear4 <= 1'b0;
      end 
    end

endmodule


module write_DMA (

  input start,
  input aclk,
  input aresetn,
  input [31:0]  data, 
  input [31:0]  addr,

  input [4:0] currentState,
  // write address channel
  output [31:0] M_AXI_AWADDR,
  output 				M_AXI_AWVALID, 
  input 				M_AXI_AWREADY,

  //write data channel 
  output [31:0]	M_AXI_WDATA, 
  output [3:0]  M_AXI_WSTRB, 
  output        M_AXI_WVALID,
  input         M_AXI_WREADY,

  //write response channel
  input 				M_AXI_BRESP, 
  input 				M_AXI_BVALID, 
  input 				M_AXI_BREADY,

  output  start_next
);
    assign M_AXI_WSTRB = 4'b1111;
    assign M_AXI_WDATA = data;
    assign M_AXI_AWADDR = addr;


    reg m_awvalid; assign M_AXI_AWVALID = m_awvalid;
    reg m_bready; assign M_AXI_BREADY = m_bready;
    reg m_wvalid; assign M_AXI_WVALID = m_wvalid;

    // Master handshake signal
    reg m_handshake1, m_handshake2, m_handshake3; // can i set handshake3 as combinational logic

    parameter resetS = 5'b00000, initRead1 = 5'b00001, read1 = 5'b00010, initRead2 = 5'b00011, 
          read2 = 5'b00100, waitforClear = 5'b000101, delayBetweenFrames = 5'b00111,
          initRead3 = 5'b01000, overlayS = 5'b01001, overlayCompleteS = 5'b01010, initS2MMClearS = 5'b01011, initS2MMClearS2 = 5'b01100, transitS = 5'b01101, 
          readClearS = 5'b01110, readClearS2 = 5'b01111, transitS2 = 5'b10000, transitS3 = 5'b10001;

    assign start_next = (m_handshake1) & (m_handshake2) & (m_handshake3);
    always@(posedge aclk) begin
      if (!aresetn) begin 
        m_wvalid <= 1'b0;
        m_bready <= 1'b0;
        m_awvalid <= 1'b0;
        m_handshake1 <= 1'b0;
        m_handshake2 <= 1'b0;
        m_handshake3 <= 1'b0;
//        start_next <= 1'b0;
      end 
      else if ((currentState != initRead1) && (currentState != initRead2) && (currentState != initRead3) && (currentState != initS2MMClearS) && (currentState != initS2MMClearS2)&& (currentState != readClearS) && (currentState != readClearS2)) begin 
        m_wvalid <= 1'b0;
        m_bready <= 1'b0;
        m_awvalid <= 1'b0;
        m_handshake1 <= 1'b0;
        m_handshake2 <= 1'b0;
        m_handshake3 <= 1'b0;
//        start_next <= 1'b0;
      end 
      else if (start == 1'b1) begin
        if (m_handshake1 == 1'b0) begin 
          if (m_awvalid == 1'b1 && M_AXI_AWREADY == 1'b1) begin 
              m_awvalid <= 1'b0; m_handshake1 <= 1'b1;
          end
          else if (m_awvalid == 1'b0) begin 
              m_awvalid <= 1'b1;
          end
        end	
        if (m_handshake2 == 1'b0) begin
          if (m_wvalid == 1'b1 && M_AXI_WREADY == 1'b1) begin 
              m_wvalid <= 1'b0; m_handshake2 <= 1'b1;
          end
          else if (m_wvalid == 1'b0) begin 
              m_wvalid <= 1'b1;
          end 
        end 
        if (m_handshake3 == 1'b0) begin
          if (m_bready == 1'b1 && M_AXI_BVALID == 1'b1) begin 
              m_bready <= 1'b0; 
              m_handshake3 <= 1'b1;
//              start_next <= 1'b1;
          end
          else if (m_bready == 1'b0) begin 
              m_bready <= 1'b1;
          end 
        end 
      end
    end 
endmodule 