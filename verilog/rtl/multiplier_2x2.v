module  multiplier_2x2 (
    input [1:0]a,b,
    output [3:0]p);
wire ppo,pp1,pp2,pp3;
wire c1;
assign ppo=a[0]&b[0];
assign pp1=a[1]&b[0];
assign pp2=a[0]&b[1];
assign pp3=a[1]&b[1];
assign p[0]=ppo;
half_adder uu1(.a(pp1),.b(pp2),.sum(p[1]),.carry(c1));
half_adder uu2(.a(pp3),.b(c1),.sum(p[2]),.carry(p[3]));

endmodule