//////////////////////////////////////////////////////////////////////////////////
// Company: Lafayette College       
// Engineer: Rachel Szteinberg & Craig Lombardo 
// 
// Create Date: 10/24/2016
// Design Name: 
// Module Name: mxtest_transmitter_receiver_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench verifying specification f and g as specified by 
//              the lab manual
// 
// Dependencies: Manchester Receiver module 
//               Manchester Transmitter module
//               mx_test2.sv    **make sure length is a 10-bit logic [9:0] 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mxtest_transmitter_receiver_testbench;

    logic           clk;
    logic           reset;
    logic           run;
    logic           send;
    logic           ready;
    logic [9:0]     length;
    logic           txd;
    logic           txen;
    logic [7:0]     data_in;
    
    logic [7:0]     data_out;
    logic           cardet;
    logic           write;
    logic           error;
    
    logic [7:0]     data_out_normal;
    logic           cardet_normal;
    logic           write_normal;
    logic           error_normal;
    
    logic [7:0]     data_out_fast;
    logic           cardet_fast;
    logic           write_fast;
    logic           error_fast;
    
    logic [7:0]     data_out_slow;
    logic           cardet_slow;
    logic           write_slow;
    logic           error_slow;
    
    
    logic           enb;
        
    parameter WAITTIME = 50;
    parameter BAUDRATE_T = 9600;
    parameter BAUDRATE_R = 9600;
    
    parameter MAX = 256;
    parameter MIN = 1;
    integer i;
                
    clkenb #(.DIVFREQ(BAUDRATE_R)) baudclk (.clk(clk), .reset(reset), .enb(enb));
    // Instantiate the Unit Under Test (UUT)
    
    mxtest_2 #(.WAIT_TIME(WAITTIME)) U_MXTEST ( .clk(clk), .reset(reset), .run(run), 
        .send(send), .length(length), .data(data_in), .ready(ready)
    );
	
    // Instantiate transmitter
    transmitter #(.BITRATE(BAUDRATE_T/2)) U_transmitter ( .clk(clk), .send(send), 
        .reset(reset), .data(data_in), .rdy(ready), .txd(txd), .txen(txen)
     );
  
    // Instantiate normal receiver
    receiver #(.BITRATE(BAUDRATE_R/2)) U_receiver_normal (.clk(clk), .reset(reset),
        .rxd(txd), .data(data_out_normal), .cardet(cardet_normal), .write(write_normal), .error(error_normal)
    );
    
    // Instantiate fast receiver
    receiver #(.BITRATE(BAUDRATE_R/2 + 1000)) U_receiver_fast (.clk(clk), .reset(reset),
        .rxd(txd), .data(data_out_fast), .cardet(cardet_fast), .write(write_fast), .error(error_fast)
    );
    
    // Instantiate slow receiver
    receiver #(.BITRATE(BAUDRATE_R/2 - 1000)) U_receiver_slow (.clk(clk), .reset(reset),
        .rxd(txd), .data(data_out_slow), .cardet(cardet_slow), .write(write_slow), .error(error_slow)
    );

    always
    begin
        clk = 0;
        #1 clk = 1;
        #1;
    end
    
    task check_transmission(logic [1:0] receiver);
    
        case(receiver)
            2'b01:
                begin
                data_out = data_out_fast;
                cardet = cardet_fast;
                write = write_fast;
                error = error_fast;
                end
            2'b10:
                begin
                data_out = data_out_slow;
                cardet = cardet_slow;
                write = write_slow;
                error = error_slow;
                end
            default:
                begin
                data_out = data_out_normal;
                cardet = cardet_normal;
                write = write_normal;
                error = error_normal;
                end
        endcase
        
        reset = 1;
        #2000;
        reset = 0;
        length = MIN;
        repeat(MIN) @(posedge enb) #1;
        reset = 1;
        #2000;
        reset = 0;
        length = MAX;
        repeat(MAX) @(posedge enb) #1;
        
        reset = 1;
        #2000;
        for(i = 0; i < 10; i++)  
            begin
                reset = 0;
                length = $urandom_range(MAX, MIN);  
                repeat(length) @(posedge enb) #1;
                reset = 1;
                #2000;
            end
    endtask
    
    initial 
    begin 
        //testbench F
        check_transmission(.receiver(2'b00));
            
        //testbench G
        check_transmission(.receiver(2'b01));
        check_transmission(.receiver(2'b10));
                    
        $stop();
    end
    
    
    
 endmodule