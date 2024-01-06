
module pwm (
	clk_clk,
	reset_reset_n,
	entree_external_connection_export,
	sortie_external_connection_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[7:0]	entree_external_connection_export;
	output	[7:0]	sortie_external_connection_export;
endmodule
