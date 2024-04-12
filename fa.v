module fa(
    input a, b, cin, 
    output s, cout
    );
    // Structural design of a full adder
    assign s = a ^ b ^ cin;
    assign cout = (a & b) | (a ^ b) & cin ;
endmodule
