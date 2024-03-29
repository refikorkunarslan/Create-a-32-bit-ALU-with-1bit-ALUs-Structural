module mux1 (out,c0,c1,c2,c3,s1);
		input c0,c1,c2,c3;
		input [1:0] s1;
		
		output out;
		
		wire s0n,s1n;
		wire w1,w2,w3,w4;
		
		not n1(s0n,s1[0]);
		not n2(s1n,s1[1]);
		
		and and1(w1,c0,s1n,s0n);
		and and2(w2,c1,s1n,s1[0]);
		and and3(w3,c2,s1[1],s0n);
		and and4(w4,c3,s1[1],s1[0]);
		
		or or1(out,w1,w2,w3,w4);
		

endmodule