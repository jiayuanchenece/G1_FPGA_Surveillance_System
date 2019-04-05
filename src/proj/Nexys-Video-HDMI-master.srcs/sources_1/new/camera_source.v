`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Basic Logic to capture output from the OV5640 Digital Video Port (DVP)
////////////////////////////////////////////////////////////////////////////////
module camera_source (
  input               pclk,
  input               vsync,
  input               href,
  input       [7:0]   d,
  output reg  [23:0]  dout,
  output              valid,
  output              last
);

reg [1:0] cnt;
reg r_href;
reg we, r_we;

// Create a 'last' pulse on the falling edge of href
assign last = ({href, r_href} == 2'b01) ? 1'b1 : 1'b0;
// Create a 'valid' pulse on the rising edge of write enable
assign valid = ({we, r_we} == 2'b10) ? 1'b1 : 1'b0;

always @(posedge pclk)
begin 
  r_href <= href;
  r_we <= we;

  // Reset values on the end of a frame
  if (vsync == 1)
  begin
    cnt <= 'd0;
    we <= 1'b0;
  end
  else
  begin
    // While reading a line, output the RGB value once we have received all
    // colour channels
    if (href == 1'b1)
    begin
      if (cnt == 'd2)
      begin
        cnt <= 'd0;
        we <= 1'b1;
      end
      else
      begin
        cnt <= cnt + 'd1;
        we <= 1'b0;
      end
    end

    // Update the pixel data according to our internal counter
    case (cnt)
      1 : begin
        dout[23:16] <= d;   
      end
      0 : begin
        dout[15: 8] <= d;
      end
      2 : begin
        dout[ 7: 0] <= d;
      end
    endcase
  end
end

endmodule
