module adder_sin(sum,data1,data2,cout);
output cout;
output [11:0]sum;
input [11:0]data1;
input [8:0]data2;
reg cout;
reg [11:0]sum;
reg [11:0]q;
always @(*)
begin
  q=data1+data2;
  if(q<=101100111)
    begin
    sum=q;
    cout=0;
  end
  else
    begin
    sum=q-101100111;
    cout=1;
  end
end
endmodule 