`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Title         : mxTransmit and Receive Bench with Off Clocks
// Project       : ECE 491 - Senior Design 1
//-----------------------------------------------------------------------------
// File          : mxTransmit_Receive_Bench_offClock.sv
// Author        : L. Chiesa and R. Diego
// Created       : 10.25.16
// Last modified : 10.25.16
//-----------------------------------------------------------------------------
// Description : Used to test Manchester transmitter and receiver modules by 
// running two clocks that are slightly off in their timing. Tasks were created 
// to make clear what is happening in the bench. This bench test for the receivers
// ability to correct transmissions that are off time. It tests requirement G for 
// the self-checking test bench as described in the labortory. 
//-----------------------------------------------------------------------------


module mxTransmit_Receive_Bench_offClock;

parameter BAUD = 50_000;
parameter BITLENGTH = 8;
parameter STAYHIGH = 2;

logic clk1, clk2, send, reset;
logic [BITLENGTH-1:0]data;
logic [7:0]dataT;
logic [7:0]dataR;
logic rdy, txd, txen;
logic [7:0]numbofbytes;
logic [7:0]bytevalue;
manchester_Transmitter #(.BAUD(50_000),.BITLENGTH(8),.STAYHIGH(2)) U_mxTrans(.clk(clk1),.send,.reset,
                                                                            .data(dataT),
                                                                            .rdy,.txd(txd),.txen);
                                                                            
logic rxd;
logic cardet, write, error;
mxReceiver #(.BAUD(50_000)) U_mxReceive(.clk(clk2), .reset, .rxd(txd),
                  .cardet, .write, .error,
                  .data(dataR));


              
import check_p::*;   
                                                                                   
    // clock generator
    always begin
        clk1 = 0;
        #5;
        clk1 = 1;
        #5;
    end    
    
   always begin
     clk2 = 0;
     #4.95;
     clk2 = 1;
     #4.95;
 end            
     

task makePreamble();
dataT = 8'b10101010;                              
send = 1;
#50_000;
send = 0;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;             
endtask

task makeSFD();
dataT = 8'b00001011;
send = 1;
#50_000;
send = 0;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;
#50_000;  
endtask

string str1,str2,str3,str;

task random_numbOfBytes();
    numbofbytes = {$random } % 256;
    numbofbytes = {$random } % 256;
    numbofbytes = {$random } % 256;
    bytevalue = 8'b00000000;
    for(int i = 0; i < numbofbytes; i++) begin
        dataT = bytevalue;                            
        send = 1;
        #50_000;
        send = 0;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;        
        bytevalue = bytevalue + 1;
        str1 = "Test G: For byte ";
        str2.itoa(i+1);
        str3 = " Random Value Received";
        str = {str1,str2,str3}; 
    end
endtask

task min_numbOfBytes();
    numbofbytes = 1;
    bytevalue = 8'b00000000;
    for(int i = 0; i < numbofbytes; i++) begin
        dataT = bytevalue;                            
        send = 1;
        #50_000;
        send = 0;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;        
        bytevalue = bytevalue + 1;
        str1 = "Test G: For byte ";
        str2.itoa(i+1);
        str3 = " Random Value Received";
        str = {str1,str2,str3}; 
    end
endtask

task max_numbOfBytes();
    numbofbytes = 256;
    bytevalue = 8'b00000000;
    for(int i = 0; i < numbofbytes; i++) begin
        dataT = bytevalue;                            
        send = 1;
        #50_000;
        send = 0;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;
        #50_000;        
        bytevalue = bytevalue + 1;
        str1 = "Test G: For byte ";
        str2.itoa(i+1);
        str3 = " Random Value Received";
        str = {str1,str2,str3}; 
    end
endtask

task waitFor(input [8:0] b);
    for(int k = 0; k < b; k++) begin
        #50_000;
    end
endtask

initial begin
// check single byte///////////////////////////////////////////////////////
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
min_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//check max number of bytes ///////////////////////////////////////////////
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
max_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//check 10 randomly generated number of bytes////////////////////////////////
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//2
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//3
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//4
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//5
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//6
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//7
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//8
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//9 
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

//10
reset = 1;
#100_000;
reset = 0; 
#100_000;
makePreamble();
makeSFD();
random_numbOfBytes;
waitFor(numbofbytes);
check_ok(str, dataR, bytevalue);
#50_000;

check_summary;
$stop();

end

endmodule
