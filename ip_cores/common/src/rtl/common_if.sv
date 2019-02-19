/*
  Interface for a AXI stream
 
  Copyright (C) 2019  Benjamin Devlin and Zcash Foundation

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

interface if_axi_stream # (
  parameter DAT_BYTS = 128,
  parameter CTL_BYTS = 8
)(
  input clk
);
  import common_pkg::*;
  localparam DAT_BITS = DAT_BYTS*8;
  localparam CTL_BITS = CTL_BYTS*8;
  
  logic rdy;
  logic val;
  logic err;
  logic sop;
  logic eop;
  logic [CTL_BITS-1:0] ctl;
  logic [DAT_BITS-1:0] dat;
  logic [$clog2(DAT_BYTS)-1:0] mod;
  
  modport sink (input val, err, sop, eop, ctl, dat, mod, output rdy);
  modport source (output val, err, sop, eop, ctl, dat, mod, input rdy, import task reset_source());
 
  // Task to reset a source interface signals to all 0
  task reset_source();
    val <= 0;
    err <= 0;
    sop <= 0;
    eop <= 0;
    dat <= 0;
    ctl <= 0;
    mod <= 0;
  endtask
  
  // Task used in simulation to drive data on a source interface
  task automatic put_stream(input logic [common_pkg::MAX_SIM_BYTS*8-1:0] data, input integer signed len);
    logic sop_l=0;
    
    reset_source();
    @(posedge clk);
    
    while (len > 0) begin
      sop = ~sop_l;
      eop = len - DAT_BYTS <= 0;
      val = 1;
      dat = data;
      if (eop) mod = len;
      data = data >> DAT_BITS;
      sop_l = 1;
      len = len - DAT_BYTS;
      @(posedge clk); // Go to next clock edge
      while (!rdy) @(posedge clk); // If not rdy then wait here
    end
    reset_source();
  endtask
  
  // Task used in simulation to get data from a sink interface
  task automatic get_stream(ref logic [common_pkg::MAX_SIM_BYTS*8-1:0] data, ref integer signed len);
    logic sop_l = 0;
    rdy = 1;
    len = 0;
    data = 0;
    @(posedge clk);
    
    while (1) begin
      if (val && rdy) begin
        sop_l = sop_l || sop;
        if (!sop_l) $warning("%m %t:WARNING, get_stream() .val without seeing .sop", $time);
        data[len*8 +: DAT_BITS] = dat;
        len = len + (eop ? (mod == 0 ? DAT_BYTS : mod) : DAT_BYTS);
        if (eop) break;
      end
      @(posedge clk);
    end
    
  
  endtask
  
  
endinterface