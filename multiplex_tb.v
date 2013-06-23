module top;
reg in1 ,in0;
reg s1;
wire out;

 mux2_1 m1 (out, in1,in0,s1);


initial
begin
 $dumpfile("test.vcd");
 $dumpvars(0, top);
  
   in0=1'b0; in1=1'b0; s1=1'b0;
  #5 in0=1; in1=0; s1=0;
 #5 in0=1; in1=0; s1=1;
  #5 in0=1; in1=1; s1=1;
  #20 $finish;
  end

  initial
   begin
   $monitor($time,"\toutput= %b,input=%b, input_2=%b , select=%b\n", out,in0,in1,s1);

   end

endmodule
