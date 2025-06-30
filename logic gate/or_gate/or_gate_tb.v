module or_gate_tb;  // for testbench 
  	reg a;		//1st input TB
  	reg b;		//2nd input TB
  	wire y;  	// output TB
  or_gate uut(a,b,y);

  	initial begin 
      // intialize wave form dumping file 
      $dumpfile("or_gate_tb.vcd"); // dump filename 
      $dumpvars(0, or_gate_tb);
      
     // connditions 
      a =0; b =0; #10;
      a =0; b =1; #10;
      a =1; b =0; #10;
      a =1; b =1; #10;
      $finish;
    end
endmodule
