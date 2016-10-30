//////////////////////////////////////////////////////////////////////////////////
// Company: Lafayette College       
// Engineer: Rachel Szteinberg & Craig Lombardo 
// 
// Create Date: 10/23/2016
// Design Name: 
// Module Name: receiver_test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench verifying specifications a through e as specified by 
//              the lab manual
// 
// Dependencies: Manchester Receiver module
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module receiver_test_bench;

        logic           clk;
        logic           reset;
        logic           rxd;
        logic [7:0]     data_out;
        logic           cardet;
        logic           write;
        logic           error;
        
        logic           writeFound;
        logic           enb;
        logic           sampleEnb;
        logic [7:0]     testData;
        logic [7:0]     SFD;
        logic           noiseReset;
        logic [7:0]     lastDataOut;
        
        typedef enum logic [2:0]{
            IDLE                = 3'b000,
            PREAMBLE_GENERATE   = 3'b001,
            CHECK_SFD           = 3'b010,
            RECEIVING           = 3'b011,
            NOISE_GENERATE      = 3'b100,
            CHECKING_ERROR      = 3'b101,
            CHECKING_EOF        = 3'b110
        } states_t;
               
        states_t simulationState;
/*    *RECEIVERTOTEST* #(.BITRATE(BAUDRATE/2)) Receiver_DUB (.clk(clk), .reset(reset),
                          .rxd(rxd), .data(data_out), .cardet(cardet), .write(write), .error(error));                                 
*/    
    import check_p::*;
    
    parameter SAMPLERATE = 32;
    parameter BAUDRATE = 9600;
    
    clkenb #(.DIVFREQ(2*BAUDRATE)) baudclk (.clk(clk), .reset(reset), .enb(enb));
    clkenb #(.DIVFREQ(SAMPLERATE*BAUDRATE)) sampleclk (.clk(clk), .reset(reset | noiseReset), .enb(sampleEnb));

    always
    begin
        clk = 0;
        #1 clk = 1;
        #1;
    end
    
    integer i;
    integer j;
    
