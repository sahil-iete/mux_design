module mux2_1 ( y,in1,in0,select);

 input in1,in0;
 input select;
 output y;
   wire select_bar, w1,w2;
 not (select_bar, select);
 and ( w1, in1,select);
 and (w2, in0,select_bar);
 or (y,w1,w2);

endmodule
