module adder12(sum, data1, data2);
output [11:0] sum;
input [11:0] data1;
input [3:0] data2;
assign sum = data1 + data2;
endmodule
