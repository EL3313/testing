module fa(
    input a, b, cin, 
    output suma, cout1
    );

    assign suma = a ^ b ^ cin;
    assign cout1 = (a & b) | (a ^ b) & cin ;
endmodule
