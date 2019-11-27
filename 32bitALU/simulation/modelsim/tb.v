
`timescale 1ns / 1ns
module tb  ; 
 
  wire  [30:0]  dsa   ; 
  wire  [31:0]  asd   ; 
  wire    overflow   ; 
  wire  [31:0]  out   ; 
  wire    zero   ; 
  reg  [31:0]  a   ; 
  reg  [31:0]  b   ; 
  wire    less   ; 
  reg  [2:0]  op   ; 
  wire    cout   ; 
  orkun  
   DUT  ( 
       .dsa (dsa ) ,
      .asd (asd ) ,
      .overflow (overflow ) ,
      .out (out ) ,
      .zero (zero ) ,
      .a (a ) ,
      .b (b ) ,
      .less (less ) ,
      .op (op ) ,
      .cout (cout ) ); 



// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  a  = 32'b00000000000000000111111101010101  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  b  = 32'b00000000000000000000110111011001  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  op  = 3'b111  ;
	 # 1000 ;
// dumped values till 1 us
  end



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  initial
  begin
   repeat(10)
   begin
	   if (less  != (1'b1  )) $display($time, " test case failed");
	  #50  if (less  != (1'b0  )) $display($time, " test case failed");
	  #50 ;
// 1 us, repeat pattern in loop.
   end
  end

  initial
	#2000 $stop;
endmodule
