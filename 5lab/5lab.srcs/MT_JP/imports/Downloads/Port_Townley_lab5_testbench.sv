`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2016 08:39:22 PM
// Design Name: 
// Module Name: man_receiver_bench_2
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
// 
//////////////////////////////////////////////////////////////////////////////////


module man_receiver_bench_2();

    logic clk_enb, clk, reset, rxd, cardet, write, error;
    logic [7:0] data;
    
    
    
    import check_p::*;
    
    man_receiver #(781_250) duv (.clk, .reset, .rxd, .cardet, .data, .write, .error);//50_000//781_250

    
    assign clk_enb = man_receiver.clk_enb;
    
    
    
    
    
    
    always
        begin
            clk = 0;
            #5 clk = 1;
            #5;
        end
        
     task send_man0;
        rxd = 0;
        repeat(16) @(posedge clk_enb); #1;
        
        rxd = 1;
        repeat(16) @(posedge clk_enb); #1;
        
     endtask;
     
     
     task send_man1;
        rxd = 1;
        repeat(16) @(posedge clk_enb); #1;
        
        rxd = 0;
        repeat(16) @(posedge clk_enb); #1;
        
     endtask;
     
     task send_erron_00;
        rxd = 0;
        repeat(32) @(posedge clk_enb); #1;
        
     endtask;
     
     task send_pream;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
        
     endtask;
     
     
     task send_sfd;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         send_man1;
         send_man0;
         send_man1;
         send_man1;
     endtask;
     
     
     task send_0x33;
         send_man1;
         send_man1;
         send_man0;
         send_man0;
         send_man1;
         send_man1;
         send_man0;
         send_man0;
         check_ok("check data is 0x33", data, 8'h33);
     endtask;
        
     
    task send_0x55;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
         send_man1;
         send_man0;
         check_ok("check data is 0x55", data, 8'h55);
     endtask;
     
     
    task send_0x0f;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         check_ok("check data is 0x0f", data, 8'h0f);
     endtask;
     
    task send_0x00;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         send_man0;
         check_ok("check data is 0x00", data, 8'h00);
     endtask;
     
     
    task send_0xff;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         send_man1;
         check_ok("check data is 0xff", data, 8'hff);
     endtask;
     
     
     
     task check_reset;
       reset = 1;
       rxd = 0;
       @(posedge clk) #1;
       check_ok("check reset asserts data out low", data, '0);
       check_ok("check reset asserts error low", error, 1'b0);
       check_ok("check reset asserts cardet low", cardet, 1'b0);
       check_ok("check reset asserts write low", write, 1'b0);
       #1;
       @(posedge clk) #1;
       reset = 0;
       #100;
    endtask //
    
    
    
    task check_1B_frame_0x33;
       reset = 0;
       rxd = 1;
       repeat(400) @(posedge clk_enb); #1; 
       
       send_pream;
       send_pream;
       check_ok("check cardet is asserted after preamble", cardet, 1'b1);
       send_sfd;
       
       
       send_0x33;
       
       check_ok("check cardet is asserted during transmission", cardet, 1'b1);
       check_ok("check no error", error, 1'b0);
       
       #1000;
       
    endtask //
    
    
    
    
    
    task check_24B_frame;
       reset = 0;
       rxd = 1;
       repeat(400) @(posedge clk_enb); #1;
       
       send_pream;
       send_pream;
       check_ok("check cardet is asserted after preamble", cardet, 1'b1);
       send_sfd;
       check_ok("check no error", error, 1'b0);
       
       send_0x33;
       check_ok("check cardet is asserted during transmission", cardet, 1'b1);
       check_ok("check no error", error, 1'b0);
       send_0x33;
       check_ok("check no error", error, 1'b0);
       send_0x33;
       send_0x55;
       send_0x55;
       send_0x0f;
       check_ok("check no error", error, 1'b0);
       send_0xff;
       send_0x00;
       send_0x33;
       check_ok("check cardet is asserted during transmission", cardet, 1'b1);
       send_0x55;
       send_0xff;
       send_0x0f;
       send_0x00;
       send_0x55;
       send_0x0f;
       send_0x33;
       send_0xff;
       send_0x0f;
       send_0x55;
       send_0x33;
       send_0x0f;
       send_0x00;
       check_ok("check no error", error, 1'b0);
       send_0xff;
       check_ok("check no error", error, 1'b0);
       send_0x55;
       check_ok("check no error", error, 1'b0);
       check_ok("check cardet is asserted during transmission", cardet, 1'b1);
       
       rxd = 1;
       repeat(400) @(posedge clk_enb); #1;
       
       
       #1;
       @(posedge clk) #1;
       reset = 0;
       #1000;
    endtask //
        
        
        
    task check_10_6_rand;
       reset = 0;
       
       repeat(32000000) @(posedge clk_enb) rxd = {$random } % 32; #1;
       
       
       //rxd = {$random } % 1;
       
       send_pream;
       send_pream;
       check_ok("check cardet is asserted after preamble", cardet, 1'b1);
       send_sfd;
       
       send_0x33;
       check_ok("check cardet is asserted during transmission", cardet, 1'b1);
       check_ok("check no error", error, 1'b0);
       
       repeat(32000000) @(posedge clk_enb) rxd = {$random } % 32; #1;
       
       check_ok("check data is STILL 0x33 after 10^6 rand bit periods", data, 8'h33);
       
       
       #1000;
       
    endtask //
    
    task check_send_erroneous_bit;
       reset = 0;
       rxd = 1;
       repeat(400) @(posedge clk_enb); #1; 
       
       send_pream;
       send_pream;
       check_ok("check cardet is asserted after preamble", cardet, 1'b1);
       send_sfd;
       
       
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       send_erron_00;
       #1;
       check_ok("check erroneous 00 causes error", error, 1'b1);
       
       
       #1000;
       
    endtask //
    
    task check_premature_end;
       reset = 0;
       rxd = 1;
       repeat(400) @(posedge clk_enb); #1; 
       
       send_pream;
       send_pream;
       check_ok("check cardet is asserted after preamble", cardet, 1'b1);
       send_sfd;
       
       
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       send_man0;
       
       repeat(33) @(posedge clk_enb); #1;
       
       check_ok("check premature end causes error", error, 1'b1);
       
       
       #1000;
       
    endtask //

        
        initial begin
            reset = 1;
            rxd = 1;
            @(posedge clk) #1;
            reset = 0;
            #50;
            check_reset;
            #1000;
            
            check_1B_frame_0x33;
            
            repeat(100) @(posedge clk_enb); #1;
            
            check_24B_frame;
            check_10_6_rand;
            check_send_erroneous_bit;
            check_premature_end;
            check_summary_stop;
            $stop;
            
                                                                                                                                                            
        end






endmodule
