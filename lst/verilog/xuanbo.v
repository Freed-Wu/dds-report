module xuanbo(
	input [9:0] cos,
	input [9:0] sin,
	input [9:0] fangbo,
	input [9:0] sanjiaobo,
	input [2:0] xuanze,
	output [9:0] boxin,
);
reg [9:0] boxin;
always@(*) begin
	case(xuanze)
		4'b000: begin
			boxin = cos;
		end
		4'b001: begin
			boxin = sin;
		end
		4'b010: begin
			boxin = fangbo;
		end
		4'b011: begin
			boxin = sanjiaobo;
		end
	endcase
end
endmodule

