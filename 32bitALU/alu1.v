 
module alu1(out,set,cout,a,b,cin,less,op);

	input a,b,cin;
	input less;
	input [2:0] op;

	
	output cout;
	output out;
	output set;
	wire not1,not2,xor1,and1,or1,nand1,and2,and3,or2,nand3,ww,w;
	
	not (not1, b);
	not (not2, op[2]);
	and (ww,b,not2);
	and (w,not1,op[2]);
	or (xor1,ww,w);
	
	and (and1, a, xor1);
	or (or1, a, xor1);
	not (nand1 ,and1);
	and (and2 , nand1, or1);
	and (and3 ,and2 ,cin);
	or (or2 , and2, cin);
	not (nand3, and3);
	and (set, nand3, or2);
	or (cout, and1 ,and3);
	

	mux1 hadi(out,and1,or1,set,less,op[1:0]);
	 

	
endmodule







	