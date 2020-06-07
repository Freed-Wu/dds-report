module adder12(
	input [11:0] data1,
	input [3:0] data2,
	output [11:0] sum
);
assign sum = data1 + data2;
endmodule

