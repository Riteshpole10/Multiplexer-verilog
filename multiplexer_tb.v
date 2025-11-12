module multiplexer_tb;
  reg a;
  reg b;
  reg sel;
  wire out;

 //instantiationofthemultiplexermodule
  multiplexer multipexer_dut(
 .a(a),
  .b(b),
  .sel(sel),
  .out(out)
  );
 
  //create teststimuli
  initial begin
  //initializeinputs
  a=0; b=0; sel=0;
  #100;//wait100ns
 
  //test allcombinations
  $display("Start test stimuli at time %0t", $time);
  a = 0; b = 0; sel =0; #100;
  a = 0; b = 0; sel =1; #100;
   a=0;b=1;sel=0;#100;
  a=0;b=1;sel=1;#100;
  a=1;b=0;sel=0;#100;
  a=1;b=0;sel=1;#100;
  a=1;b=1;sel=0;#100;
  a=1;b=1;sel=1;#100;
 
  //endsimulation
  $display("Stopteststimuli attime%0t", $time);
 $stop;
  end
 
  
  always @(a or b or sel)begin
  #50;

  if (sel == 1) begin
  if(out!==a)begin
  $display("Errorattime%0t:sel=%b,a=%b,b=%b,out=%b", $time,sel,a,
 b,out);
  end
  end else begin
  if(out!==b)begin
  $display("Errorattime%0t:sel=%b,a=%b,b=%b,out=%b", $time,sel,a,
 b,out);
  end
  end
  end
 
  endmodule
