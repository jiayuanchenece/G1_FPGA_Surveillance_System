`timescale 1ns / 1ps

module motion_detection
(
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

  /*********** AXI Stream interface ***************/
  input         S_AXI_TVALID,
  input         S_AXI_TLAST,
  input [31:0]  S_AXI_TDATA, 
  input [3:0]   S_AXI_TKEEP,
  output        S_AXI_TREADY,
  
  /************* DEBUG SIGNALS *****************/
  output [3:0]       state,
  output             finish_read1,
  output             finish_read2,
  output reg [31:0]  gray1,
  output reg [31:0]  gray2,
  output 						 done,
  output             start1, 
  output             start2, 
  output             start3,
  output   [31:0]    dma_base,
  output 						 motion_detected
);

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

  wire	 slv_reg_rden;
  wire	 slv_reg_wren;
  reg [31:0]	 reg_data_out;
  integer	 byte_index;
  reg	 aw_en;


  localparam integer ADDR_LSB = (32/32) + 1;
  localparam integer OPT_MEM_ADDR_BITS = 2;
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

  always @( posedge aclk )
  begin
    if ( aresetn == 1'b0 )
      begin
        slv_reg0 <= 0;
        slv_reg1 <= 0;
        slv_reg2 <= 0;
        slv_reg3 <= 0;
        slv_reg4 <= 0;
        slv_reg5 <= 0;
      end 
    else begin
      if (slv_reg_wren)
        begin
          case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
            3'h0:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 0
                  slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            3'h1:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 1
                  slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            3'h2:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 2
                  slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            3'h3:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            3'h4:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            3'h5:
              for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes 
                  // Slave register 3
                  slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            default : begin
                        slv_reg0 <= slv_reg0;
                        slv_reg1 <= slv_reg1;
                        slv_reg2 <= slv_reg2;
                        slv_reg3 <= slv_reg3;
                        slv_reg4 <= slv_reg4;
                        slv_reg5 <= slv_reg5;
                      end
          endcase
        end
    end
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
          3'h0   : reg_data_out <= slv_reg0;
          3'h1   : reg_data_out <= slv_reg1;
          3'h2   : reg_data_out <= slv_reg2;
          3'h3   : reg_data_out <= slv_reg3;
          3'h4   : reg_data_out <= slv_reg4;
          3'h5   : reg_data_out <= slv_reg5;
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

    reg [3:0] currentState; reg [3:0] nextState; assign state = currentState;
    parameter resetS = 4'b0000, initRead1 = 4'b0001, read1 = 4'b0010, initRead2 = 4'b0011, 
                read2 = 4'b0100, waitforClear = 4'b0101;
    // addr of two frames
    wire [31:0] frame1_addr; assign frame1_addr = slv_reg0; // slave register 0
    wire [31:0] frame2_addr; assign frame2_addr = slv_reg1; // slave register 1
    reg [31:0] output_addr; 

    always@(*) begin 
      if (currentState == initRead1) begin 
        output_addr = frame1_addr;
      end 
      else if (currentState == initRead2) begin 
        output_addr = frame2_addr;
      end 
      else begin 
        output_addr = 0;
      end 
    end 

    /************* MASTER WRITE DMA REGISTERS *************/
    
    
    // Write to three registers in DMA
    wire start2; wire start3; wire done; 

    wire [31:0] w1_data; wire w1_awvalid;
    wire [31:0] w1_addr; wire w1_wvalid;
    wire [3:0]  w1_strb; wire w1_bready;

    assign dma_base = slv_reg2; parameter [31:0] transfer_length_offst = 32'h00000028;
            parameter	[31:0] addr_offset = 32'h00000018;
     
    write_DMA write_1(
        .start(start1),
        .aclk(aclk),
        .aresetn(aresetn),
        .data(32'h00000001), 
        .addr(dma_base),
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
        .addr(dma_base + transfer_length_offst),
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
      if (currentState == read1 || currentState == read2) begin 
        if (count == 3 && S_AXI_TVALID == 1'b1) begin 
          count <= 1;
        end 
        else if (count == 3 && S_AXI_TVALID == 1'b0) begin 
          count <= 0;
        end 
        else if (S_AXI_TVALID == 1'b1) begin 
          count <= count + 1;
        end 
      end 
      else begin 
        count <= 0;
      end 
    end 
    
    reg receive_1; reg receive_2; 
    wire [31:0] threshold; assign threshold = slv_reg4;

    wire motion_detected; 

    always@(posedge aclk) begin 
        if (currentState== read1 && count == 3) begin 
            // do we need to check TKEEP? 
            gray1 <= gray1 + (r1 >> 2) + (r1 >> 5) + (g1 >> 1) + (g1 >> 4) + (b1 >> 4) + (b1 >>5)
                              +	(r2 >> 2) + (r2 >> 5) + (g2 >> 1) + (g2 >> 4) + (b2 >> 4) + (b2 >>5)
                              + (r3 >> 2) + (r3 >> 5) + (g3 >> 1) + (g3 >> 4) + (b3 >> 4) + (b3 >>5)
                              + (r4 >> 2) + (r4 >> 5) + (g4 >> 1) + (g4 >> 4) + (b4 >> 4) + (b4 >>5);
            if (S_AXI_TLAST) begin 
                receive_1 <= 1'b1;
            end 
        end
        else if (currentState == resetS) begin 
          gray1 <= 0;
          receive_1 <= 0;
        end 
    end 

    always@(posedge aclk) begin 
        if (currentState == read2 && count == 3) begin 
            // do we need to check TKEEP? 
            gray2 <= gray2 + (r1 >> 2) + (r1 >> 5) + (g1 >> 1) + (g1 >> 4) + (b1 >> 4) + (b1 >>5)
                              +	(r2 >> 2) + (r2 >> 5) + (g2 >> 1) + (g2 >> 4) + (b2 >> 4) + (b2 >>5)
                              + (r3 >> 2) + (r3 >> 5) + (g3 >> 1) + (g3 >> 4) + (b3 >> 4) + (b3 >>5)
                              + (r4 >> 2) + (r4 >> 5) + (g4 >> 1) + (g4 >> 4) + (b4 >> 4) + (b4 >>5);

            if (S_AXI_TLAST) begin 
                receive_2 <= 1'b1;
            end
        end
        else if (currentState == resetS) begin 
          gray2 <= 0;
          receive_2 <= 0;
        end 
    end 
    

    // both imgs are received and their diff is greater than threshold
    assign motion_detected = (receive_1 & receive_2) && ((gray1 - gray2) > threshold);
    
    always@(posedge aclk) begin 
      if ((receive_1 & receive_2)) begin 
        slv_reg5 <= gray1 - gray2;
      end 
      else begin 
        slv_reg5 <= 0;
      end 
    end

    /***************** MAIN FSM TO CONTROL DMA STREAM READ ****************/ 
    
    
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
                if (receive_1 == 1'b1) nextState = initRead2;
                else nextState = read1;
            end
            initRead2: begin 
                if (done == 1'b1) begin
                    nextState = read2;
                end 
                else nextState = initRead2;
            end
            read2: begin 
                if (receive_2 == 1'b1) nextState = waitforClear;
                else nextState = read2;
            end
            waitforClear: begin 
                if (slv_reg3 == 32'hDEADBEEF) nextState = resetS;
                else nextState = waitforClear;
            end
        endcase
    end

    assign finish_read1 = receive_1; assign finish_read2 = receive_2;

    //State changing on clock edge 
  always@(posedge aclk)begin 
      if(aresetn==1'b0)
          currentState <= resetS;
      else 
          currentState <= nextState;
  end

    

    // Main FSM output Logic
    reg start1;
    always@(posedge aclk) begin 
      if (currentState == resetS) begin 
                start1 <= 1'b0;
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
    end

endmodule


module write_DMA
(
  input start,
  input aclk,
  input aresetn,
  input [31:0]  data, 
  input [31:0]  addr,

  input [3:0] currentState,
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

  output reg start_next
);
    assign M_AXI_WSTRB = 4'b1111;
    assign M_AXI_WDATA = data;
    assign M_AXI_AWADDR = addr;


    reg m_awvalid; assign M_AXI_AWVALID = m_awvalid;
    reg m_bready; assign M_AXI_BREADY = m_bready;
    reg m_wvalid; assign M_AXI_WVALID = m_wvalid;

    // Master handshake signal
    reg m_handshake1, m_handshake2, m_handshake3; // can i set handshake3 as combinational logic

    parameter resetS = 4'b0000, initRead1 = 4'b0001, read1 = 4'b0010, initRead2 = 4'b0011, 
                read2 = 4'b0100;

    always@(posedge aclk) begin
      if (!aresetn) begin 
        m_wvalid <= 1'b0;
        m_bready <= 1'b0;
        m_awvalid <= 1'b0;
        m_handshake1 <= 1'b0;
        m_handshake2 <= 1'b0;
        m_handshake3 <= 1'b0;
        start_next <= 1'b0;
      end 
      else if ((currentState != initRead1) && (currentState != initRead2)) begin 
        m_wvalid <= 1'b0;
        m_bready <= 1'b0;
        m_awvalid <= 1'b0;
        m_handshake1 <= 1'b0;
        m_handshake2 <= 1'b0;
        m_handshake3 <= 1'b0;
        start_next <= 1'b0;
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
              start_next <= 1'b1;
          end
          else if (m_bready == 1'b0) begin 
              m_bready <= 1'b1;
          end 
        end 
      end
    end 
endmodule 