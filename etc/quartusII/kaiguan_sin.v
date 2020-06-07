module kiaguan_sin(s_in,s_out);
input s_in;
output [8:0]s_out;
reg[8:0]s_out;
always@(s_in)
begin
  if(s_in)
    begin
      s_out[8:0]<=9'b100001110;
    end
  else
    begin
      s_out[8:0]<=9'bz;
    end 
end
endmodule
  