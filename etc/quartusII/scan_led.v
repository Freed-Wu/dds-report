
module scan_led(scan,seg,clk,a0,a1,a2,a3,a4,a5,a6,a7);
input clk;
input [3:0]a0,a1,a2,a3,a4,a5,a6,a7;
output [7:0]scan;
output [3:0]seg;
reg [7:0]scan;
reg [3:0]seg;
reg [2:0]cnt;
always @(posedge clk)
begin 
  cnt<=cnt+1;
end
always
begin
  case(cnt[2:0])
  3'b000:begin scan<='b10000000;seg[3:0]=a0[3:0];end
  3'b001:begin scan<='b01000000;seg[3:0]=a1[3:0];end
  3'b010:begin scan<='b00100000;seg[3:0]=a2[3:0];end
  3'b011:begin scan<='b00010000;seg[3:0]=a3[3:0];end
  3'b100:begin scan<='b00001000;seg[3:0]=a4[3:0];end
  3'b101:begin scan<='b00000100;seg[3:0]=a5[3:0];end
  3'b110:begin scan<='b00000010;seg[3:0]=a6[3:0];end
  3'b111:begin scan<='b00000001;seg[3:0]=a7[3:0];end
endcase
end
endmodule 