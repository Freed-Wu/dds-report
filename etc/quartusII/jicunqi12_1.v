module jicunqi12_1(q,d,oe,clk);
output [11:0]q;
input [11:0]d;
input oe,clk;
reg [11:0]q;
always@(posedge clk)
 begin
   if(oe)
     begin q<=12'bz;end
   if(d<360)
     begin q<=d;end
   else
     begin q<=0;end
  end
  endmodule