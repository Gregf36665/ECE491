`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Meridith Guro, Emilie Grybos
// 
// Create Date: 10/22/2016 10:29:39 AM
// Design Name: 
// Module Name: mx_rcvr_bench_3
// Project Name: Lab_5
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mx_rcvr_bench_2();
    parameter EOF_LEN = 2;
    parameter PREAMBLE_LEN = 16;
    parameter N = $clog2(PREAMBLE_LEN);
    parameter BIT_TIME = 2000;
    parameter BAUD_TIME = BIT_TIME/2;
    parameter NUM_DATA_BYTES = 1;

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
     
      task generate_noise();
         integer i, j;
         logic [7:0] rand_in;
         logic [15:0] m_rand;
         
         //(BIT_TIME)/8
         for(i = 0; i <= 32 ; i=i+1) begin
             rand_in = { $random } % 32'hffffffff;
             m_rand = manchesterize_data(.data_in(rand_in));
             
             for(j = 0; j<=15; j=j+1) begin
                 rxd = m_rand[j]; 
                 repeat(BAUD_TIME) @(posedge clk);
             end
         end
         
         $display("%b", rand_in);
         $display("%b", m_rand);
     endtask
    
    /*
     * 
     */
    task check_singleByte(input logic [8*NUM_DATA_BYTES-1:0] data_byte, input logic cont_err, input logic prev_err, input logic short_byte);
        integer i; 
        logic data_bit;
        logic [2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES:0] m_frame;
        $display("Data byte %b", data_byte);
        
        check("Single data byte - cardet before receive", cardet, 0);
        
        m_frame = create_Frame(.data_byte(data_byte));
        //$display("%b", m_frame);

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
                        
            if( i <= PREAMBLE_LEN*2-1 ) begin //Preamble, bits [0, 31]
                if(!prev_err) begin
                    if ( i <= 16 ) check("Single data byte- cardet Preamble", cardet, 0);
                    else check("Single data byte - cardet Preamble", cardet, 1);
                    check("Single data byte - write Preamble", write, 0);
                    check("Single data byte - error Preamble", error, 0);
                end
                else begin
                    if ( i <= 16 ) check("Single data byte- cardet Preamble", cardet, 0);
                    else check("Single data byte - cardet Preamble", cardet, 1);
                    check("Single data byte - write Preamble", write, 0);
                    check("Single data byte - error Preamble", error, 1);
                end
            end 
            else if (i <= 2*PREAMBLE_LEN-1+16 ) begin //SFD, [47 , 32]
                if(!prev_err) begin
                    check("Single data byte - cardet SFD", cardet, 1);
                    check("Single data byte - write SFD", write, 0);
                    check("Single data byte - error SFD", error, 0);
                end
                else begin
                    check("Single data byte - cardet SFD", cardet, 1);
                    check("Single data byte - write SFD", write, 0);
                    check("Single data byte - error SFD", error, 1);
                end
            end
            else if (i < 2*(PREAMBLE_LEN)+15+16*NUM_DATA_BYTES ) begin //Data, [63 , 48]
                if( cont_err ) begin //should go back to IDLE
                    //if set to this bound b/c of hardcoded data byte above; we expect rxd to be correct for 7 bauds
                    //in this data byte then it should be erroneous
                    if ( i <= 2*PREAMBLE_LEN-1+16+7 ) check("Single data byte - cardet data", cardet, 1);
                    else check("Single data byte - cardet data", cardet, 0);
                    check("Single data byte - write data", write, 0);
                    if ( i <= 2*PREAMBLE_LEN-1+16+7 ) check("Single data byte - error data", error, 0);
                    else check("Single data byte - error data", error, 1);
                end
                else if( short_byte ) begin
                    //if set to this bound b/c of hardcoded shortened data byte above; we expect rxd to be correct 
                    //for some bauds in this data byte then it should be 
                    if ( i <= 2*PREAMBLE_LEN-1+16+12 ) check("Single data byte - cardet data", cardet, 1);
                    else check("Single data byte - cardet data", cardet, 0);
                    check("Single data byte - write data", write, 0);
                    if ( i <= 2*PREAMBLE_LEN-1+16+12 ) check("Single data byte - error data", error, 0);
                    else check("Single data byte - error data", error, 1);
                end
                else begin
                    check("Single data byte - cardet data", cardet, 1);
                    check("Single data byte - write data", write, 0);
                    check("Single data byte - error data", error, 0);
                end
            end
            else begin //EOF, [67, 63], checking write output NOT on bit transitions
                if( cont_err || short_byte ) begin
                    check("Single data byte - IDLE due to error", cardet, 0);
                    check("Single data byte - IDLE due to error", write, 0);
                    check("Single data byte - IDLE due to error", error, 1);
                end
                else begin
                    check("Single data byte - cardet EOF", cardet, 1);
                    if ( i == 64 || i == 65 ) check("Single data byte - write EOF", write, 1); 
                    else check("Single data byte - write EOF", write, 0);
                    check("Single data byte - error EOF", error, 0);
                end
            end
        end
    endtask
    
    
    initial begin
        check_group_begin("Check reset");
        check_reset();
        check_group_end;
      
        generate_noise();      
        check_group_begin("Single data byte transmission without error");
        check_singleByte(.data_byte(8'b00110011), .cont_err(0), .prev_err(0), .short_byte(0));
        generate_noise();
        
        check_group_end;
                
        check_summary_stop();
       
    end
    
endmodule
