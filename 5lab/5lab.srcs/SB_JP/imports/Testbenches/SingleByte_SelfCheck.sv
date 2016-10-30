`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2016 08:13:09 PM
// Design Name: 
// Module Name: SingleByte_SelfCheck
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


module SingleByte_SelfCheck #(parameter SAMPLE_RATE = 64) ();

    import check_p::*;

    logic clk, reset, rxd, cardet, write, error;
    logic [7:0] data_out;
     
//    logic [7:0] data_in;
//    logic send, rdy, txen;
    
    // testbench variables;
    logic [7:0] preamble = 8'b01010101;
    logic [7:0] sfd = 8'b11010000;
    logic [7:0] data1 = 8'b00110011;
    logic [7:0] data2 = 8'b00001111;
    logic [7:0] data3 = 8'b00000000;
    logic [7:0] data4 = 8'b11111111;
   
     
//    Man_Transmitter #(.BAUD_RATE(3_125_000), .WAIT_COUNT(2)) srlctr (.clk(clk), 
//        .data(data_in), .send(send), .rst(reset), .rdy(rdy), .txen(txen), .txd(rxd));
        
    mx_rcvr #(.BIT_RATE(100_000_000/SAMPLE_RATE)) mx_rcvr (.clk(clk), .reset(reset), .rxd(rxd), .cardet(cardet),
                .data(data_out), .write(write), .error(error));
    
    always begin
        clk = 1; #5;
        clk = 0; #5;
    end
    
    task sendStartByte(input logic[7:0] data);
        rxd = data[0]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[0]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[1]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[1]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[2]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[2]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[3]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[3]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[4]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[4]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[5]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[5]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[6]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[6]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[7]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[7]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
    endtask
    
    
    task checkByte(input logic [7:0] data);
        check_group_begin("Check single byte transmissions");
        rxd = data[0]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[0]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[1]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[1]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[2]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[2]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[3]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[3]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[4]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[4]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[5]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[5]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[6]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[6]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = data[7]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        rxd = ~data[7]; repeat(SAMPLE_RATE/2) @(posedge clk) #1;
        check("check recived data is correct", data_out, data);
        check_group_end();
    endtask
         
    initial begin
        rxd = 1;
        reset = 1; repeat(4) @(posedge clk) #1;
        reset = 0; repeat(4) @(posedge clk) #1;
        sendStartByte(.data(preamble));
        sendStartByte(.data(preamble));
        sendStartByte(.data(sfd));
        checkByte(.data(data1));
        checkByte(.data(data2));
        #1024;
        check_summary_stop;
        $stop();
    end

endmodule
