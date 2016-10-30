`timescale 1ns / 1ps



module testbench_2(

    );
   
    import check_p::*;
    
    parameter samplingRate = 32; // Samples per bit
    
   
    logic clk, rst, rxd;
    logic cardet, write, err;
    logic[7:0] data;     
    logic noise, rxdAndNoise;
    
    
    parameter noise_ratio = 15; 
    always @(posedge clk) begin
      #1; 
      if ($urandom_range(100,1) <= noise_ratio) noise = 1;
      else noise = 0;
    end
    
    assign rxdAndNoise = rxd ^ noise;
    
    
        mx_rcvr Duv_mx_rcvr(.clk(clk),.reset(rst),.rxd(rxdAndNoise),.error(err),.cardet(cardet),.write(write),.data(data_out));

       
       always
           begin
               clk = 0;
               #5 clk = 1;
               #5;
           end
    
       logic rand_data;
       always @(posedge clk) begin
         #1;
         if ($urandom_range(100,1) <= 50) rand_data = 1;
         else rand_data = 0;
       end
       
              task Manchesterbits(input logic input_bits);
           begin
               if(input_bits == 1) one;
               else zero;
           end
       endtask
       
             task oneByte(input logic [7:0] dataIn);
            begin
                integer i;
                for(i = 0; i < 8; i++)
                    begin
                        Manchesterbits(dataIn[i]);
                    end
            end
        endtask
        
     
        task premature(input logic [7:0] dataIn);
            begin
            integer i;
            for(i = 0; i < 3; i++)
                begin
                    Manchesterbits(dataIn[i]);
                end
            end
        endtask
        
         task zero;
                  begin
                      rxd = (0); repeat (samplingRate/2) @(posedge clk) #1;
                      rxd = (1); repeat (samplingRate/2) @(posedge clk) #1;
                  end
              endtask
              
             
          task one;
              begin
                  rxd = (1);repeat (samplingRate/2) @(posedge clk) #1;
                  rxd = (0);repeat (samplingRate/2) @(posedge clk) #1;
              end
          endtask
          
          task getAllZero;
                begin
                    rxd = 0;
                    repeat (samplingRate) @(posedge clk) #1;
                end
            endtask
            
            
         task getAllOne;
                       begin
                           rxd = 1;
                           repeat (samplingRate) @(posedge clk) #1;
                       end
          endtask
            
       task getnoise(input integer rand_cycles);
           begin
               integer i;
               for(i=0; i<rand_cycles; i++)
                   begin
                       rxd = rand_data;
                       @(posedge clk) #1;
                   end
           end
       endtask
       

       task resetAll;
           begin
               rst = 1;repeat (10) @(posedge clk) #1;
               rst = 0;repeat (10) @(posedge clk) #1;
           end
       endtask

       task getPreamble;
           begin
               integer i;
               for(i = 0; i < 4; i++)
                   begin
                       one;
                       zero;
                   end
           end
       endtask
    
       task getSFD;
           begin
               repeat (4) zero;                                    
               one;
               zero;
               repeat (2) one;
           end
       endtask
 
       
       
       task check10a;
           begin
               rxd = 1;
               repeat (600) @(posedge clk) #1;
               check_ok("cardet is low before finding out a preamble", cardet, 0);
               getPreamble;
               check_ok("cardet is high after finding out a preamble", cardet, 1);
               getPreamble;
               check_ok("cardet is still high when get 16bits of preamble", cardet, 1);
               getSFD;
               check_ok("cardet high after SFD", cardet, 1);
               oneByte(8'b11111111);
               check_ok("writeis high when get one byte of data", write, 1);
               check_ok("cardet is still high", cardet, 1);
               check_ok("output data matches the inputted data", data, 8'b11111111);
               getAllOne;
               getAllOne;
               check_ok("cardet is low after EOF", cardet, 0);
               rxd = 1;
               repeat (600) @(posedge clk) #1;
               getnoise(1000);
               check_ok("data is not change after eof", data, 8'b11111111);         
           end
       endtask
       
       task check10b;
          begin
              integer i;
              rxd = 1;
              repeat (1000) @(posedge clk) #1;
              getPreamble;
              getPreamble;
              getSFD;
              for(i = 0; i < 24; i++)
                  begin
                      oneByte(i);
                      check_ok("write is high when receiving each byte of data", write, 1);
                  end
              getAllOne;
              getAllOne;
              rxd = 1;
              repeat (1000) @(posedge clk) #1;
          end
      endtask
              
        task check10c;
            begin
                getPreamble;
                getPreamble;
                getSFD;
                oneByte(8'b11111111);
                getAllOne;
                getAllOne;
                getnoise(1_000_000 * samplingRate);
                check_ok("data only is the first byte of data", data, 8'b11111111);
                getPreamble;
                check_ok("cardet is high when enter preamble state", cardet, 1);
                getPreamble;
                getSFD;
                oneByte(8'b11111110);
                getAllOne;
                getAllOne;
                getnoise(1_000_000 * samplingRate);
                check_ok("data is the second input data", data, 8'b11111110);       
                   end
                  endtask
                  
       task check10d;
           begin
               getPreamble;
               getPreamble;
               getSFD;
               getAllZero;
               check_ok("error is high when the data is acting properly", err, 1);
           end
       endtask
       
      task check10e;
              begin
              getPreamble;
              getPreamble;
              getPreamble;
              getSFD;
              premature(8'b11001100);
              getAllOne;
              getAllOne;
              check_ok("error is high after eof", err, 1);
              getPreamble;
              getPreamble;
              getSFD;
              check_ok("error is low when enter a new preamble", err, 0);
              end
      endtask
           
       initial
           begin
               resetAll;
               check10a;
               resetAll;
               check10b;
               resetAll;
               check10c;
               resetAll;
               check10d;
               resetAll;
               check10e;               
               check_summary_stop;            
           end

    
    
endmodule
