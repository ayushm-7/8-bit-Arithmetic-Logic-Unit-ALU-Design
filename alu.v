module alu_8bit (
    input [7:0] A,          
    input [7:0] B,           
    input [2:0] operation,      
    output reg [7:0] result, 
    output reg carry       // Carry output 
    
);

    always @(*)
     begin
        carry = 0;
       case (operation)
            3'b000: begin       // Add
                {carry, result} = A + B;
            end
            3'b001: begin       // Sub
                {carry, result} = A - B;
            end
            3'b010: begin       // And
                result = A & B;
            end
            3'b011: begin       // Or
                result = A | B;
            end
            3'b100: begin       // Xor
                result = A ^ B;
            end
            3'b101: begin       // Not A
                result = ~A;
            end
            3'b110: begin       // Inc A
                {carry, result} = A + 1;
            end
            3'b111: begin       //  Right Shift A
                result = A << 1;
            end
            default: result = 8'b00000000;
        endcase

       
    end

endmodule
