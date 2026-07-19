`timescale 1ns/1ps

module tb_multiplier_2x2;

reg [1:0] a;
reg [1:0] b;
wire [3:0] p;

multiplier_2x2 uut (
    .a(a),
    .b(b),
    .p(p)
);

initial begin
    
    $dumpfile("sim/wave.vcd");
    $dumpvars(0, tb_multiplier_2x2);

    $display("-------------------------------");
    $display(" Time\tA\tB\tProduct");
    $display("-------------------------------");

    a=2'b00; b=2'b00; #10;
    a=2'b00; b=2'b01; #10;
    a=2'b00; b=2'b10; #10;
    a=2'b00; b=2'b11; #10;

    a=2'b01; b=2'b00; #10;
    a=2'b01; b=2'b01; #10;
    a=2'b01; b=2'b10; #10;
    a=2'b01; b=2'b11; #10;

    a=2'b10; b=2'b00; #10;
    a=2'b10; b=2'b01; #10;
    a=2'b10; b=2'b10; #10;
    a=2'b10; b=2'b11; #10;

    a=2'b11; b=2'b00; #10;
    a=2'b11; b=2'b01; #10;
    a=2'b11; b=2'b10; #10;
    a=2'b11; b=2'b11; #10;

    $finish;
end

initial begin
    $monitor("%4t\t%b\t%b\t%b", $time, a, b, p);
end

endmodule