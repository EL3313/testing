module rca #(parameter n = 64)(
    input [n-1:0] A, B, 
    input Cin,
    input clk,
    output [n-1:0] S,
    output Cout
    );

    wire [n:0] Ci;

    assign Ci[0] = Cin;
    assign Cout = Ci[n];

    genvar i;
    generate
        for(i = 0; i < n; i = i + 1) begin: rca_
            fa fa_(.a(A[i]), .b(B[i]), .cin(Ci[i]), .s(S[i]), .cout(Ci[i+1]));
        end
    endgenerate
endmodule
