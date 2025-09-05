

module inst_mem (
    input  logic [31:0] addr,     
    output logic [31:0] inst      
);

     

    logic [31:0] memory [0:255];
    
	 assign inst = memory[addr[31:2]]; 

    initial begin
        $readmemh("instructions.mem", memory);
    end

endmodule 