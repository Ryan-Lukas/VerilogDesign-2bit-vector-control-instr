module Sum_str(A1,A0,B1,B0,Sum1,Sum0);
	input A1,A0,B1,B0;
	output Sum1,Sum0;

	and U0(w0,A0,B0);
	or U1(Sum1,w0,A1,B1);

	xor U2(Sum0,A0,B0);
endmodule
