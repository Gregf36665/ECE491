`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lafayette College, ECE 491, Lab 5
// Engineer: Meridith Guro, Emilie Grybos
// 
// Create Date: 10/22/2016 10:29:39 AM
// Module Name: mx_rcvr_bench_1
// Project Name: Lab_5
// Target Devices: Nexys4DDR
// Tool Versions: Vivado 2016.2
// Description: In this testbench, we verify that our manchester receiver can handle
// a longer data frame consisting of a 24-bit preamble/SFD followed by a string of
// at least 24 data bytes. The 'rxd' input value should be a constant "1" before and
// after the frame. We also verify that a deliberately erroneous input in which
// rxd remains low throughout an entire bit period as part of a larger input frame
// causes an error to be asserted and the receiver handles as expected. Testbench
// defined in the lab handout Requirements 10.b and 10.d. 
// 
// Dependencies: mx_rcvr, transmitter (Lab 3)
//////////////////////////////////////////////////////////////////////////////////


module mx_rcvr_bench_1();
    parameter EOF_LEN = 2;
    parameter PREAMBLE_LEN = 16;
    //parameter EXPECTED_LEN = 8;
    parameter N = $clog2(PREAMBLE_LEN);
    //parameter W = $clog2(EXPECTED_LEN);
    parameter BIT_TIME = 20_000;
    parameter BAUD_TIME = BIT_TIME/2;
    parameter NUM_DATA_BYTES = 24;

    import check_p::*;
    
    logic clk, reset, rxd, cardet, write, error;
    logic [7:0] data;
    
    mx_rcvr #() DUV( .clk(clk), .reset(reset), .rxd(rxd), .cardet(cardet), .data(data), .write(write), .error(error) );
    
    always begin
        clk = 0;
        #5 clk = 1;
        #5;
    end
    
    /* 
     * function create_Frame takes data and an error flag to output manchesterized frame
     */
    function [2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES:0] create_Frame(input logic [8*NUM_DATA_BYTES-1:0] data_byte);
        integer i;
        logic [16*NUM_DATA_BYTES-1:0] m_data; //Manchesterized data byte from input data_byte
        logic [2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES:0] m_Frame; //Manchesterized frame (preamble, SFD, data byte)
        logic [2*(PREAMBLE_LEN)-1:0] m_pre; //Manchesterized preamble
        
        //Create Preamble
        for( i=0; i <= PREAMBLE_LEN-1; i=i+1 ) begin
            if( i%2 == 0 ) begin
                m_pre[i*2] = 1'b1; 
                m_pre[i*2+1] = 1'b0;
            end
            else begin
                m_pre[i*2] = 1'b0;
                m_pre[i*2+1] = 1'b1;
            end
        end
                  
        //Manchesterize data_byte to be received
        m_data = manchesterize_data(.data_in(data_byte));
        
        m_Frame[2*(PREAMBLE_LEN)-1:0] = m_pre; //adding preamble
        m_Frame[2*(PREAMBLE_LEN)+16-1:2*(PREAMBLE_LEN)] = 16'b0101100110101010;
        m_Frame[NUM_DATA_BYTES*16-1+2*(PREAMBLE_LEN)+16:2*(PREAMBLE_LEN)+16] = m_data;
        return m_Frame; 
    endfunction
    
    function [16*NUM_DATA_BYTES-1:0] manchesterize_data(input [8*NUM_DATA_BYTES-1:0] data_in);
        integer i;
        logic [16*NUM_DATA_BYTES-1:0] m_data;
        for( i = 0; i <= 8*NUM_DATA_BYTES-1; i=i+1 ) begin
            if(data_in[i] == 1) begin
                m_data[i*2] = 1'b1; 
                m_data[i*2+1] = 1'b0;
            end
            else begin
                m_data[i*2] = 1'b0;
                m_data[i*2+1] = 1'b1;
            end
        end
        
        return m_data;
    endfunction
    
    function [7:0] generateByte();
        logic [7:0] data;
        data = { $random } % 8'hff;        
        return data;
    endfunction
    
    /*
     *
     */
    task check_reset();
        reset = 0;
        rxd = 1'b1;
        
        repeat(BAUD_TIME) @(posedge clk);
        reset = 1;
        rxd = 1'b1;
        
        repeat(BAUD_TIME) @(posedge clk);
        check("Check reset cardet", cardet, 0);
        check("Check reset write", write, 0);
        check("Check reset error", error, 0);
        
        repeat(BAUD_TIME) @(posedge clk);
        reset = 0;
        
        repeat(BAUD_TIME) @(posedge clk);
    endtask
    
        /*
     * 
     */
    task check_N_Bytes(input logic [8*NUM_DATA_BYTES-1:0] data_byte);
        integer i, j; 
        integer num_data_bytes = NUM_DATA_BYTES;
        logic data_bit;
        logic [2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES:0] m_frame;
        //$display("Data byte %b", data_byte);
        
        check("Single data byte - cardet before receive", cardet, 0);
        
        //        for( j=0; j<NUM_DATA_BYTES; j=j+1 ) begin
        //            b = generateByte();
        //            m_b = generateManchesterByte(b);
                    
        //            $display("b: %b", b);
        //            $display("m_b: %b", m_b);
                    
        //            if ( j == 0 ) data_byte[15:0] = m_b;
        //            else data_byte[15+16*2^(j-1):16*2^(j-1)] = m_b;
        //        end
        
        m_frame = create_Frame(.data_byte(data_byte));

        //Check receiver's response to preamble, SFD, and manchesterized byte
        for(i = 0; i < (2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES+EOF_LEN*2); i=i+1) begin
            //Set rxd input to bit within m_frame and hold this value for one baud
            //time where a baud is half of a manchester bit.
            if( i < 2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES+1 ) begin
                rxd = m_frame[i]; 
                repeat(BAUD_TIME) @(posedge clk);
            end
            else begin //EOF
                rxd = 1'b1; 
                repeat(BAUD_TIME) @(posedge clk);
            end
                        
            if( i <= PREAMBLE_LEN*2-1 ) begin //Preamble
                if ( i <= 16 ) check("Single data byte- cardet Preamble", cardet, 0);
                else check("Single data byte - cardet Preamble", cardet, 1);
                check("Single data byte - write Preamble", write, 0);
                check("Single data byte - error Preamble", error, 0);
            end 
            else if (i <= 2*PREAMBLE_LEN-1+16 ) begin //SFD
                check("Single data byte - cardet SFD", cardet, 1);
                check("Single data byte - write SFD", write, 0);
                check("Single data byte - error SFD", error, 0);
            end
            else if (i < 2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES ) begin //Data
                j = i - (2*(PREAMBLE_LEN)+16);
                $display("j %d", j);
                check("Single data byte - cardet data", cardet, 1);
                if ( ((j % 16 == 0) || (j % 16 == 1)) && (j != 0) && (j != 1) ) check("Single data byte - write data", write, 1);
                else check("Single data byte - write data", write, 0);
                //check("Single data byte - write data", write, 0);
                check("Single data byte - error data", error, 0);
            end
            else begin //EOF, [67, 63], checking write output NOT on bit transitions
                check("Single data byte - cardet EOF", cardet, 1);
                //first baud of EOF write should be high
                if ( 2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES < i && i <= 2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES+2 ) check("Single data byte - write EOF", write, 1); 
                else check("Single data byte - write EOF", write, 0);
                //check("Single data byte - write EOF", write, 0);
                check("Single data byte - error EOF", error, 0);
            end
        end
    endtask
    
    initial begin
        check_group_begin("Check reset");
        check_reset();
        check_group_end;

        check_group_begin("24 data byte transmission without error");
        // bb 7a c5 43 97 17 d6 ce 90 29 cf ed 7e 8b e9 4d 45 da 36 09 c1 a7 89 36
        check_N_Bytes(.data_byte(192'hbb7ac5439717d6ce9029cfed7e8be94d45da3609c1a78936));
        rxd = 1'b1;
        repeat(BAUD_TIME*20) @(posedge clk);
        check_group_end;
       
        check_group_end;
      
        check_group_begin("Check reset");
        check_reset();
        check_group_end;
        
        check_summary_stop();
    end
    
endmodule
