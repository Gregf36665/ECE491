`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Title         : mxReceieverTest
// Project       : ECE 491 - Senior Design 1
//-----------------------------------------------------------------------------
// File          : mxReceiverTest.sv
// Author        : L. Chiesa and R. Diego
// Created       : 10.25.16
// Last modified : 10.25.16
//-----------------------------------------------------------------------------
// Description : Used to test Manchester receiver module by running multiple 
// tests. Tasks were created to make clear what is happening in the bench. This
// bench tests requirements A-E for the self-checking test bench as described 
// in the labortory. 
//-----------------------------------------------------------------------------

//This testbench assumes that you are sampling RXD at 64x the Baud Rate - You can change this based on 
//your sample rate by editing make1,make0,makeHIGH and makeLOW by changing each repeat to 1/2 your sample rate.

//Realistically you should comment out the tests that you aren't going to actively test
//Test C takes absolutely forever because I did too good of a job making noise :P

//Includes Tests A, B, C, D, E
module mxReceiverTest;


logic clk, reset, rxd, clkEnb;
logic cardet, write, error;
logic [7:0] data;
   
mxReceiver U_MXRECEIVER(.clk(clk),.reset(reset),.rxd(rxd), .data(data), .cardet(cardet),.write(write),.error(error));

import check_p::*;   
assign clkEnb = mxReceiver.fastClock;
         
// clock generator
always begin
    clk = 1;
    #5;
    clk = 0;
    #5;
end       


task make1;
    begin
    rxd = 1;
    repeat(32) @(posedge clkEnb); #1;
    rxd = 0;
    repeat(32) @(posedge clkEnb); #1;
    end
endtask

task make0;
    begin
    rxd = 0;
    repeat(32) @(posedge clkEnb); #1;
    rxd = 1;
    repeat(32) @(posedge clkEnb); #1;
    end
endtask

task makeLOW;
    begin
    rxd = 0;
    repeat(64) @(posedge clkEnb); #1;
    end
endtask

task makeHIGH;
    begin
    rxd = 1;
    repeat(32) @(posedge clkEnb); #1;
    end
endtask

task makeHIGHs(input logic [7:0] LOOPER);
    begin
     automatic logic [7:0] loop = 0;
           do begin
           makeHIGH;
           loop ++;
           end while  (loop < LOOPER-1);
    loop = 0;
    end
endtask

task makeLOWs(input logic [7:0] LOOPER);
    begin
     automatic logic [7:0] loop = 0;
           do begin
           makeLOW;
           loop ++;
           end while  (loop < LOOPER-1);
    loop = 0;
    end
endtask

task make1s(input logic [7:0] LOOPER);
    begin
     automatic logic [7:0] loop = 0;
           do begin
           make1;
           loop ++;
           end while  (loop < LOOPER-1);
    loop = 0;    
    end
endtask

task make0s(input logic [7:0] LOOPER);
    begin
     automatic logic [7:0] loop = 0;
           do begin
           make0;
           loop ++;
           end while  (loop < LOOPER-1);
    loop = 0;
    end
endtask

task makeSFD;
    begin
    make0;
    make0;
    make0;
    make0;
    make1;
    make0;
    make1;
    make1;
    end
endtask

task makeRandom;
    begin
     logic [3:0] loop = 0;
           do begin
           rxd = {$random } % 2;
           #1;
           loop ++;
           end while  (loop < 4'd10);
    loop = 0;    
    end
endtask

task makeRandoms;
    begin
     logic [19:0] loop = 0;
           do begin
           makeRandom;          
           loop ++;
           end while  (loop < 20'b1111_1111_1111_1111_1111);
    loop = 0;    
    end
endtask

task makePreamble(input logic [7:0] LOOPER);
    begin
     automatic logic [7:0] loop = 0;
           do begin
           make1;
           make0;
           loop ++;
           loop ++;
           end while  (loop < LOOPER-1);
    loop = 0;    
    end
endtask







logic testVal;

initial begin
    $monitor("", $time, clk, reset, rxd, data, testVal);
    //RESET STATE
    reset = 1;
    rxd = 1;
    testVal = 0;
    #20;
    reset = 0; 
    
    makeHIGHs(16);
    
    
    //BEGIN TEST A
    testVal = 1;
    makePreamble(16);
    makeSFD; //Preamble and SFD;
    //Begin 8 Bit Data; 8'b01010101
    make0;
    make1;
    make0;
    make1;
    make0;
    make1;
    make0;
    make1;

    //End 8 Bit Data;
    makeHIGHs(2);
    check_ok("Test A: Input Value of 8'b01010101", data, 8'b01010101);
    makeHIGHs(14);
    testVal = 0;
    makeHIGHs(16);
    
    
    
    //BEGIN TEST B
    testVal = 1;
    make1s(16);
    makeSFD; //Preamble and SFD;
    //Begin First 8 Bit Data; 8'b11001100
    make1;
    make1;
    make0;
    make0;
    make1;
    make1;
    make0;
    make0;
    //End 8 Bit Data;
    //Begin Second 8 Bit Data; 8'b0000111
    make0;
    make0;
    check_ok("Test B: First Data Byte; Input Value of 8'b11001100", data, 8'b11001100);
    make0;
    make0;
    make1;
    make1;
    make1;
    make1;
    //End 8 Bit Data
    //Begin Third 8 Bit Data; 8'b11110000
    make1;
    make1;
    check_ok("Test B: First Second Byte; Input Value of 8'b11001100", data, 8'b00001111);
    make1;
    make1;
    make0;
    make0;
    make0;
    make0;
    //End 8 Bit Data;
    rxd = 1;
    #20;
    check_ok("Test B: Third Data Byte; Input Value of 8'b11001100", data, 8'b11110000);  
    #140;
    testVal = 0;
  
    //BEGIN TEST D
    makeHIGHs(16);
    testVal = 1;
    make1s(16);
    makeSFD; //Preamble and SFD;
    //Begin 8 Bit Data; 8'b1111(LOW)000
    make1;
    make1;
    make1;
    make1;
    makeLOW;
    make0;
    make0;
    make0;
    //End 8 Bit Data;
    makeHIGHs(2);

    check_ok("Test D: Input Value of 8'b1111(LOW)000 -> ERROR", error, 1);
    makeHIGHs(14);
    testVal = 0;
    
    //BEGIN TEST E
    makeHIGHs(16);
    testVal = 1;
    make1s(16);
    makeSFD; //Preamble and SFD;
    //Begin 8 Bit Data; 8'b1111(LOW)000
    make1;
    make1;
    make1;
    make1;
    makeHIGH;
    makeHIGH;
    makeHIGH;
    makeHIGH;
    //End 8 Bit Data;
    makeHIGHs(2);
    
    check_ok("Test E: Input Value of 8'b1111(HIGH)(HIGH)(HIGH)(HIGH) -> ERROR", error, 1);
    makeHIGHs(14);
    testVal = 0;
    
    
    
   
     
      //BEGIN TEST C
      //Add 10^6 bits of varying input {$random } % n
      
      makeRandoms;
      testVal = 1;
      make1s(16);
      makeSFD; //Preamble and SFD;
      //Begin 8 Bit Data; 8'b11100011
      make1;
      make1;
      make1;
      make0;
      make0;
      make0;
      make1;
      make1;
      //End 8 Bit Data;
      rxd = 1;
      #20;
      check_ok("Test C: Input Value of 8'b11100011", data, 8'b11100011);
      #140;
      testVal = 0;
      makeRandoms;
      
    
end   

endmodule