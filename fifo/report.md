FIFO documentation
==================

Created by: Greg Flynn
2016-10-03 19:30

Part 1
------

Part A: R/W one value

Figure 1 shows a value of 0x10 being written into the FIFO and read out.
The data out line goes to XX after the read since there is no more data saved
Also notice the empty line falls low until the data is read out
The test bench verifies that the data on the data out line is correct.
Once this has been verified it increments the rp to the next data.


Part B: R/W all 4 entries

Figure 2 shows values 0x0F, 0xAB, 0x10 and 0x42 being sequentially written in.
The FIFO does not clear out previous data so the pointer starts at 0 where 0x10 is.
The 4 bytes on data in can be seen changing after write is pulsed.
Once all 4 bytes are in the full bit goes high as expected.
Once this happens all of the data is removed from the FIFO.
The test bench checks that the data on the output is in the correct order.
Also notice how the empty bit goes high after the last byte is clocked out.

Part C: Break it round 1 (overflow)

Well the FIFO fails on 2 major points in the event of an overflow.
The first major failure can be seen in figure 3.
The 5th write overwrites the data in the 0th index.
Moreover full falls low after this write is completed.
The second problem can be seen in figure 4 and in the test bench.
The test bench stops when empty is detected high.
As soon as the first byte is read out empty is asserted high.
This halts the test bench since there should be no more data to read out.

Part D: Break it round 2 (seg fault)

The major issue with reading from the FIFO when it is empty is the empty bit.
When the byte is read out the empty bit goes low.
This can be seen in figure 5.
The data that is read out is previous values from the FIFO.

Testbench
=========
Checking 10
OK: Verify data read correctly
Checking 0f
OK: Verify data read correctly
Checking ab
OK: Verify data read correctly
Checking 10
OK: Verify data read correctly
Checking 42
OK: Verify data read correctly
Checking 0f
FAIL(Verify data read correctly) Failed test 6 at time 641.
  Expected value 0x42, Inspected Value 0xf
Checking 00
OK: Verify data read correctly

Tesbench Complete.
ATTENTION: 1 Error(s) in 7 tests
$finish called at time : 1111 ns : File "C:/Users/flynng/Desktop/ECE491/fifo/fifo.srcs/sim_1/new/fifo_sim.sv" Line 135


Part 2
------

Modifications to the original verilog

