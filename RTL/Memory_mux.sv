module Memory_mux (
    input logic  [31:0] toLSU,rdata,
    input logic [31:0] addr,
    output logic [31:0] mem_out
);

always_comb begin 
    // case (addr[13])
    //    1'b0 : mem_out = rdata; // Data Memory
    //    1'b1 : mem_out=  toLSU; // Instruction Memory
    // endcase

    if ((addr[12] | addr[13] | addr[14] | addr[15]) & toLSU != 32'hdeadbeef)
    // if ((addr[12] | addr[13] | addr[14] | addr[15] ))
    // if ((addr[12] | addr[13] | addr[14] | addr[15] ))
        mem_out=  toLSU; // Instruction Memory
    else
        mem_out = rdata; // Data Memory   
end
    
endmodule

