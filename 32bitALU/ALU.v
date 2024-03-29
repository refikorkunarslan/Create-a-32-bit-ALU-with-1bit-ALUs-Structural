module orkun(zero, out, overflow, cout, a, b, op,asd,dsa,less);
   
	 input [31:0] a; 
	 input [31:0] b;
    input [2:0] op;
    
	 output zero;
    output [31:0] out;
	 output [31:0] asd;
	 output [30:0] dsa;
    output overflow;
    output cout;
	 output less;
	
	 
	 wire zeroOrOut,notCin,notCout,notL,notOf,and1,and2,and3,and4;
	

    alu1
        a0(out[0], asd[0], dsa[0], a[0], b[0], op[2], less, op),
        a1(out[1], asd[1], dsa[1], a[1], b[1], dsa[0], 0, op),
        a2(out[2], asd[2], dsa[2], a[2], b[2], dsa[1], 0, op),
        a3(out[3], asd[3], dsa[3], a[3], b[3], dsa[2], 0, op),
        a4(out[4], asd[4], dsa[4], a[4], b[4], dsa[3], 0, op),
        a5(out[5], asd[5], dsa[5], a[5], b[5], dsa[4], 0, op),
        a6(out[6], asd[6], dsa[6], a[6], b[6], dsa[5], 0, op),
        a7(out[7], asd[7], dsa[7], a[7], b[7], dsa[6], 0, op),
        a8(out[8], asd[8], dsa[8], a[8], b[8], dsa[7], 0, op),
        a9(out[9], asd[9], dsa[9], a[9], b[9], dsa[8], 0, op),
        a10(out[10], asd[10], dsa[10], a[10], b[10], dsa[9], 0, op),
        a11(out[11], asd[11], dsa[11], a[11], b[11], dsa[10], 0, op),
        a12(out[12], asd[12], dsa[12], a[12], b[12], dsa[11], 0, op),
        a13(out[13], asd[13], dsa[13], a[13], b[13], dsa[12], 0, op),
        a14(out[14], asd[14], dsa[14], a[14], b[14], dsa[13], 0, op),
        a15(out[15], asd[15], dsa[15], a[15], b[15], dsa[14], 0, op),
        a16(out[16], asd[16], dsa[16], a[16], b[16], dsa[15], 0, op),
        a17(out[17], asd[17], dsa[17], a[17], b[17], dsa[16], 0, op),
        a18(out[18], asd[18], dsa[18], a[18], b[18], dsa[17], 0, op),
        a19(out[19], asd[19], dsa[19], a[19], b[19], dsa[18], 0, op),
        a20(out[20], asd[20], dsa[20], a[20], b[20], dsa[19], 0, op),
        a21(out[21], asd[21], dsa[21], a[21], b[21], dsa[20], 0, op),
        a22(out[22], asd[22], dsa[22], a[22], b[22], dsa[21], 0, op),
        a23(out[23], asd[23], dsa[23], a[23], b[23], dsa[22], 0, op),
        a24(out[24], asd[24], dsa[24], a[24], b[24], dsa[23], 0, op),
        a25(out[25], asd[25], dsa[25], a[25], b[25], dsa[24], 0, op),
        a26(out[26], asd[26], dsa[26], a[26], b[26], dsa[25], 0, op),
        a27(out[27], asd[27], dsa[27], a[27], b[27], dsa[26], 0, op),
        a28(out[28], asd[28], dsa[28], a[28], b[28], dsa[27], 0, op),
        a29(out[29], asd[29], dsa[29], a[29], b[29], dsa[28], 0, op),
        a30(out[30], asd[30], dsa[30], a[30], b[30], dsa[29], 0, op),
        a31(out[31], asd[31], cout, a[31], b[31], dsa[30], 0, op);

    or (zeroOrOut, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15], out[16], out[17], out[18], out[19], out[20], out[21], out[22], out[23], out[24], out[25], out[26], out[27], out[28], out[29], out[30], out[31]);
	 not z1(zero, zeroOrOut);
		  
	 not (notOf, overflow);
	 not (notL, asd[31]);
	 and (and3 , notL , overflow);
	 and (and4, asd[31],notOf);
	 or (less ,and3, and4);
	 
	 
	 not (notCin, dsa[30]);
	 not (notCout, cout);
	 and (and1 , notCin , cout);
	 and (and2, dsa[30],notCout);
	 or (overflow ,and1, and2);
	 
   
	
		  

endmodule