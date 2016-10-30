`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 01:44:35 PM
// Design Name: 
// Module Name: checkcheck
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//                          Generates a signal at 16*BAUDRATE
//                          To run different tests, comment/uncomment the test in the initial block at the very bottom
//////////////////////////////////////////////////////////////////////////////////


module checkcheck;
    import check_p::*;
    
    logic clk, reset, cardet, write, error;
    logic serial_signal, rxd;
    logic [7:0] input_data, data, input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD;
    manchester_receiver MR(.clk(clk),.reset(reset),.rxd(rxd),.cardet(cardet),.data(data),.write(write),.error(error));
    
    always begin
        clk = 0;
        #5 clk = 1; input_data <= input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD;
        #5;
    end
    
    
    task makeZero; 
        for(int i =0; i < 8; i++) begin 
            @(posedge clk) rxd = 0; serial_signal = 0;
        end
        for(int i =0; i < 8; i++) @(posedge clk) rxd = 1;
    endtask
    
    task makeOne; 
        for(int i =0; i < 8; i++) begin
            @(posedge clk) rxd = 1; serial_signal = 1;
        end
        for(int i =0; i < 8; i++) @(posedge clk) rxd = 0;
    endtask
    
    task preamble;
        for(int i = 0; i < 4; i++) begin
            makeOne;
            makeZero;
        end
    endtask
    
    task sfd;
        makeZero;
        makeZero;
        makeZero;
        makeZero;
        makeOne;
        makeZero;
        makeOne;
        makeOne;
    endtask
    
    task byteframe;
        for(int i = 0; i < 8; i++) 
            input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD[i] = $urandom_range(1,0);
        for(int i = 0; i < 8; i++)
            if(input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD[i] == 0) makeZero;
            else makeOne;
    endtask
    
    task eof;
        for (int i = 0; i < 4; i++) @(posedge clk) rxd = 1;
    endtask
    
    task short_data_frame;
        preamble;
      
        check("cardet is high ", cardet ,1 );
        preamble;
        preamble;
        sfd;
        byteframe;
        
         check("data is input_data ", data , input_data);
        
         check("write is high  ", write ,1 );
        eof;
     
         check("cardet low ", cardet , 0);
    endtask
    
    task long_data_frame;
        preamble;
        //CHECK CARDET IS HIGH
         check(" cardet is high ", cardet , 1);
        preamble;
        preamble;
        sfd;
        for(int i = 0; i < 24; i++) byteframe;
        //CHECK DATA IS INPUT DATA
         check("data is input data ", data , input_data);
        //CHECK WRITE IS HIGH
         check(" write high ", write, 1);
        eof;
        //CHECK CARDET IS LOW
         check("cardet low ", cardet ,0);
    endtask
    
    
    task check_c;
        for (int i = 0; i< 1000000; i++) begin 
            rxd =  $urandom_range(1,0); 
        end 
        //CHECK CARDET LOW, WRITE LOW, ERRYTHANG LOW
          check("cardet low ", cardet ,0);
          check(" write low ", write, 0);
         
        short_data_frame;   
        //CHECK DATA IS INPUT_DATA(NOT THE LONG NAMED THING)
         check(" data is input data ", data , input_data);
        for (int i = 0; i< 1000000; i++) begin 
            rxd = $urandom_range(1,0); 
        end 
        //CHECK DATA HASNT CHANGED AND IS STILL INPUT_DATA
         check("data is still input data ", data , inptu_data);
        //check("rxd stays 1", rxd, 1);
    endtask

    task check_d;
        preamble;
        //CHECK CARDET IS HIGH
         check("cardet is high ", cardet ,1 );
         
     
         
        preamble;
        sfd;
        //CHECK WRITE IS LOW
        check("write is low  ", write ,0 );
        byteframe;
        //CHECK DATA IS SAME AS INPUT_DATA (NOT INPUT_DATA_THIS_SWITCHES_1CLK BLAH BLAH BLAH);
  
            check(" data is input data ", data , input_data);
        //CHECK WRITE IS HIGH
          check("write is high", write  , 1);
        input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD = 8'b0;
        for(int i = 0; i < 8*16; i++) begin
            @(posedge clk) rxd = 0;
            serial_signal = 0;
        end;
        byteframe;
        eof;
        
        
    endtask
    
    task part_e;
        preamble;
        //CHECK CARDET IS HIGH
        check("cardet is high ", cardet ,1 );
       
        preamble;
        sfd;
        
        for(int i = 0; i < 6; i++) input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD[i] = $urandom_range(1,0);
        for(int i = 0; i < 6; i++)
            if(input_data_THIS_SWITCHES_1CLK_CYCLE_BEFORE_RXD[i] == 0) makeZero;
            else makeOne;
        eof;
        
        //CHECK ERROR IS HIGH
          check("error is high ", error , 1);
        //check("proper data recieved", data, 5'b001100);  
             
    endtask
    
    initial begin
        reset = 0;
        rxd = 0;
        input_data = 8'b0;
//        short_data_frame;
//        long_data_frame;
//        check_c;
//        check_d;
        part_e;
        
    end
    
endmodule
