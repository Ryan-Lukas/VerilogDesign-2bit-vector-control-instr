module combinedBehavioral(i0,i1,a0,a1,b0,b1,sum0,sum1,diff0,diff1,overflow_sum,underflow_diff,f0,f1,error);
	input i0,i1,a0,a1,b0,b1,sum0,sum1,diff0,diff1,overflow_sum,underflow_diff;
	output f0,f1,error;
	
	assign f1 = (!i1 &!i0 & !a1)|(!i1 & i0 & a1 & b1)|(i1 & !i0 & sum1)|(i0 & i1 & diff1);
	assign f0 = (!i1 & !i0 & !a0)|(!i1 & i0 & a0 & b0)|(i1 & !i0 & sum0)|(i0 & i1 & diff0);
	assign error = (i1 & !i0 & overflow_sum)|(i1 & i0 & underflow_diff);
endmodule
	