//*****************************************************************************************************
/*
 * len = the number of bits of noise to generate
 * err = bool as to whether or not err should be high
 */
    task check_noise(int len, logic err);
        noiseReset = 0;
        simulationState = NOISE_GENERATE;
        for(i = 0; i < SAMPLERATE*len; i++)
            begin
                rxd = $urandom_range(1,0);
                
                check("Data Out = last val", data_out, lastDataOut);
                check("Cardet is Low", cardet, 1'b0);
                check("Write is Low", write, 1'b0);
                check("Error is Valid", error, err);
                
                @(posedge sampleEnb) #1;
            end
        noiseReset = 1;
    endtask
    
//*****************************************************************************************************
/*
 * len = the number of bits of noise to generate
 * err = bool as to whether or not err should be high
 */
    task check_preamble(int len, logic err);
        simulationState = PREAMBLE_GENERATE;
        for(j = 0; j<len; j++)
        begin
            check_signal(.len(2), .data(8'b00000001), .forPreamble(1'b1), .forConsecutive(1'b0));
            
            if(j > 8) check("Cardet is High", cardet, 1'b1);
            else check("Cardet is Low", cardet, 1'b0);
            
            check("Data Out = last val", data_out, lastDataOut);
            check("Write is Low", write, 1'b0);
            check("Error is Valid", error, err);
            
        end
    endtask

//*****************************************************************************************************
     
    task check_for_write;
        writeFound = 0;
        lastDataOut = data_out;
        for(i = 0; i < 16; i++)
            begin
                if(write)
                    begin
                       writeFound = 1;
                       break;
                    end
                @(posedge enb) #1;
            end
        check("Write asserted", writeFound, 1'b1);
    endtask
    
//*****************************************************************************************************
/*
 * len = the number of bits of noise to generate
 * data = the data that should be simulated receiving
 * err = bool as to whether or not err should be high
 */
    task check_sfd(int len, logic [7:0] data, logic err);
        simulationState = CHECK_SFD;
        testData = data;
        for(i = 0; i < len & i < 16; i++)
        begin
            rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
            check("Data Out = last val", data_out, lastDataOut);
            check("Cardet is High", cardet, 1'b1);
            check("Write is Low", write, 1'b0);
            check("Error is Valid", error, err);
            
            @(posedge enb) #1;
        end
    endtask
    
//*****************************************************************************************************
/*
 * len = the number of bits of noise to generate
 * data = the data that should be simulated receiving
 * forPreamble = whether or not the signal is the preamble
 */
    task check_signal(int len, logic [7:0] data, logic forPreamble, logic forConsecutive);
        simulationState = forPreamble ? PREAMBLE_GENERATE : RECEIVING;
        testData = data;
        for(i = 0; i < 2*len & i < 16; i++)
            begin
                rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
                check("Valid Half", rxd, (i%2 == 0) ? data[i/2] : !data[i/2]);
                
                check("Data Out = last val", data_out, lastDataOut);
                check("Cardet is High", cardet, 1'b1);
                if(forConsecutive)
                    if(write)
                        writeFound = 1'b1;
                else
                    check("Write is Low", write, 1'b0);
                check("Error is Low", error, 1'b0);
                
                @(posedge enb) #1;
            end
            if(forConsecutive) check("Write asserted", writeFound, 1'b1);
        lastDataOut = data;
    endtask

//*****************************************************************************************************

    task send_complete;
        simulationState = IDLE;
        rxd = 1;
    endtask

//*****************************************************************************************************

    task test_bench_setup;
        clk = 0;
        reset = 0;
        rxd = 1;
        data_out = '0;
        lastDataOut = '0;
        cardet = 0;
        write = 0;
        error = 0;
        writeFound = 0;
        simulationState = IDLE;
        noiseReset = 1;
        i = 0;
        j = 0;
        
        SFD = 8'b11010000;
    endtask
    
//*****************************************************************************************************

    task check_reset;
        rxd = 1;
        reset = 1;
        data_out = '0;
        simulationState = IDLE;
        #20000;
        reset = 0;
        
        repeat(10) @(posedge enb) #1;
    endtask
//*****************************************************************************************************
 /*
 * n = number of EOF bits
 */   
    task check_EOF_valid(int n);
        simulationState = CHECKING_EOF;
        for(i = 0; i < 2*n; i++)
            begin
                rxd = 1;
                @(posedge enb) #1;
            end
        check("Cardet is High", cardet, 1'b1);
        check("Error is Low", error, 1'b0);
        check("Data Out = last val", data_out, lastDataOut);
        //check_for_write;
    endtask

//*****************************************************************************************************
/*
* n = number of EOF bits
*/      
    task check_EOF_erroneous(int n);
    simulationState = CHECKING_EOF;
        for(i = 0; i < 2*n - 2; i++)
            begin
               rxd = 0;
               @(posedge enb) #1;
            end
        check("Error is High", error, 1'b1);
        //check("Cardet is High", cardet, 1'b1);
        check("Data Out = last val", data_out, lastDataOut);
        //check_for_write;
    endtask

//*****************************************************************************************************
        
    task check_high_fail(logic [7:0] data);
         simulationState = CHECKING_ERROR;
         testData = data;
         for(i = 0; i < 2*3; i++)
             begin
                 rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
                 @(posedge enb) #1;
             end
         rxd = 1;
         repeat(2)  @(posedge enb) #1;
         for(i = 4; i < 4+2*4; i++)
             begin
                 rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
                 @(posedge enb) #1;
             end
         check("Error is High", error, 1);    
      endtask 
        
 //*****************************************************************************************************
         
      task check_low_fail(logic [7:0] data);
      simulationState = CHECKING_ERROR;
         testData = data;
         for(i = 0; i < 2*3; i++)
             begin
                 rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
                 @(posedge enb) #1;
              end
         rxd = 0;
         repeat(2)  @(posedge enb) #1;
         for(i = 4; i < 4+2*4; i++)
              begin
                  rxd = (i%2 == 0) ? data[i/2] : !data[i/2];
                  @(posedge enb) #1;
              end
         check("Error is High", error, 1);    
      endtask
    
//*****************************************************************************************************

    task end_test;
        $stop();
    endtask
    
    //check_noise(int len, logic err);
    //check_preamble(int len, logic err);
    //check_write;
    //check_sfd(int len, logic [7:0] data, logic err);
    //check_signal(int len, logic [7:0] data, logic forPreamble, logic forConsecutive);
    
    initial begin
        test_bench_setup;
        check_reset;
        
        //Test A
        check_preamble(.len(24), .err(1'b0));
        check_sfd(.len(8), .data(SFD), .err(1'b0));
        check_signal(.len(8), .data(8'b11110000), .forPreamble(1'b0), .forConsecutive(1'b0));
        check_EOF_valid(.n(12));
        send_complete;
        check_reset;

        //Test B        
        check_preamble(.len(24), .err(1'b0));
        check_sfd(.len(8), .data(SFD), .err(1'b0));
        repeat(24) check_signal(.len(8), .data($urandom_range(8'hFF, 8'h00)), .forPreamble(1'b0), .forConsecutive(1'b1));
        check_EOF_valid(.n(2));
        send_complete;
        check_reset;

        //Test C
        /*
        check_noise(.len(10e6), .err(1'b0));
        check_preamble(.len(24), .err(1'b0));
        check_sfd(.len(8), .data(SFD), .err(1'b0));
        check_signal(.len(8), .data(8'b11110000), .forPreamble(1'b0), .forConsecutive(1'b1));
        send_complete;
        check_noise(.len(10e6), .err(1'b0));
        check_reset;
        */
        
        //Test D
        check_high_fail(.data(8'b01011010));
        check_low_fail(.data(8'b10100101));
        check_EOF_valid(2);
        check_reset;
        
        //Test E
        check_preamble(.len(24), .err(1'b0));
        check_sfd(.len(8), .data(SFD), .err(1'b0));
        check_signal(.len(5), .data(8'b10101010), .forPreamble(1'b0), .forConsecutive(1'b0));
        send_complete;
        check_reset;
        
        end_test;
    end
    
endmodule