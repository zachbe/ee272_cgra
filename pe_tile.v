module corebit_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule  // corebit_and

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule  // corebit_const

module corebit_term (
  input in
);


endmodule  // corebit_term

// Generated from commonlib.muxn(N:1, width:1)
module muxn_U39 (
  input [0:0] in_data_0,
  input [0:0] in_sel,
  output [0:0] out
);


  wire  term_sel__in;
  corebit_term term_sel(
    .in(term_sel__in)
  );

  assign out[0:0] = in_data_0[0:0];

  assign term_sel__in = in_sel[0];


endmodule  // muxn_U39

// Generated from commonlib.muxn(N:1, width:32)
module muxn_U40 (
  input [31:0] in_data_0,
  input [0:0] in_sel,
  output [31:0] out
);


  wire  term_sel__in;
  corebit_term term_sel(
    .in(term_sel__in)
  );

  assign out[31:0] = in_data_0[31:0];

  assign term_sel__in = in_sel[0];


endmodule  // muxn_U40

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule  // coreir_const

module coreir_reg_arst #(parameter arst_posedge=1, parameter clk_posedge=1, parameter init=1, parameter width=1) (
  input clk,
  input arst,
  input [width-1:0] in,
  output [width-1:0] out
);
  reg [width-1:0] outReg;
  wire real_rst;
  assign real_rst = arst_posedge ? arst : ~arst;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk, posedge real_rst) begin
    if (real_rst) outReg <= init;
    else outReg <= in;
  end
  assign out = outReg;

endmodule  // coreir_reg_arst

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule  // coreir_eq

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule  // coreir_mux

// Generated from commonlib.muxn(N:2, width:16)
module muxn_U5 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [0:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[15:0] = in_data_0[15:0];

  assign _join__in1[15:0] = in_data_1[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U5

// Generated from commonlib.muxn(N:2, width:32)
module muxn_U7 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [0:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[31:0] = in_data_0[31:0];

  assign _join__in1[31:0] = in_data_1[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U7

// Generated from commonlib.muxn(N:2, width:1)
module muxn_U4 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[0:0] = in_data_0[0:0];

  assign _join__in1[0:0] = in_data_1[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U4

// Generated from commonlib.muxn(N:2, width:2)
module muxn_U6 (
  input [1:0] in_data_0,
  input [1:0] in_data_1,
  input [0:0] in_sel,
  output [1:0] out
);


  // Instancing generated Module: coreir.mux(width:2)
  wire [1:0] _join__in0;
  wire [1:0] _join__in1;
  wire [1:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(2)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[1:0] = in_data_0[1:0];

  assign _join__in1[1:0] = in_data_1[1:0];

  assign out[1:0] = _join__out[1:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U6

// Generated from commonlib.muxn(N:2, width:4)
module muxn_U8 (
  input [3:0] in_data_0,
  input [3:0] in_data_1,
  input [0:0] in_sel,
  output [3:0] out
);


  // Instancing generated Module: coreir.mux(width:4)
  wire [3:0] _join__in0;
  wire [3:0] _join__in1;
  wire [3:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(4)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[3:0] = in_data_0[3:0];

  assign _join__in1[3:0] = in_data_1[3:0];

  assign out[3:0] = _join__out[3:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U8

module coreir_not #(parameter width=1) (
  input [width-1:0] in,
  output [width-1:0] out
);
  assign out = ~in;

endmodule  // coreir_not

module ZextWrapper_1_32 (
  input [0:0] I,
  output [31:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  assign O[10] = bit_const_0_None__out;

  assign O[11] = bit_const_0_None__out;

  assign O[12] = bit_const_0_None__out;

  assign O[13] = bit_const_0_None__out;

  assign O[14] = bit_const_0_None__out;

  assign O[15] = bit_const_0_None__out;

  assign O[16] = bit_const_0_None__out;

  assign O[17] = bit_const_0_None__out;

  assign O[18] = bit_const_0_None__out;

  assign O[19] = bit_const_0_None__out;

  assign O[1] = bit_const_0_None__out;

  assign O[20] = bit_const_0_None__out;

  assign O[21] = bit_const_0_None__out;

  assign O[22] = bit_const_0_None__out;

  assign O[23] = bit_const_0_None__out;

  assign O[24] = bit_const_0_None__out;

  assign O[25] = bit_const_0_None__out;

  assign O[26] = bit_const_0_None__out;

  assign O[27] = bit_const_0_None__out;

  assign O[28] = bit_const_0_None__out;

  assign O[29] = bit_const_0_None__out;

  assign O[2] = bit_const_0_None__out;

  assign O[30] = bit_const_0_None__out;

  assign O[31] = bit_const_0_None__out;

  assign O[3] = bit_const_0_None__out;

  assign O[4] = bit_const_0_None__out;

  assign O[5] = bit_const_0_None__out;

  assign O[6] = bit_const_0_None__out;

  assign O[7] = bit_const_0_None__out;

  assign O[8] = bit_const_0_None__out;

  assign O[9] = bit_const_0_None__out;

  assign O[0] = I[0];


endmodule  // ZextWrapper_1_32

module coreir_reg #(parameter clk_posedge=1, parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
  reg [width-1:0] outReg=init;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk) begin
    outReg <= in;
  end
  assign out = outReg;

endmodule  // coreir_reg

module coreir_slice #(parameter hi=1, parameter lo=1, parameter width=1) (
  input [width-1:0] in,
  output [hi-lo-1:0] out
);
  assign out = in[hi-1:lo];

endmodule  // coreir_slice

// Generated from commonlib.muxn(N:3, width:1)
module muxn_U9 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [1:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U4 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:1, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U39 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[0:0] = in_data_2[0:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U9

// Generated from commonlib.muxn(N:4, width:1)
module muxn_U44 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [1:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U4 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U4 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[0:0] = in_data_2[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_3[0:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U44

// Generated from commonlib.muxn(N:3, width:32)
module muxn_U26 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [1:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U7 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:1, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U40 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[31:0] = in_data_2[31:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U26

// Generated from commonlib.muxn(N:4, width:32)
module muxn_U25 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [1:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U7 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U7 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[31:0] = in_data_2[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_3[31:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U25

// Generated from commonlib.muxn(N:4, width:16)
module muxn_U10 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [1:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U5 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U5 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[15:0] = in_data_2[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_3[15:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U10

// Generated from commonlib.muxn(N:8, width:16)
module muxn_U36 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [2:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U10 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [15:0] muxN_1__in_data_2;
  wire [15:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U10 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[15:0] = in_data_4[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_5[15:0];

  assign muxN_1__in_data_2[15:0] = in_data_6[15:0];

  assign muxN_1__in_data_3[15:0] = in_data_7[15:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U36

// Generated from commonlib.muxn(N:8, width:1)
module muxn_U33 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [0:0] in_data_4,
  input [0:0] in_data_5,
  input [0:0] in_data_6,
  input [0:0] in_data_7,
  input [2:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_data_2;
  wire [0:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U44 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_data_2;
  wire [0:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U44 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_data_2[0:0] = in_data_2[0:0];

  assign muxN_0__in_data_3[0:0] = in_data_3[0:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[0:0] = in_data_4[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_5[0:0];

  assign muxN_1__in_data_2[0:0] = in_data_6[0:0];

  assign muxN_1__in_data_3[0:0] = in_data_7[0:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U33

// Generated from commonlib.muxn(N:8, width:32)
module muxn_U43 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [2:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U25 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U25 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[31:0] = in_data_4[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_5[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_6[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_7[31:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U43

// Generated from commonlib.muxn(N:7, width:32)
module muxn_U11 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [2:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U25 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:3, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [1:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U26 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[31:0] = in_data_4[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_5[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_6[31:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U11

module Mux3x1 (
  input [0:0] I0,
  input [0:0] I1,
  input [0:0] I2,
  output [0:0] O,
  input [1:0] S
);


  // Instancing generated Module: commonlib.muxn(N:3, width:1)
  wire [0:0] inst0__in_data_0;
  wire [0:0] inst0__in_data_1;
  wire [0:0] inst0__in_data_2;
  wire [1:0] inst0__in_sel;
  wire [0:0] inst0__out;
  muxn_U9 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[0:0] = I0[0:0];

  assign inst0__in_data_1[0:0] = I1[0:0];

  assign inst0__in_data_2[0:0] = I2[0:0];

  assign inst0__in_sel[1:0] = S[1:0];

  assign O[0:0] = inst0__out[0:0];


endmodule  // Mux3x1

// Generated from commonlib.muxn(N:16, width:32)
module muxn_U29 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [3:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U43 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [2:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U43 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [2:0] sel_slice1__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[31:0] = in_data_8[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_9[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_10[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_11[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_12[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_13[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_14[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_15[31:0];

  assign muxN_1__in_sel[2:0] = sel_slice1__out[2:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U29

// Generated from commonlib.muxn(N:10, width:16)
module muxn_U3 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [15:0] in_data_8,
  input [15:0] in_data_9,
  input [3:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [15:0] muxN_0__in_data_4;
  wire [15:0] muxN_0__in_data_5;
  wire [15:0] muxN_0__in_data_6;
  wire [15:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U36 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U5 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_data_4[15:0] = in_data_4[15:0];

  assign muxN_0__in_data_5[15:0] = in_data_5[15:0];

  assign muxN_0__in_data_6[15:0] = in_data_6[15:0];

  assign muxN_0__in_data_7[15:0] = in_data_7[15:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[15:0] = in_data_8[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_9[15:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U3

// Generated from commonlib.muxn(N:10, width:1)
module muxn_U2 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [0:0] in_data_4,
  input [0:0] in_data_5,
  input [0:0] in_data_6,
  input [0:0] in_data_7,
  input [0:0] in_data_8,
  input [0:0] in_data_9,
  input [3:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_data_2;
  wire [0:0] muxN_0__in_data_3;
  wire [0:0] muxN_0__in_data_4;
  wire [0:0] muxN_0__in_data_5;
  wire [0:0] muxN_0__in_data_6;
  wire [0:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U33 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U4 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_data_2[0:0] = in_data_2[0:0];

  assign muxN_0__in_data_3[0:0] = in_data_3[0:0];

  assign muxN_0__in_data_4[0:0] = in_data_4[0:0];

  assign muxN_0__in_data_5[0:0] = in_data_5[0:0];

  assign muxN_0__in_data_6[0:0] = in_data_6[0:0];

  assign muxN_0__in_data_7[0:0] = in_data_7[0:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[0:0] = in_data_8[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_9[0:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U2

// Generated from commonlib.muxn(N:32, width:32)
module muxn_U41 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_16,
  input [31:0] in_data_17,
  input [31:0] in_data_18,
  input [31:0] in_data_19,
  input [31:0] in_data_2,
  input [31:0] in_data_20,
  input [31:0] in_data_21,
  input [31:0] in_data_22,
  input [31:0] in_data_23,
  input [31:0] in_data_24,
  input [31:0] in_data_25,
  input [31:0] in_data_26,
  input [31:0] in_data_27,
  input [31:0] in_data_28,
  input [31:0] in_data_29,
  input [31:0] in_data_3,
  input [31:0] in_data_30,
  input [31:0] in_data_31,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [4:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:16, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_10;
  wire [31:0] muxN_0__in_data_11;
  wire [31:0] muxN_0__in_data_12;
  wire [31:0] muxN_0__in_data_13;
  wire [31:0] muxN_0__in_data_14;
  wire [31:0] muxN_0__in_data_15;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [31:0] muxN_0__in_data_8;
  wire [31:0] muxN_0__in_data_9;
  wire [3:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U29 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_10(muxN_0__in_data_10),
    .in_data_11(muxN_0__in_data_11),
    .in_data_12(muxN_0__in_data_12),
    .in_data_13(muxN_0__in_data_13),
    .in_data_14(muxN_0__in_data_14),
    .in_data_15(muxN_0__in_data_15),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_data_8(muxN_0__in_data_8),
    .in_data_9(muxN_0__in_data_9),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:16, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_10;
  wire [31:0] muxN_1__in_data_11;
  wire [31:0] muxN_1__in_data_12;
  wire [31:0] muxN_1__in_data_13;
  wire [31:0] muxN_1__in_data_14;
  wire [31:0] muxN_1__in_data_15;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [31:0] muxN_1__in_data_8;
  wire [31:0] muxN_1__in_data_9;
  wire [3:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U29 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_10(muxN_1__in_data_10),
    .in_data_11(muxN_1__in_data_11),
    .in_data_12(muxN_1__in_data_12),
    .in_data_13(muxN_1__in_data_13),
    .in_data_14(muxN_1__in_data_14),
    .in_data_15(muxN_1__in_data_15),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_data_8(muxN_1__in_data_8),
    .in_data_9(muxN_1__in_data_9),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:4, lo:0, width:5)
  wire [4:0] sel_slice0__in;
  wire [3:0] sel_slice0__out;
  coreir_slice #(.hi(4),.lo(0),.width(5)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:4, lo:0, width:5)
  wire [4:0] sel_slice1__in;
  wire [3:0] sel_slice1__out;
  coreir_slice #(.hi(4),.lo(0),.width(5)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[4];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_10[31:0] = in_data_10[31:0];

  assign muxN_0__in_data_11[31:0] = in_data_11[31:0];

  assign muxN_0__in_data_12[31:0] = in_data_12[31:0];

  assign muxN_0__in_data_13[31:0] = in_data_13[31:0];

  assign muxN_0__in_data_14[31:0] = in_data_14[31:0];

  assign muxN_0__in_data_15[31:0] = in_data_15[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_data_8[31:0] = in_data_8[31:0];

  assign muxN_0__in_data_9[31:0] = in_data_9[31:0];

  assign muxN_0__in_sel[3:0] = sel_slice0__out[3:0];

  assign muxN_1__in_data_0[31:0] = in_data_16[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_17[31:0];

  assign muxN_1__in_data_10[31:0] = in_data_26[31:0];

  assign muxN_1__in_data_11[31:0] = in_data_27[31:0];

  assign muxN_1__in_data_12[31:0] = in_data_28[31:0];

  assign muxN_1__in_data_13[31:0] = in_data_29[31:0];

  assign muxN_1__in_data_14[31:0] = in_data_30[31:0];

  assign muxN_1__in_data_15[31:0] = in_data_31[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_18[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_19[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_20[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_21[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_22[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_23[31:0];

  assign muxN_1__in_data_8[31:0] = in_data_24[31:0];

  assign muxN_1__in_data_9[31:0] = in_data_25[31:0];

  assign muxN_1__in_sel[3:0] = sel_slice1__out[3:0];

  assign sel_slice0__in[4:0] = in_sel[4:0];

  assign sel_slice1__in[4:0] = in_sel[4:0];


endmodule  // muxn_U41

// Generated from commonlib.muxn(N:64, width:32)
module muxn_U28 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_16,
  input [31:0] in_data_17,
  input [31:0] in_data_18,
  input [31:0] in_data_19,
  input [31:0] in_data_2,
  input [31:0] in_data_20,
  input [31:0] in_data_21,
  input [31:0] in_data_22,
  input [31:0] in_data_23,
  input [31:0] in_data_24,
  input [31:0] in_data_25,
  input [31:0] in_data_26,
  input [31:0] in_data_27,
  input [31:0] in_data_28,
  input [31:0] in_data_29,
  input [31:0] in_data_3,
  input [31:0] in_data_30,
  input [31:0] in_data_31,
  input [31:0] in_data_32,
  input [31:0] in_data_33,
  input [31:0] in_data_34,
  input [31:0] in_data_35,
  input [31:0] in_data_36,
  input [31:0] in_data_37,
  input [31:0] in_data_38,
  input [31:0] in_data_39,
  input [31:0] in_data_4,
  input [31:0] in_data_40,
  input [31:0] in_data_41,
  input [31:0] in_data_42,
  input [31:0] in_data_43,
  input [31:0] in_data_44,
  input [31:0] in_data_45,
  input [31:0] in_data_46,
  input [31:0] in_data_47,
  input [31:0] in_data_48,
  input [31:0] in_data_49,
  input [31:0] in_data_5,
  input [31:0] in_data_50,
  input [31:0] in_data_51,
  input [31:0] in_data_52,
  input [31:0] in_data_53,
  input [31:0] in_data_54,
  input [31:0] in_data_55,
  input [31:0] in_data_56,
  input [31:0] in_data_57,
  input [31:0] in_data_58,
  input [31:0] in_data_59,
  input [31:0] in_data_6,
  input [31:0] in_data_60,
  input [31:0] in_data_61,
  input [31:0] in_data_62,
  input [31:0] in_data_63,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [5:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:32, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_10;
  wire [31:0] muxN_0__in_data_11;
  wire [31:0] muxN_0__in_data_12;
  wire [31:0] muxN_0__in_data_13;
  wire [31:0] muxN_0__in_data_14;
  wire [31:0] muxN_0__in_data_15;
  wire [31:0] muxN_0__in_data_16;
  wire [31:0] muxN_0__in_data_17;
  wire [31:0] muxN_0__in_data_18;
  wire [31:0] muxN_0__in_data_19;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_20;
  wire [31:0] muxN_0__in_data_21;
  wire [31:0] muxN_0__in_data_22;
  wire [31:0] muxN_0__in_data_23;
  wire [31:0] muxN_0__in_data_24;
  wire [31:0] muxN_0__in_data_25;
  wire [31:0] muxN_0__in_data_26;
  wire [31:0] muxN_0__in_data_27;
  wire [31:0] muxN_0__in_data_28;
  wire [31:0] muxN_0__in_data_29;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_30;
  wire [31:0] muxN_0__in_data_31;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [31:0] muxN_0__in_data_8;
  wire [31:0] muxN_0__in_data_9;
  wire [4:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U41 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_10(muxN_0__in_data_10),
    .in_data_11(muxN_0__in_data_11),
    .in_data_12(muxN_0__in_data_12),
    .in_data_13(muxN_0__in_data_13),
    .in_data_14(muxN_0__in_data_14),
    .in_data_15(muxN_0__in_data_15),
    .in_data_16(muxN_0__in_data_16),
    .in_data_17(muxN_0__in_data_17),
    .in_data_18(muxN_0__in_data_18),
    .in_data_19(muxN_0__in_data_19),
    .in_data_2(muxN_0__in_data_2),
    .in_data_20(muxN_0__in_data_20),
    .in_data_21(muxN_0__in_data_21),
    .in_data_22(muxN_0__in_data_22),
    .in_data_23(muxN_0__in_data_23),
    .in_data_24(muxN_0__in_data_24),
    .in_data_25(muxN_0__in_data_25),
    .in_data_26(muxN_0__in_data_26),
    .in_data_27(muxN_0__in_data_27),
    .in_data_28(muxN_0__in_data_28),
    .in_data_29(muxN_0__in_data_29),
    .in_data_3(muxN_0__in_data_3),
    .in_data_30(muxN_0__in_data_30),
    .in_data_31(muxN_0__in_data_31),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_data_8(muxN_0__in_data_8),
    .in_data_9(muxN_0__in_data_9),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:32, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_10;
  wire [31:0] muxN_1__in_data_11;
  wire [31:0] muxN_1__in_data_12;
  wire [31:0] muxN_1__in_data_13;
  wire [31:0] muxN_1__in_data_14;
  wire [31:0] muxN_1__in_data_15;
  wire [31:0] muxN_1__in_data_16;
  wire [31:0] muxN_1__in_data_17;
  wire [31:0] muxN_1__in_data_18;
  wire [31:0] muxN_1__in_data_19;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_20;
  wire [31:0] muxN_1__in_data_21;
  wire [31:0] muxN_1__in_data_22;
  wire [31:0] muxN_1__in_data_23;
  wire [31:0] muxN_1__in_data_24;
  wire [31:0] muxN_1__in_data_25;
  wire [31:0] muxN_1__in_data_26;
  wire [31:0] muxN_1__in_data_27;
  wire [31:0] muxN_1__in_data_28;
  wire [31:0] muxN_1__in_data_29;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_30;
  wire [31:0] muxN_1__in_data_31;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [31:0] muxN_1__in_data_8;
  wire [31:0] muxN_1__in_data_9;
  wire [4:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U41 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_10(muxN_1__in_data_10),
    .in_data_11(muxN_1__in_data_11),
    .in_data_12(muxN_1__in_data_12),
    .in_data_13(muxN_1__in_data_13),
    .in_data_14(muxN_1__in_data_14),
    .in_data_15(muxN_1__in_data_15),
    .in_data_16(muxN_1__in_data_16),
    .in_data_17(muxN_1__in_data_17),
    .in_data_18(muxN_1__in_data_18),
    .in_data_19(muxN_1__in_data_19),
    .in_data_2(muxN_1__in_data_2),
    .in_data_20(muxN_1__in_data_20),
    .in_data_21(muxN_1__in_data_21),
    .in_data_22(muxN_1__in_data_22),
    .in_data_23(muxN_1__in_data_23),
    .in_data_24(muxN_1__in_data_24),
    .in_data_25(muxN_1__in_data_25),
    .in_data_26(muxN_1__in_data_26),
    .in_data_27(muxN_1__in_data_27),
    .in_data_28(muxN_1__in_data_28),
    .in_data_29(muxN_1__in_data_29),
    .in_data_3(muxN_1__in_data_3),
    .in_data_30(muxN_1__in_data_30),
    .in_data_31(muxN_1__in_data_31),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_data_8(muxN_1__in_data_8),
    .in_data_9(muxN_1__in_data_9),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:5, lo:0, width:6)
  wire [5:0] sel_slice0__in;
  wire [4:0] sel_slice0__out;
  coreir_slice #(.hi(5),.lo(0),.width(6)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:5, lo:0, width:6)
  wire [5:0] sel_slice1__in;
  wire [4:0] sel_slice1__out;
  coreir_slice #(.hi(5),.lo(0),.width(6)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[5];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_10[31:0] = in_data_10[31:0];

  assign muxN_0__in_data_11[31:0] = in_data_11[31:0];

  assign muxN_0__in_data_12[31:0] = in_data_12[31:0];

  assign muxN_0__in_data_13[31:0] = in_data_13[31:0];

  assign muxN_0__in_data_14[31:0] = in_data_14[31:0];

  assign muxN_0__in_data_15[31:0] = in_data_15[31:0];

  assign muxN_0__in_data_16[31:0] = in_data_16[31:0];

  assign muxN_0__in_data_17[31:0] = in_data_17[31:0];

  assign muxN_0__in_data_18[31:0] = in_data_18[31:0];

  assign muxN_0__in_data_19[31:0] = in_data_19[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_20[31:0] = in_data_20[31:0];

  assign muxN_0__in_data_21[31:0] = in_data_21[31:0];

  assign muxN_0__in_data_22[31:0] = in_data_22[31:0];

  assign muxN_0__in_data_23[31:0] = in_data_23[31:0];

  assign muxN_0__in_data_24[31:0] = in_data_24[31:0];

  assign muxN_0__in_data_25[31:0] = in_data_25[31:0];

  assign muxN_0__in_data_26[31:0] = in_data_26[31:0];

  assign muxN_0__in_data_27[31:0] = in_data_27[31:0];

  assign muxN_0__in_data_28[31:0] = in_data_28[31:0];

  assign muxN_0__in_data_29[31:0] = in_data_29[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_30[31:0] = in_data_30[31:0];

  assign muxN_0__in_data_31[31:0] = in_data_31[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_data_8[31:0] = in_data_8[31:0];

  assign muxN_0__in_data_9[31:0] = in_data_9[31:0];

  assign muxN_0__in_sel[4:0] = sel_slice0__out[4:0];

  assign muxN_1__in_data_0[31:0] = in_data_32[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_33[31:0];

  assign muxN_1__in_data_10[31:0] = in_data_42[31:0];

  assign muxN_1__in_data_11[31:0] = in_data_43[31:0];

  assign muxN_1__in_data_12[31:0] = in_data_44[31:0];

  assign muxN_1__in_data_13[31:0] = in_data_45[31:0];

  assign muxN_1__in_data_14[31:0] = in_data_46[31:0];

  assign muxN_1__in_data_15[31:0] = in_data_47[31:0];

  assign muxN_1__in_data_16[31:0] = in_data_48[31:0];

  assign muxN_1__in_data_17[31:0] = in_data_49[31:0];

  assign muxN_1__in_data_18[31:0] = in_data_50[31:0];

  assign muxN_1__in_data_19[31:0] = in_data_51[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_34[31:0];

  assign muxN_1__in_data_20[31:0] = in_data_52[31:0];

  assign muxN_1__in_data_21[31:0] = in_data_53[31:0];

  assign muxN_1__in_data_22[31:0] = in_data_54[31:0];

  assign muxN_1__in_data_23[31:0] = in_data_55[31:0];

  assign muxN_1__in_data_24[31:0] = in_data_56[31:0];

  assign muxN_1__in_data_25[31:0] = in_data_57[31:0];

  assign muxN_1__in_data_26[31:0] = in_data_58[31:0];

  assign muxN_1__in_data_27[31:0] = in_data_59[31:0];

  assign muxN_1__in_data_28[31:0] = in_data_60[31:0];

  assign muxN_1__in_data_29[31:0] = in_data_61[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_35[31:0];

  assign muxN_1__in_data_30[31:0] = in_data_62[31:0];

  assign muxN_1__in_data_31[31:0] = in_data_63[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_36[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_37[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_38[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_39[31:0];

  assign muxN_1__in_data_8[31:0] = in_data_40[31:0];

  assign muxN_1__in_data_9[31:0] = in_data_41[31:0];

  assign muxN_1__in_sel[4:0] = sel_slice1__out[4:0];

  assign sel_slice0__in[5:0] = in_sel[5:0];

  assign sel_slice1__in[5:0] = in_sel[5:0];


endmodule  // muxn_U28

// Generated from commonlib.muxn(N:80, width:32)
module muxn_U12 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_16,
  input [31:0] in_data_17,
  input [31:0] in_data_18,
  input [31:0] in_data_19,
  input [31:0] in_data_2,
  input [31:0] in_data_20,
  input [31:0] in_data_21,
  input [31:0] in_data_22,
  input [31:0] in_data_23,
  input [31:0] in_data_24,
  input [31:0] in_data_25,
  input [31:0] in_data_26,
  input [31:0] in_data_27,
  input [31:0] in_data_28,
  input [31:0] in_data_29,
  input [31:0] in_data_3,
  input [31:0] in_data_30,
  input [31:0] in_data_31,
  input [31:0] in_data_32,
  input [31:0] in_data_33,
  input [31:0] in_data_34,
  input [31:0] in_data_35,
  input [31:0] in_data_36,
  input [31:0] in_data_37,
  input [31:0] in_data_38,
  input [31:0] in_data_39,
  input [31:0] in_data_4,
  input [31:0] in_data_40,
  input [31:0] in_data_41,
  input [31:0] in_data_42,
  input [31:0] in_data_43,
  input [31:0] in_data_44,
  input [31:0] in_data_45,
  input [31:0] in_data_46,
  input [31:0] in_data_47,
  input [31:0] in_data_48,
  input [31:0] in_data_49,
  input [31:0] in_data_5,
  input [31:0] in_data_50,
  input [31:0] in_data_51,
  input [31:0] in_data_52,
  input [31:0] in_data_53,
  input [31:0] in_data_54,
  input [31:0] in_data_55,
  input [31:0] in_data_56,
  input [31:0] in_data_57,
  input [31:0] in_data_58,
  input [31:0] in_data_59,
  input [31:0] in_data_6,
  input [31:0] in_data_60,
  input [31:0] in_data_61,
  input [31:0] in_data_62,
  input [31:0] in_data_63,
  input [31:0] in_data_64,
  input [31:0] in_data_65,
  input [31:0] in_data_66,
  input [31:0] in_data_67,
  input [31:0] in_data_68,
  input [31:0] in_data_69,
  input [31:0] in_data_7,
  input [31:0] in_data_70,
  input [31:0] in_data_71,
  input [31:0] in_data_72,
  input [31:0] in_data_73,
  input [31:0] in_data_74,
  input [31:0] in_data_75,
  input [31:0] in_data_76,
  input [31:0] in_data_77,
  input [31:0] in_data_78,
  input [31:0] in_data_79,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [6:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:64, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_10;
  wire [31:0] muxN_0__in_data_11;
  wire [31:0] muxN_0__in_data_12;
  wire [31:0] muxN_0__in_data_13;
  wire [31:0] muxN_0__in_data_14;
  wire [31:0] muxN_0__in_data_15;
  wire [31:0] muxN_0__in_data_16;
  wire [31:0] muxN_0__in_data_17;
  wire [31:0] muxN_0__in_data_18;
  wire [31:0] muxN_0__in_data_19;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_20;
  wire [31:0] muxN_0__in_data_21;
  wire [31:0] muxN_0__in_data_22;
  wire [31:0] muxN_0__in_data_23;
  wire [31:0] muxN_0__in_data_24;
  wire [31:0] muxN_0__in_data_25;
  wire [31:0] muxN_0__in_data_26;
  wire [31:0] muxN_0__in_data_27;
  wire [31:0] muxN_0__in_data_28;
  wire [31:0] muxN_0__in_data_29;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_30;
  wire [31:0] muxN_0__in_data_31;
  wire [31:0] muxN_0__in_data_32;
  wire [31:0] muxN_0__in_data_33;
  wire [31:0] muxN_0__in_data_34;
  wire [31:0] muxN_0__in_data_35;
  wire [31:0] muxN_0__in_data_36;
  wire [31:0] muxN_0__in_data_37;
  wire [31:0] muxN_0__in_data_38;
  wire [31:0] muxN_0__in_data_39;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_40;
  wire [31:0] muxN_0__in_data_41;
  wire [31:0] muxN_0__in_data_42;
  wire [31:0] muxN_0__in_data_43;
  wire [31:0] muxN_0__in_data_44;
  wire [31:0] muxN_0__in_data_45;
  wire [31:0] muxN_0__in_data_46;
  wire [31:0] muxN_0__in_data_47;
  wire [31:0] muxN_0__in_data_48;
  wire [31:0] muxN_0__in_data_49;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_50;
  wire [31:0] muxN_0__in_data_51;
  wire [31:0] muxN_0__in_data_52;
  wire [31:0] muxN_0__in_data_53;
  wire [31:0] muxN_0__in_data_54;
  wire [31:0] muxN_0__in_data_55;
  wire [31:0] muxN_0__in_data_56;
  wire [31:0] muxN_0__in_data_57;
  wire [31:0] muxN_0__in_data_58;
  wire [31:0] muxN_0__in_data_59;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_60;
  wire [31:0] muxN_0__in_data_61;
  wire [31:0] muxN_0__in_data_62;
  wire [31:0] muxN_0__in_data_63;
  wire [31:0] muxN_0__in_data_7;
  wire [31:0] muxN_0__in_data_8;
  wire [31:0] muxN_0__in_data_9;
  wire [5:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U28 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_10(muxN_0__in_data_10),
    .in_data_11(muxN_0__in_data_11),
    .in_data_12(muxN_0__in_data_12),
    .in_data_13(muxN_0__in_data_13),
    .in_data_14(muxN_0__in_data_14),
    .in_data_15(muxN_0__in_data_15),
    .in_data_16(muxN_0__in_data_16),
    .in_data_17(muxN_0__in_data_17),
    .in_data_18(muxN_0__in_data_18),
    .in_data_19(muxN_0__in_data_19),
    .in_data_2(muxN_0__in_data_2),
    .in_data_20(muxN_0__in_data_20),
    .in_data_21(muxN_0__in_data_21),
    .in_data_22(muxN_0__in_data_22),
    .in_data_23(muxN_0__in_data_23),
    .in_data_24(muxN_0__in_data_24),
    .in_data_25(muxN_0__in_data_25),
    .in_data_26(muxN_0__in_data_26),
    .in_data_27(muxN_0__in_data_27),
    .in_data_28(muxN_0__in_data_28),
    .in_data_29(muxN_0__in_data_29),
    .in_data_3(muxN_0__in_data_3),
    .in_data_30(muxN_0__in_data_30),
    .in_data_31(muxN_0__in_data_31),
    .in_data_32(muxN_0__in_data_32),
    .in_data_33(muxN_0__in_data_33),
    .in_data_34(muxN_0__in_data_34),
    .in_data_35(muxN_0__in_data_35),
    .in_data_36(muxN_0__in_data_36),
    .in_data_37(muxN_0__in_data_37),
    .in_data_38(muxN_0__in_data_38),
    .in_data_39(muxN_0__in_data_39),
    .in_data_4(muxN_0__in_data_4),
    .in_data_40(muxN_0__in_data_40),
    .in_data_41(muxN_0__in_data_41),
    .in_data_42(muxN_0__in_data_42),
    .in_data_43(muxN_0__in_data_43),
    .in_data_44(muxN_0__in_data_44),
    .in_data_45(muxN_0__in_data_45),
    .in_data_46(muxN_0__in_data_46),
    .in_data_47(muxN_0__in_data_47),
    .in_data_48(muxN_0__in_data_48),
    .in_data_49(muxN_0__in_data_49),
    .in_data_5(muxN_0__in_data_5),
    .in_data_50(muxN_0__in_data_50),
    .in_data_51(muxN_0__in_data_51),
    .in_data_52(muxN_0__in_data_52),
    .in_data_53(muxN_0__in_data_53),
    .in_data_54(muxN_0__in_data_54),
    .in_data_55(muxN_0__in_data_55),
    .in_data_56(muxN_0__in_data_56),
    .in_data_57(muxN_0__in_data_57),
    .in_data_58(muxN_0__in_data_58),
    .in_data_59(muxN_0__in_data_59),
    .in_data_6(muxN_0__in_data_6),
    .in_data_60(muxN_0__in_data_60),
    .in_data_61(muxN_0__in_data_61),
    .in_data_62(muxN_0__in_data_62),
    .in_data_63(muxN_0__in_data_63),
    .in_data_7(muxN_0__in_data_7),
    .in_data_8(muxN_0__in_data_8),
    .in_data_9(muxN_0__in_data_9),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:16, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_10;
  wire [31:0] muxN_1__in_data_11;
  wire [31:0] muxN_1__in_data_12;
  wire [31:0] muxN_1__in_data_13;
  wire [31:0] muxN_1__in_data_14;
  wire [31:0] muxN_1__in_data_15;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [31:0] muxN_1__in_data_8;
  wire [31:0] muxN_1__in_data_9;
  wire [3:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U29 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_10(muxN_1__in_data_10),
    .in_data_11(muxN_1__in_data_11),
    .in_data_12(muxN_1__in_data_12),
    .in_data_13(muxN_1__in_data_13),
    .in_data_14(muxN_1__in_data_14),
    .in_data_15(muxN_1__in_data_15),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_data_8(muxN_1__in_data_8),
    .in_data_9(muxN_1__in_data_9),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:6, lo:0, width:7)
  wire [6:0] sel_slice0__in;
  wire [5:0] sel_slice0__out;
  coreir_slice #(.hi(6),.lo(0),.width(7)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:4, lo:0, width:7)
  wire [6:0] sel_slice1__in;
  wire [3:0] sel_slice1__out;
  coreir_slice #(.hi(4),.lo(0),.width(7)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[6];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_10[31:0] = in_data_10[31:0];

  assign muxN_0__in_data_11[31:0] = in_data_11[31:0];

  assign muxN_0__in_data_12[31:0] = in_data_12[31:0];

  assign muxN_0__in_data_13[31:0] = in_data_13[31:0];

  assign muxN_0__in_data_14[31:0] = in_data_14[31:0];

  assign muxN_0__in_data_15[31:0] = in_data_15[31:0];

  assign muxN_0__in_data_16[31:0] = in_data_16[31:0];

  assign muxN_0__in_data_17[31:0] = in_data_17[31:0];

  assign muxN_0__in_data_18[31:0] = in_data_18[31:0];

  assign muxN_0__in_data_19[31:0] = in_data_19[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_20[31:0] = in_data_20[31:0];

  assign muxN_0__in_data_21[31:0] = in_data_21[31:0];

  assign muxN_0__in_data_22[31:0] = in_data_22[31:0];

  assign muxN_0__in_data_23[31:0] = in_data_23[31:0];

  assign muxN_0__in_data_24[31:0] = in_data_24[31:0];

  assign muxN_0__in_data_25[31:0] = in_data_25[31:0];

  assign muxN_0__in_data_26[31:0] = in_data_26[31:0];

  assign muxN_0__in_data_27[31:0] = in_data_27[31:0];

  assign muxN_0__in_data_28[31:0] = in_data_28[31:0];

  assign muxN_0__in_data_29[31:0] = in_data_29[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_30[31:0] = in_data_30[31:0];

  assign muxN_0__in_data_31[31:0] = in_data_31[31:0];

  assign muxN_0__in_data_32[31:0] = in_data_32[31:0];

  assign muxN_0__in_data_33[31:0] = in_data_33[31:0];

  assign muxN_0__in_data_34[31:0] = in_data_34[31:0];

  assign muxN_0__in_data_35[31:0] = in_data_35[31:0];

  assign muxN_0__in_data_36[31:0] = in_data_36[31:0];

  assign muxN_0__in_data_37[31:0] = in_data_37[31:0];

  assign muxN_0__in_data_38[31:0] = in_data_38[31:0];

  assign muxN_0__in_data_39[31:0] = in_data_39[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_40[31:0] = in_data_40[31:0];

  assign muxN_0__in_data_41[31:0] = in_data_41[31:0];

  assign muxN_0__in_data_42[31:0] = in_data_42[31:0];

  assign muxN_0__in_data_43[31:0] = in_data_43[31:0];

  assign muxN_0__in_data_44[31:0] = in_data_44[31:0];

  assign muxN_0__in_data_45[31:0] = in_data_45[31:0];

  assign muxN_0__in_data_46[31:0] = in_data_46[31:0];

  assign muxN_0__in_data_47[31:0] = in_data_47[31:0];

  assign muxN_0__in_data_48[31:0] = in_data_48[31:0];

  assign muxN_0__in_data_49[31:0] = in_data_49[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_50[31:0] = in_data_50[31:0];

  assign muxN_0__in_data_51[31:0] = in_data_51[31:0];

  assign muxN_0__in_data_52[31:0] = in_data_52[31:0];

  assign muxN_0__in_data_53[31:0] = in_data_53[31:0];

  assign muxN_0__in_data_54[31:0] = in_data_54[31:0];

  assign muxN_0__in_data_55[31:0] = in_data_55[31:0];

  assign muxN_0__in_data_56[31:0] = in_data_56[31:0];

  assign muxN_0__in_data_57[31:0] = in_data_57[31:0];

  assign muxN_0__in_data_58[31:0] = in_data_58[31:0];

  assign muxN_0__in_data_59[31:0] = in_data_59[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_60[31:0] = in_data_60[31:0];

  assign muxN_0__in_data_61[31:0] = in_data_61[31:0];

  assign muxN_0__in_data_62[31:0] = in_data_62[31:0];

  assign muxN_0__in_data_63[31:0] = in_data_63[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_data_8[31:0] = in_data_8[31:0];

  assign muxN_0__in_data_9[31:0] = in_data_9[31:0];

  assign muxN_0__in_sel[5:0] = sel_slice0__out[5:0];

  assign muxN_1__in_data_0[31:0] = in_data_64[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_65[31:0];

  assign muxN_1__in_data_10[31:0] = in_data_74[31:0];

  assign muxN_1__in_data_11[31:0] = in_data_75[31:0];

  assign muxN_1__in_data_12[31:0] = in_data_76[31:0];

  assign muxN_1__in_data_13[31:0] = in_data_77[31:0];

  assign muxN_1__in_data_14[31:0] = in_data_78[31:0];

  assign muxN_1__in_data_15[31:0] = in_data_79[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_66[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_67[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_68[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_69[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_70[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_71[31:0];

  assign muxN_1__in_data_8[31:0] = in_data_72[31:0];

  assign muxN_1__in_data_9[31:0] = in_data_73[31:0];

  assign muxN_1__in_sel[3:0] = sel_slice1__out[3:0];

  assign sel_slice0__in[6:0] = in_sel[6:0];

  assign sel_slice1__in[6:0] = in_sel[6:0];


endmodule  // muxn_U12

module Mux80x32 (
  input [31:0] I0,
  input [31:0] I1,
  input [31:0] I10,
  input [31:0] I11,
  input [31:0] I12,
  input [31:0] I13,
  input [31:0] I14,
  input [31:0] I15,
  input [31:0] I16,
  input [31:0] I17,
  input [31:0] I18,
  input [31:0] I19,
  input [31:0] I2,
  input [31:0] I20,
  input [31:0] I21,
  input [31:0] I22,
  input [31:0] I23,
  input [31:0] I24,
  input [31:0] I25,
  input [31:0] I26,
  input [31:0] I27,
  input [31:0] I28,
  input [31:0] I29,
  input [31:0] I3,
  input [31:0] I30,
  input [31:0] I31,
  input [31:0] I32,
  input [31:0] I33,
  input [31:0] I34,
  input [31:0] I35,
  input [31:0] I36,
  input [31:0] I37,
  input [31:0] I38,
  input [31:0] I39,
  input [31:0] I4,
  input [31:0] I40,
  input [31:0] I41,
  input [31:0] I42,
  input [31:0] I43,
  input [31:0] I44,
  input [31:0] I45,
  input [31:0] I46,
  input [31:0] I47,
  input [31:0] I48,
  input [31:0] I49,
  input [31:0] I5,
  input [31:0] I50,
  input [31:0] I51,
  input [31:0] I52,
  input [31:0] I53,
  input [31:0] I54,
  input [31:0] I55,
  input [31:0] I56,
  input [31:0] I57,
  input [31:0] I58,
  input [31:0] I59,
  input [31:0] I6,
  input [31:0] I60,
  input [31:0] I61,
  input [31:0] I62,
  input [31:0] I63,
  input [31:0] I64,
  input [31:0] I65,
  input [31:0] I66,
  input [31:0] I67,
  input [31:0] I68,
  input [31:0] I69,
  input [31:0] I7,
  input [31:0] I70,
  input [31:0] I71,
  input [31:0] I72,
  input [31:0] I73,
  input [31:0] I74,
  input [31:0] I75,
  input [31:0] I76,
  input [31:0] I77,
  input [31:0] I78,
  input [31:0] I79,
  input [31:0] I8,
  input [31:0] I9,
  output [31:0] O,
  input [6:0] S
);


  // Instancing generated Module: commonlib.muxn(N:80, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [31:0] inst0__in_data_10;
  wire [31:0] inst0__in_data_11;
  wire [31:0] inst0__in_data_12;
  wire [31:0] inst0__in_data_13;
  wire [31:0] inst0__in_data_14;
  wire [31:0] inst0__in_data_15;
  wire [31:0] inst0__in_data_16;
  wire [31:0] inst0__in_data_17;
  wire [31:0] inst0__in_data_18;
  wire [31:0] inst0__in_data_19;
  wire [31:0] inst0__in_data_2;
  wire [31:0] inst0__in_data_20;
  wire [31:0] inst0__in_data_21;
  wire [31:0] inst0__in_data_22;
  wire [31:0] inst0__in_data_23;
  wire [31:0] inst0__in_data_24;
  wire [31:0] inst0__in_data_25;
  wire [31:0] inst0__in_data_26;
  wire [31:0] inst0__in_data_27;
  wire [31:0] inst0__in_data_28;
  wire [31:0] inst0__in_data_29;
  wire [31:0] inst0__in_data_3;
  wire [31:0] inst0__in_data_30;
  wire [31:0] inst0__in_data_31;
  wire [31:0] inst0__in_data_32;
  wire [31:0] inst0__in_data_33;
  wire [31:0] inst0__in_data_34;
  wire [31:0] inst0__in_data_35;
  wire [31:0] inst0__in_data_36;
  wire [31:0] inst0__in_data_37;
  wire [31:0] inst0__in_data_38;
  wire [31:0] inst0__in_data_39;
  wire [31:0] inst0__in_data_4;
  wire [31:0] inst0__in_data_40;
  wire [31:0] inst0__in_data_41;
  wire [31:0] inst0__in_data_42;
  wire [31:0] inst0__in_data_43;
  wire [31:0] inst0__in_data_44;
  wire [31:0] inst0__in_data_45;
  wire [31:0] inst0__in_data_46;
  wire [31:0] inst0__in_data_47;
  wire [31:0] inst0__in_data_48;
  wire [31:0] inst0__in_data_49;
  wire [31:0] inst0__in_data_5;
  wire [31:0] inst0__in_data_50;
  wire [31:0] inst0__in_data_51;
  wire [31:0] inst0__in_data_52;
  wire [31:0] inst0__in_data_53;
  wire [31:0] inst0__in_data_54;
  wire [31:0] inst0__in_data_55;
  wire [31:0] inst0__in_data_56;
  wire [31:0] inst0__in_data_57;
  wire [31:0] inst0__in_data_58;
  wire [31:0] inst0__in_data_59;
  wire [31:0] inst0__in_data_6;
  wire [31:0] inst0__in_data_60;
  wire [31:0] inst0__in_data_61;
  wire [31:0] inst0__in_data_62;
  wire [31:0] inst0__in_data_63;
  wire [31:0] inst0__in_data_64;
  wire [31:0] inst0__in_data_65;
  wire [31:0] inst0__in_data_66;
  wire [31:0] inst0__in_data_67;
  wire [31:0] inst0__in_data_68;
  wire [31:0] inst0__in_data_69;
  wire [31:0] inst0__in_data_7;
  wire [31:0] inst0__in_data_70;
  wire [31:0] inst0__in_data_71;
  wire [31:0] inst0__in_data_72;
  wire [31:0] inst0__in_data_73;
  wire [31:0] inst0__in_data_74;
  wire [31:0] inst0__in_data_75;
  wire [31:0] inst0__in_data_76;
  wire [31:0] inst0__in_data_77;
  wire [31:0] inst0__in_data_78;
  wire [31:0] inst0__in_data_79;
  wire [31:0] inst0__in_data_8;
  wire [31:0] inst0__in_data_9;
  wire [6:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U12 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_10(inst0__in_data_10),
    .in_data_11(inst0__in_data_11),
    .in_data_12(inst0__in_data_12),
    .in_data_13(inst0__in_data_13),
    .in_data_14(inst0__in_data_14),
    .in_data_15(inst0__in_data_15),
    .in_data_16(inst0__in_data_16),
    .in_data_17(inst0__in_data_17),
    .in_data_18(inst0__in_data_18),
    .in_data_19(inst0__in_data_19),
    .in_data_2(inst0__in_data_2),
    .in_data_20(inst0__in_data_20),
    .in_data_21(inst0__in_data_21),
    .in_data_22(inst0__in_data_22),
    .in_data_23(inst0__in_data_23),
    .in_data_24(inst0__in_data_24),
    .in_data_25(inst0__in_data_25),
    .in_data_26(inst0__in_data_26),
    .in_data_27(inst0__in_data_27),
    .in_data_28(inst0__in_data_28),
    .in_data_29(inst0__in_data_29),
    .in_data_3(inst0__in_data_3),
    .in_data_30(inst0__in_data_30),
    .in_data_31(inst0__in_data_31),
    .in_data_32(inst0__in_data_32),
    .in_data_33(inst0__in_data_33),
    .in_data_34(inst0__in_data_34),
    .in_data_35(inst0__in_data_35),
    .in_data_36(inst0__in_data_36),
    .in_data_37(inst0__in_data_37),
    .in_data_38(inst0__in_data_38),
    .in_data_39(inst0__in_data_39),
    .in_data_4(inst0__in_data_4),
    .in_data_40(inst0__in_data_40),
    .in_data_41(inst0__in_data_41),
    .in_data_42(inst0__in_data_42),
    .in_data_43(inst0__in_data_43),
    .in_data_44(inst0__in_data_44),
    .in_data_45(inst0__in_data_45),
    .in_data_46(inst0__in_data_46),
    .in_data_47(inst0__in_data_47),
    .in_data_48(inst0__in_data_48),
    .in_data_49(inst0__in_data_49),
    .in_data_5(inst0__in_data_5),
    .in_data_50(inst0__in_data_50),
    .in_data_51(inst0__in_data_51),
    .in_data_52(inst0__in_data_52),
    .in_data_53(inst0__in_data_53),
    .in_data_54(inst0__in_data_54),
    .in_data_55(inst0__in_data_55),
    .in_data_56(inst0__in_data_56),
    .in_data_57(inst0__in_data_57),
    .in_data_58(inst0__in_data_58),
    .in_data_59(inst0__in_data_59),
    .in_data_6(inst0__in_data_6),
    .in_data_60(inst0__in_data_60),
    .in_data_61(inst0__in_data_61),
    .in_data_62(inst0__in_data_62),
    .in_data_63(inst0__in_data_63),
    .in_data_64(inst0__in_data_64),
    .in_data_65(inst0__in_data_65),
    .in_data_66(inst0__in_data_66),
    .in_data_67(inst0__in_data_67),
    .in_data_68(inst0__in_data_68),
    .in_data_69(inst0__in_data_69),
    .in_data_7(inst0__in_data_7),
    .in_data_70(inst0__in_data_70),
    .in_data_71(inst0__in_data_71),
    .in_data_72(inst0__in_data_72),
    .in_data_73(inst0__in_data_73),
    .in_data_74(inst0__in_data_74),
    .in_data_75(inst0__in_data_75),
    .in_data_76(inst0__in_data_76),
    .in_data_77(inst0__in_data_77),
    .in_data_78(inst0__in_data_78),
    .in_data_79(inst0__in_data_79),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_data_10[31:0] = I10[31:0];

  assign inst0__in_data_11[31:0] = I11[31:0];

  assign inst0__in_data_12[31:0] = I12[31:0];

  assign inst0__in_data_13[31:0] = I13[31:0];

  assign inst0__in_data_14[31:0] = I14[31:0];

  assign inst0__in_data_15[31:0] = I15[31:0];

  assign inst0__in_data_16[31:0] = I16[31:0];

  assign inst0__in_data_17[31:0] = I17[31:0];

  assign inst0__in_data_18[31:0] = I18[31:0];

  assign inst0__in_data_19[31:0] = I19[31:0];

  assign inst0__in_data_2[31:0] = I2[31:0];

  assign inst0__in_data_20[31:0] = I20[31:0];

  assign inst0__in_data_21[31:0] = I21[31:0];

  assign inst0__in_data_22[31:0] = I22[31:0];

  assign inst0__in_data_23[31:0] = I23[31:0];

  assign inst0__in_data_24[31:0] = I24[31:0];

  assign inst0__in_data_25[31:0] = I25[31:0];

  assign inst0__in_data_26[31:0] = I26[31:0];

  assign inst0__in_data_27[31:0] = I27[31:0];

  assign inst0__in_data_28[31:0] = I28[31:0];

  assign inst0__in_data_29[31:0] = I29[31:0];

  assign inst0__in_data_3[31:0] = I3[31:0];

  assign inst0__in_data_30[31:0] = I30[31:0];

  assign inst0__in_data_31[31:0] = I31[31:0];

  assign inst0__in_data_32[31:0] = I32[31:0];

  assign inst0__in_data_33[31:0] = I33[31:0];

  assign inst0__in_data_34[31:0] = I34[31:0];

  assign inst0__in_data_35[31:0] = I35[31:0];

  assign inst0__in_data_36[31:0] = I36[31:0];

  assign inst0__in_data_37[31:0] = I37[31:0];

  assign inst0__in_data_38[31:0] = I38[31:0];

  assign inst0__in_data_39[31:0] = I39[31:0];

  assign inst0__in_data_4[31:0] = I4[31:0];

  assign inst0__in_data_40[31:0] = I40[31:0];

  assign inst0__in_data_41[31:0] = I41[31:0];

  assign inst0__in_data_42[31:0] = I42[31:0];

  assign inst0__in_data_43[31:0] = I43[31:0];

  assign inst0__in_data_44[31:0] = I44[31:0];

  assign inst0__in_data_45[31:0] = I45[31:0];

  assign inst0__in_data_46[31:0] = I46[31:0];

  assign inst0__in_data_47[31:0] = I47[31:0];

  assign inst0__in_data_48[31:0] = I48[31:0];

  assign inst0__in_data_49[31:0] = I49[31:0];

  assign inst0__in_data_5[31:0] = I5[31:0];

  assign inst0__in_data_50[31:0] = I50[31:0];

  assign inst0__in_data_51[31:0] = I51[31:0];

  assign inst0__in_data_52[31:0] = I52[31:0];

  assign inst0__in_data_53[31:0] = I53[31:0];

  assign inst0__in_data_54[31:0] = I54[31:0];

  assign inst0__in_data_55[31:0] = I55[31:0];

  assign inst0__in_data_56[31:0] = I56[31:0];

  assign inst0__in_data_57[31:0] = I57[31:0];

  assign inst0__in_data_58[31:0] = I58[31:0];

  assign inst0__in_data_59[31:0] = I59[31:0];

  assign inst0__in_data_6[31:0] = I6[31:0];

  assign inst0__in_data_60[31:0] = I60[31:0];

  assign inst0__in_data_61[31:0] = I61[31:0];

  assign inst0__in_data_62[31:0] = I62[31:0];

  assign inst0__in_data_63[31:0] = I63[31:0];

  assign inst0__in_data_64[31:0] = I64[31:0];

  assign inst0__in_data_65[31:0] = I65[31:0];

  assign inst0__in_data_66[31:0] = I66[31:0];

  assign inst0__in_data_67[31:0] = I67[31:0];

  assign inst0__in_data_68[31:0] = I68[31:0];

  assign inst0__in_data_69[31:0] = I69[31:0];

  assign inst0__in_data_7[31:0] = I7[31:0];

  assign inst0__in_data_70[31:0] = I70[31:0];

  assign inst0__in_data_71[31:0] = I71[31:0];

  assign inst0__in_data_72[31:0] = I72[31:0];

  assign inst0__in_data_73[31:0] = I73[31:0];

  assign inst0__in_data_74[31:0] = I74[31:0];

  assign inst0__in_data_75[31:0] = I75[31:0];

  assign inst0__in_data_76[31:0] = I76[31:0];

  assign inst0__in_data_77[31:0] = I77[31:0];

  assign inst0__in_data_78[31:0] = I78[31:0];

  assign inst0__in_data_79[31:0] = I79[31:0];

  assign inst0__in_data_8[31:0] = I8[31:0];

  assign inst0__in_data_9[31:0] = I9[31:0];

  assign inst0__in_sel[6:0] = S[6:0];

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux80x32

module coreir_ult #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 < in1;

endmodule  // coreir_ult

module Mux2x16 (
  input [15:0] I0,
  input [15:0] I1,
  output [15:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] inst0__in_data_0;
  wire [15:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [15:0] inst0__out;
  muxn_U5 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[15:0] = I0[15:0];

  assign inst0__in_data_1[15:0] = I1[15:0];

  assign inst0__in_sel[0] = S;

  assign O[15:0] = inst0__out[15:0];


endmodule  // Mux2x16

module Mux7x32 (
  input [31:0] I0,
  input [31:0] I1,
  input [31:0] I2,
  input [31:0] I3,
  input [31:0] I4,
  input [31:0] I5,
  input [31:0] I6,
  output [31:0] O,
  input [2:0] S
);


  // Instancing generated Module: commonlib.muxn(N:7, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [31:0] inst0__in_data_2;
  wire [31:0] inst0__in_data_3;
  wire [31:0] inst0__in_data_4;
  wire [31:0] inst0__in_data_5;
  wire [31:0] inst0__in_data_6;
  wire [2:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U11 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_data_2[31:0] = I2[31:0];

  assign inst0__in_data_3[31:0] = I3[31:0];

  assign inst0__in_data_4[31:0] = I4[31:0];

  assign inst0__in_data_5[31:0] = I5[31:0];

  assign inst0__in_data_6[31:0] = I6[31:0];

  assign inst0__in_sel[2:0] = S[2:0];

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux7x32

module Mux10x16 (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I2,
  input [15:0] I3,
  input [15:0] I4,
  input [15:0] I5,
  input [15:0] I6,
  input [15:0] I7,
  input [15:0] I8,
  input [15:0] I9,
  output [15:0] O,
  input [3:0] S
);


  // Instancing generated Module: commonlib.muxn(N:10, width:16)
  wire [15:0] inst0__in_data_0;
  wire [15:0] inst0__in_data_1;
  wire [15:0] inst0__in_data_2;
  wire [15:0] inst0__in_data_3;
  wire [15:0] inst0__in_data_4;
  wire [15:0] inst0__in_data_5;
  wire [15:0] inst0__in_data_6;
  wire [15:0] inst0__in_data_7;
  wire [15:0] inst0__in_data_8;
  wire [15:0] inst0__in_data_9;
  wire [3:0] inst0__in_sel;
  wire [15:0] inst0__out;
  muxn_U3 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[15:0] = I0[15:0];

  assign inst0__in_data_1[15:0] = I1[15:0];

  assign inst0__in_data_2[15:0] = I2[15:0];

  assign inst0__in_data_3[15:0] = I3[15:0];

  assign inst0__in_data_4[15:0] = I4[15:0];

  assign inst0__in_data_5[15:0] = I5[15:0];

  assign inst0__in_data_6[15:0] = I6[15:0];

  assign inst0__in_data_7[15:0] = I7[15:0];

  assign inst0__in_data_8[15:0] = I8[15:0];

  assign inst0__in_data_9[15:0] = I9[15:0];

  assign inst0__in_sel[3:0] = S[3:0];

  assign O[15:0] = inst0__out[15:0];


endmodule  // Mux10x16

module MuxWrapper_10_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  input [15:0] I_4,
  input [15:0] I_5,
  input [15:0] I_6,
  input [15:0] I_7,
  input [15:0] I_8,
  input [15:0] I_9,
  output [15:0] O,
  input [3:0] S
);


  wire [15:0] inst0__I0;
  wire [15:0] inst0__I1;
  wire [15:0] inst0__I2;
  wire [15:0] inst0__I3;
  wire [15:0] inst0__I4;
  wire [15:0] inst0__I5;
  wire [15:0] inst0__I6;
  wire [15:0] inst0__I7;
  wire [15:0] inst0__I8;
  wire [15:0] inst0__I9;
  wire [15:0] inst0__O;
  wire [3:0] inst0__S;
  Mux10x16 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[15:0] = I_0[15:0];

  assign inst0__I1[15:0] = I_1[15:0];

  assign inst0__I2[15:0] = I_2[15:0];

  assign inst0__I3[15:0] = I_3[15:0];

  assign inst0__I4[15:0] = I_4[15:0];

  assign inst0__I5[15:0] = I_5[15:0];

  assign inst0__I6[15:0] = I_6[15:0];

  assign inst0__I7[15:0] = I_7[15:0];

  assign inst0__I8[15:0] = I_8[15:0];

  assign inst0__I9[15:0] = I_9[15:0];

  assign O[15:0] = inst0__O[15:0];

  assign inst0__S[3:0] = S[3:0];


endmodule  // MuxWrapper_10_16

module Decode28 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_2_8__out;
  coreir_const #(.value(8'h02),.width(8)) const_2_8(
    .out(const_2_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_2_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode28

module Decode38 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_3_8__out;
  coreir_const #(.value(8'h03),.width(8)) const_3_8(
    .out(const_3_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_3_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode38

module Decode08 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_0_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode08

module Decode18 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_1_8__out;
  coreir_const #(.value(8'h01),.width(8)) const_1_8(
    .out(const_1_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_1_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode18

module Decode48 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_4_8__out;
  coreir_const #(.value(8'h04),.width(8)) const_4_8(
    .out(const_4_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_4_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode48

module Decode58 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_5_8__out;
  coreir_const #(.value(8'h05),.width(8)) const_5_8(
    .out(const_5_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_5_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode58

module Decode68 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_6_8__out;
  coreir_const #(.value(8'h06),.width(8)) const_6_8(
    .out(const_6_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_6_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode68

module Mux10x1 (
  input [0:0] I0,
  input [0:0] I1,
  input [0:0] I2,
  input [0:0] I3,
  input [0:0] I4,
  input [0:0] I5,
  input [0:0] I6,
  input [0:0] I7,
  input [0:0] I8,
  input [0:0] I9,
  output [0:0] O,
  input [3:0] S
);


  // Instancing generated Module: commonlib.muxn(N:10, width:1)
  wire [0:0] inst0__in_data_0;
  wire [0:0] inst0__in_data_1;
  wire [0:0] inst0__in_data_2;
  wire [0:0] inst0__in_data_3;
  wire [0:0] inst0__in_data_4;
  wire [0:0] inst0__in_data_5;
  wire [0:0] inst0__in_data_6;
  wire [0:0] inst0__in_data_7;
  wire [0:0] inst0__in_data_8;
  wire [0:0] inst0__in_data_9;
  wire [3:0] inst0__in_sel;
  wire [0:0] inst0__out;
  muxn_U2 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[0:0] = I0[0:0];

  assign inst0__in_data_1[0:0] = I1[0:0];

  assign inst0__in_data_2[0:0] = I2[0:0];

  assign inst0__in_data_3[0:0] = I3[0:0];

  assign inst0__in_data_4[0:0] = I4[0:0];

  assign inst0__in_data_5[0:0] = I5[0:0];

  assign inst0__in_data_6[0:0] = I6[0:0];

  assign inst0__in_data_7[0:0] = I7[0:0];

  assign inst0__in_data_8[0:0] = I8[0:0];

  assign inst0__in_data_9[0:0] = I9[0:0];

  assign inst0__in_sel[3:0] = S[3:0];

  assign O[0:0] = inst0__out[0:0];


endmodule  // Mux10x1

module MuxWrapper_10_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  input [0:0] I_3,
  input [0:0] I_4,
  input [0:0] I_5,
  input [0:0] I_6,
  input [0:0] I_7,
  input [0:0] I_8,
  input [0:0] I_9,
  output [0:0] O,
  input [3:0] S
);


  wire [0:0] inst0__I0;
  wire [0:0] inst0__I1;
  wire [0:0] inst0__I2;
  wire [0:0] inst0__I3;
  wire [0:0] inst0__I4;
  wire [0:0] inst0__I5;
  wire [0:0] inst0__I6;
  wire [0:0] inst0__I7;
  wire [0:0] inst0__I8;
  wire [0:0] inst0__I9;
  wire [0:0] inst0__O;
  wire [3:0] inst0__S;
  Mux10x1 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[0:0] = I_0[0:0];

  assign inst0__I1[0:0] = I_1[0:0];

  assign inst0__I2[0:0] = I_2[0:0];

  assign inst0__I3[0:0] = I_3[0:0];

  assign inst0__I4[0:0] = I_4[0:0];

  assign inst0__I5[0:0] = I_5[0:0];

  assign inst0__I6[0:0] = I_6[0:0];

  assign inst0__I7[0:0] = I_7[0:0];

  assign inst0__I8[0:0] = I_8[0:0];

  assign inst0__I9[0:0] = I_9[0:0];

  assign O[0:0] = inst0__O[0:0];

  assign inst0__S[3:0] = S[3:0];


endmodule  // MuxWrapper_10_1

module Mux2x1 (
  input [0:0] I0,
  input [0:0] I1,
  output [0:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] inst0__in_data_0;
  wire [0:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [0:0] inst0__out;
  muxn_U4 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[0:0] = I0[0:0];

  assign inst0__in_data_1[0:0] = I1[0:0];

  assign inst0__in_sel[0] = S;

  assign O[0:0] = inst0__out[0:0];


endmodule  // Mux2x1

module Mux2x2 (
  input [1:0] I0,
  input [1:0] I1,
  output [1:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:2)
  wire [1:0] inst0__in_data_0;
  wire [1:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [1:0] inst0__out;
  muxn_U6 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[1:0] = I0[1:0];

  assign inst0__in_data_1[1:0] = I1[1:0];

  assign inst0__in_sel[0] = S;

  assign O[1:0] = inst0__out[1:0];


endmodule  // Mux2x2

module Mux2x32 (
  input [31:0] I0,
  input [31:0] I1,
  output [31:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U7 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_sel[0] = S;

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux2x32

module Mux2x4 (
  input [3:0] I0,
  input [3:0] I1,
  output [3:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:4)
  wire [3:0] inst0__in_data_0;
  wire [3:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [3:0] inst0__out;
  muxn_U8 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[3:0] = I0[3:0];

  assign inst0__in_data_1[3:0] = I1[3:0];

  assign inst0__in_sel[0] = S;

  assign O[3:0] = inst0__out[3:0];


endmodule  // Mux2x4

module Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4 (
  input  ASYNCRESET,
  input  CE,
  input  CLK,
  input [3:0] I,
  output [3:0] O
);


  // Instancing generated Module: coreir.reg_arst(width:4)
  wire  inst0__arst;
  wire  inst0__clk;
  wire [3:0] inst0__in;
  wire [3:0] inst0__out;
  coreir_reg_arst #(.arst_posedge(1),.clk_posedge(1),.init(4'h0),.width(4)) inst0(
    .arst(inst0__arst),
    .clk(inst0__clk),
    .in(inst0__in),
    .out(inst0__out)
  );

  wire [3:0] inst1__I0;
  wire [3:0] inst1__I1;
  wire [3:0] inst1__O;
  wire  inst1__S;
  Mux2x4 inst1(
    .I0(inst1__I0),
    .I1(inst1__I1),
    .O(inst1__O),
    .S(inst1__S)
  );

  assign inst0__arst = ASYNCRESET;

  assign inst0__clk = CLK;

  assign inst0__in[3:0] = inst1__O[3:0];

  assign inst1__I0[3:0] = inst0__out[3:0];

  assign O[3:0] = inst0__out[3:0];

  assign inst1__I1[3:0] = I[3:0];

  assign inst1__S = CE;


endmodule  // Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4

module ConfigRegister_4_8_32_0 (
  output [3:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [3:0] inst0__I;
  wire [3:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_0_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign inst0__I[2] = config_data[2];

  assign inst0__I[3] = config_data[3];

  assign O[3:0] = inst0__O[3:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_4_8_32_0

module Mux4x16 (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I2,
  input [15:0] I3,
  output [15:0] O,
  input [1:0] S
);


  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] inst0__in_data_0;
  wire [15:0] inst0__in_data_1;
  wire [15:0] inst0__in_data_2;
  wire [15:0] inst0__in_data_3;
  wire [1:0] inst0__in_sel;
  wire [15:0] inst0__out;
  muxn_U10 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[15:0] = I0[15:0];

  assign inst0__in_data_1[15:0] = I1[15:0];

  assign inst0__in_data_2[15:0] = I2[15:0];

  assign inst0__in_data_3[15:0] = I3[15:0];

  assign inst0__in_sel[1:0] = S[1:0];

  assign O[15:0] = inst0__out[15:0];


endmodule  // Mux4x16

module MuxWrapper_4_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  output [15:0] O,
  input [1:0] S
);


  wire [15:0] inst0__I0;
  wire [15:0] inst0__I1;
  wire [15:0] inst0__I2;
  wire [15:0] inst0__I3;
  wire [15:0] inst0__O;
  wire [1:0] inst0__S;
  Mux4x16 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[15:0] = I_0[15:0];

  assign inst0__I1[15:0] = I_1[15:0];

  assign inst0__I2[15:0] = I_2[15:0];

  assign inst0__I3[15:0] = I_3[15:0];

  assign O[15:0] = inst0__O[15:0];

  assign inst0__S[1:0] = S[1:0];


endmodule  // MuxWrapper_4_16

module MuxWrapper_2_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  output [0:0] O,
  input [0:0] S
);


  wire [0:0] inst0__I0;
  wire [0:0] inst0__I1;
  wire [0:0] inst0__O;
  wire  inst0__S;
  Mux2x1 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[0:0] = I_0[0:0];

  assign inst0__I1[0:0] = I_1[0:0];

  assign O[0:0] = inst0__O[0:0];

  assign inst0__S = S[0];


endmodule  // MuxWrapper_2_1

module MuxWrapper_2_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  output [15:0] O,
  input [0:0] S
);


  wire [15:0] inst0__I0;
  wire [15:0] inst0__I1;
  wire [15:0] inst0__O;
  wire  inst0__S;
  Mux2x16 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[15:0] = I_0[15:0];

  assign inst0__I1[15:0] = I_1[15:0];

  assign O[15:0] = inst0__O[15:0];

  assign inst0__S = S[0];


endmodule  // MuxWrapper_2_16

module MuxWrapper_2_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  output [31:0] O,
  input [0:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__O;
  wire  inst0__S;
  Mux2x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S = S[0];


endmodule  // MuxWrapper_2_32

module MuxWrapper_3_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  output [0:0] O,
  input [1:0] S
);


  wire [0:0] inst0__I0;
  wire [0:0] inst0__I1;
  wire [0:0] inst0__I2;
  wire [0:0] inst0__O;
  wire [1:0] inst0__S;
  Mux3x1 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[0:0] = I_0[0:0];

  assign inst0__I1[0:0] = I_1[0:0];

  assign inst0__I2[0:0] = I_2[0:0];

  assign O[0:0] = inst0__O[0:0];

  assign inst0__S[1:0] = S[1:0];


endmodule  // MuxWrapper_3_1

module MuxWrapper_7_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_2,
  input [31:0] I_3,
  input [31:0] I_4,
  input [31:0] I_5,
  input [31:0] I_6,
  output [31:0] O,
  input [2:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__I2;
  wire [31:0] inst0__I3;
  wire [31:0] inst0__I4;
  wire [31:0] inst0__I5;
  wire [31:0] inst0__I6;
  wire [31:0] inst0__O;
  wire [2:0] inst0__S;
  Mux7x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign inst0__I2[31:0] = I_2[31:0];

  assign inst0__I3[31:0] = I_3[31:0];

  assign inst0__I4[31:0] = I_4[31:0];

  assign inst0__I5[31:0] = I_5[31:0];

  assign inst0__I6[31:0] = I_6[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S[2:0] = S[2:0];


endmodule  // MuxWrapper_7_32

module MuxWithDefaultWrapper_7_32_8_0 (
  input [0:0] EN,
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_2,
  input [31:0] I_3,
  input [31:0] I_4,
  input [31:0] I_5,
  input [31:0] I_6,
  output [31:0] O,
  input [7:0] S
);


  // Instancing generated Module: coreir.const(width:32)
  wire [31:0] const_0_32__out;
  coreir_const #(.value(32'h00000000),.width(32)) const_0_32(
    .out(const_0_32__out)
  );

  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_7_8__out;
  coreir_const #(.value(8'h07),.width(8)) const_7_8(
    .out(const_7_8__out)
  );

  wire [31:0] inst0__I_0;
  wire [31:0] inst0__I_1;
  wire [31:0] inst0__I_2;
  wire [31:0] inst0__I_3;
  wire [31:0] inst0__I_4;
  wire [31:0] inst0__I_5;
  wire [31:0] inst0__I_6;
  wire [31:0] inst0__O;
  wire [2:0] inst0__S;
  MuxWrapper_7_32 inst0(
    .I_0(inst0__I_0),
    .I_1(inst0__I_1),
    .I_2(inst0__I_2),
    .I_3(inst0__I_3),
    .I_4(inst0__I_4),
    .I_5(inst0__I_5),
    .I_6(inst0__I_6),
    .O(inst0__O),
    .S(inst0__S)
  );

  wire [31:0] inst1__I_0;
  wire [31:0] inst1__I_1;
  wire [31:0] inst1__O;
  wire [0:0] inst1__S;
  MuxWrapper_2_32 inst1(
    .I_0(inst1__I_0),
    .I_1(inst1__I_1),
    .O(inst1__O),
    .S(inst1__S)
  );

  // Instancing generated Module: coreir.ult(width:8)
  wire [7:0] inst2__in0;
  wire [7:0] inst2__in1;
  wire  inst2__out;
  coreir_ult #(.width(8)) inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  wire  inst3__in0;
  wire  inst3__in1;
  wire  inst3__out;
  corebit_and inst3(
    .in0(inst3__in0),
    .in1(inst3__in1),
    .out(inst3__out)
  );

  assign inst1__I_0[31:0] = const_0_32__out[31:0];

  assign inst2__in1[7:0] = const_7_8__out[7:0];

  assign inst0__I_0[31:0] = I_0[31:0];

  assign inst0__I_1[31:0] = I_1[31:0];

  assign inst0__I_2[31:0] = I_2[31:0];

  assign inst0__I_3[31:0] = I_3[31:0];

  assign inst0__I_4[31:0] = I_4[31:0];

  assign inst0__I_5[31:0] = I_5[31:0];

  assign inst0__I_6[31:0] = I_6[31:0];

  assign inst1__I_1[31:0] = inst0__O[31:0];

  assign inst0__S[0] = S[0];

  assign inst0__S[1] = S[1];

  assign inst0__S[2] = S[2];

  assign O[31:0] = inst1__O[31:0];

  assign inst1__S[0] = inst3__out;

  assign inst2__in0[7:0] = S[7:0];

  assign inst3__in0 = inst2__out;

  assign inst3__in1 = EN[0];


endmodule  // MuxWithDefaultWrapper_7_32_8_0

module MuxWrapper_80_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_10,
  input [31:0] I_11,
  input [31:0] I_12,
  input [31:0] I_13,
  input [31:0] I_14,
  input [31:0] I_15,
  input [31:0] I_16,
  input [31:0] I_17,
  input [31:0] I_18,
  input [31:0] I_19,
  input [31:0] I_2,
  input [31:0] I_20,
  input [31:0] I_21,
  input [31:0] I_22,
  input [31:0] I_23,
  input [31:0] I_24,
  input [31:0] I_25,
  input [31:0] I_26,
  input [31:0] I_27,
  input [31:0] I_28,
  input [31:0] I_29,
  input [31:0] I_3,
  input [31:0] I_30,
  input [31:0] I_31,
  input [31:0] I_32,
  input [31:0] I_33,
  input [31:0] I_34,
  input [31:0] I_35,
  input [31:0] I_36,
  input [31:0] I_37,
  input [31:0] I_38,
  input [31:0] I_39,
  input [31:0] I_4,
  input [31:0] I_40,
  input [31:0] I_41,
  input [31:0] I_42,
  input [31:0] I_43,
  input [31:0] I_44,
  input [31:0] I_45,
  input [31:0] I_46,
  input [31:0] I_47,
  input [31:0] I_48,
  input [31:0] I_49,
  input [31:0] I_5,
  input [31:0] I_50,
  input [31:0] I_51,
  input [31:0] I_52,
  input [31:0] I_53,
  input [31:0] I_54,
  input [31:0] I_55,
  input [31:0] I_56,
  input [31:0] I_57,
  input [31:0] I_58,
  input [31:0] I_59,
  input [31:0] I_6,
  input [31:0] I_60,
  input [31:0] I_61,
  input [31:0] I_62,
  input [31:0] I_63,
  input [31:0] I_64,
  input [31:0] I_65,
  input [31:0] I_66,
  input [31:0] I_67,
  input [31:0] I_68,
  input [31:0] I_69,
  input [31:0] I_7,
  input [31:0] I_70,
  input [31:0] I_71,
  input [31:0] I_72,
  input [31:0] I_73,
  input [31:0] I_74,
  input [31:0] I_75,
  input [31:0] I_76,
  input [31:0] I_77,
  input [31:0] I_78,
  input [31:0] I_79,
  input [31:0] I_8,
  input [31:0] I_9,
  output [31:0] O,
  input [6:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__I10;
  wire [31:0] inst0__I11;
  wire [31:0] inst0__I12;
  wire [31:0] inst0__I13;
  wire [31:0] inst0__I14;
  wire [31:0] inst0__I15;
  wire [31:0] inst0__I16;
  wire [31:0] inst0__I17;
  wire [31:0] inst0__I18;
  wire [31:0] inst0__I19;
  wire [31:0] inst0__I2;
  wire [31:0] inst0__I20;
  wire [31:0] inst0__I21;
  wire [31:0] inst0__I22;
  wire [31:0] inst0__I23;
  wire [31:0] inst0__I24;
  wire [31:0] inst0__I25;
  wire [31:0] inst0__I26;
  wire [31:0] inst0__I27;
  wire [31:0] inst0__I28;
  wire [31:0] inst0__I29;
  wire [31:0] inst0__I3;
  wire [31:0] inst0__I30;
  wire [31:0] inst0__I31;
  wire [31:0] inst0__I32;
  wire [31:0] inst0__I33;
  wire [31:0] inst0__I34;
  wire [31:0] inst0__I35;
  wire [31:0] inst0__I36;
  wire [31:0] inst0__I37;
  wire [31:0] inst0__I38;
  wire [31:0] inst0__I39;
  wire [31:0] inst0__I4;
  wire [31:0] inst0__I40;
  wire [31:0] inst0__I41;
  wire [31:0] inst0__I42;
  wire [31:0] inst0__I43;
  wire [31:0] inst0__I44;
  wire [31:0] inst0__I45;
  wire [31:0] inst0__I46;
  wire [31:0] inst0__I47;
  wire [31:0] inst0__I48;
  wire [31:0] inst0__I49;
  wire [31:0] inst0__I5;
  wire [31:0] inst0__I50;
  wire [31:0] inst0__I51;
  wire [31:0] inst0__I52;
  wire [31:0] inst0__I53;
  wire [31:0] inst0__I54;
  wire [31:0] inst0__I55;
  wire [31:0] inst0__I56;
  wire [31:0] inst0__I57;
  wire [31:0] inst0__I58;
  wire [31:0] inst0__I59;
  wire [31:0] inst0__I6;
  wire [31:0] inst0__I60;
  wire [31:0] inst0__I61;
  wire [31:0] inst0__I62;
  wire [31:0] inst0__I63;
  wire [31:0] inst0__I64;
  wire [31:0] inst0__I65;
  wire [31:0] inst0__I66;
  wire [31:0] inst0__I67;
  wire [31:0] inst0__I68;
  wire [31:0] inst0__I69;
  wire [31:0] inst0__I7;
  wire [31:0] inst0__I70;
  wire [31:0] inst0__I71;
  wire [31:0] inst0__I72;
  wire [31:0] inst0__I73;
  wire [31:0] inst0__I74;
  wire [31:0] inst0__I75;
  wire [31:0] inst0__I76;
  wire [31:0] inst0__I77;
  wire [31:0] inst0__I78;
  wire [31:0] inst0__I79;
  wire [31:0] inst0__I8;
  wire [31:0] inst0__I9;
  wire [31:0] inst0__O;
  wire [6:0] inst0__S;
  Mux80x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I10(inst0__I10),
    .I11(inst0__I11),
    .I12(inst0__I12),
    .I13(inst0__I13),
    .I14(inst0__I14),
    .I15(inst0__I15),
    .I16(inst0__I16),
    .I17(inst0__I17),
    .I18(inst0__I18),
    .I19(inst0__I19),
    .I2(inst0__I2),
    .I20(inst0__I20),
    .I21(inst0__I21),
    .I22(inst0__I22),
    .I23(inst0__I23),
    .I24(inst0__I24),
    .I25(inst0__I25),
    .I26(inst0__I26),
    .I27(inst0__I27),
    .I28(inst0__I28),
    .I29(inst0__I29),
    .I3(inst0__I3),
    .I30(inst0__I30),
    .I31(inst0__I31),
    .I32(inst0__I32),
    .I33(inst0__I33),
    .I34(inst0__I34),
    .I35(inst0__I35),
    .I36(inst0__I36),
    .I37(inst0__I37),
    .I38(inst0__I38),
    .I39(inst0__I39),
    .I4(inst0__I4),
    .I40(inst0__I40),
    .I41(inst0__I41),
    .I42(inst0__I42),
    .I43(inst0__I43),
    .I44(inst0__I44),
    .I45(inst0__I45),
    .I46(inst0__I46),
    .I47(inst0__I47),
    .I48(inst0__I48),
    .I49(inst0__I49),
    .I5(inst0__I5),
    .I50(inst0__I50),
    .I51(inst0__I51),
    .I52(inst0__I52),
    .I53(inst0__I53),
    .I54(inst0__I54),
    .I55(inst0__I55),
    .I56(inst0__I56),
    .I57(inst0__I57),
    .I58(inst0__I58),
    .I59(inst0__I59),
    .I6(inst0__I6),
    .I60(inst0__I60),
    .I61(inst0__I61),
    .I62(inst0__I62),
    .I63(inst0__I63),
    .I64(inst0__I64),
    .I65(inst0__I65),
    .I66(inst0__I66),
    .I67(inst0__I67),
    .I68(inst0__I68),
    .I69(inst0__I69),
    .I7(inst0__I7),
    .I70(inst0__I70),
    .I71(inst0__I71),
    .I72(inst0__I72),
    .I73(inst0__I73),
    .I74(inst0__I74),
    .I75(inst0__I75),
    .I76(inst0__I76),
    .I77(inst0__I77),
    .I78(inst0__I78),
    .I79(inst0__I79),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign inst0__I10[31:0] = I_10[31:0];

  assign inst0__I11[31:0] = I_11[31:0];

  assign inst0__I12[31:0] = I_12[31:0];

  assign inst0__I13[31:0] = I_13[31:0];

  assign inst0__I14[31:0] = I_14[31:0];

  assign inst0__I15[31:0] = I_15[31:0];

  assign inst0__I16[31:0] = I_16[31:0];

  assign inst0__I17[31:0] = I_17[31:0];

  assign inst0__I18[31:0] = I_18[31:0];

  assign inst0__I19[31:0] = I_19[31:0];

  assign inst0__I2[31:0] = I_2[31:0];

  assign inst0__I20[31:0] = I_20[31:0];

  assign inst0__I21[31:0] = I_21[31:0];

  assign inst0__I22[31:0] = I_22[31:0];

  assign inst0__I23[31:0] = I_23[31:0];

  assign inst0__I24[31:0] = I_24[31:0];

  assign inst0__I25[31:0] = I_25[31:0];

  assign inst0__I26[31:0] = I_26[31:0];

  assign inst0__I27[31:0] = I_27[31:0];

  assign inst0__I28[31:0] = I_28[31:0];

  assign inst0__I29[31:0] = I_29[31:0];

  assign inst0__I3[31:0] = I_3[31:0];

  assign inst0__I30[31:0] = I_30[31:0];

  assign inst0__I31[31:0] = I_31[31:0];

  assign inst0__I32[31:0] = I_32[31:0];

  assign inst0__I33[31:0] = I_33[31:0];

  assign inst0__I34[31:0] = I_34[31:0];

  assign inst0__I35[31:0] = I_35[31:0];

  assign inst0__I36[31:0] = I_36[31:0];

  assign inst0__I37[31:0] = I_37[31:0];

  assign inst0__I38[31:0] = I_38[31:0];

  assign inst0__I39[31:0] = I_39[31:0];

  assign inst0__I4[31:0] = I_4[31:0];

  assign inst0__I40[31:0] = I_40[31:0];

  assign inst0__I41[31:0] = I_41[31:0];

  assign inst0__I42[31:0] = I_42[31:0];

  assign inst0__I43[31:0] = I_43[31:0];

  assign inst0__I44[31:0] = I_44[31:0];

  assign inst0__I45[31:0] = I_45[31:0];

  assign inst0__I46[31:0] = I_46[31:0];

  assign inst0__I47[31:0] = I_47[31:0];

  assign inst0__I48[31:0] = I_48[31:0];

  assign inst0__I49[31:0] = I_49[31:0];

  assign inst0__I5[31:0] = I_5[31:0];

  assign inst0__I50[31:0] = I_50[31:0];

  assign inst0__I51[31:0] = I_51[31:0];

  assign inst0__I52[31:0] = I_52[31:0];

  assign inst0__I53[31:0] = I_53[31:0];

  assign inst0__I54[31:0] = I_54[31:0];

  assign inst0__I55[31:0] = I_55[31:0];

  assign inst0__I56[31:0] = I_56[31:0];

  assign inst0__I57[31:0] = I_57[31:0];

  assign inst0__I58[31:0] = I_58[31:0];

  assign inst0__I59[31:0] = I_59[31:0];

  assign inst0__I6[31:0] = I_6[31:0];

  assign inst0__I60[31:0] = I_60[31:0];

  assign inst0__I61[31:0] = I_61[31:0];

  assign inst0__I62[31:0] = I_62[31:0];

  assign inst0__I63[31:0] = I_63[31:0];

  assign inst0__I64[31:0] = I_64[31:0];

  assign inst0__I65[31:0] = I_65[31:0];

  assign inst0__I66[31:0] = I_66[31:0];

  assign inst0__I67[31:0] = I_67[31:0];

  assign inst0__I68[31:0] = I_68[31:0];

  assign inst0__I69[31:0] = I_69[31:0];

  assign inst0__I7[31:0] = I_7[31:0];

  assign inst0__I70[31:0] = I_70[31:0];

  assign inst0__I71[31:0] = I_71[31:0];

  assign inst0__I72[31:0] = I_72[31:0];

  assign inst0__I73[31:0] = I_73[31:0];

  assign inst0__I74[31:0] = I_74[31:0];

  assign inst0__I75[31:0] = I_75[31:0];

  assign inst0__I76[31:0] = I_76[31:0];

  assign inst0__I77[31:0] = I_77[31:0];

  assign inst0__I78[31:0] = I_78[31:0];

  assign inst0__I79[31:0] = I_79[31:0];

  assign inst0__I8[31:0] = I_8[31:0];

  assign inst0__I9[31:0] = I_9[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S[6:0] = S[6:0];


endmodule  // MuxWrapper_80_32

module Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 (
  input  ASYNCRESET,
  input  CE,
  input  CLK,
  input [0:0] I,
  output [0:0] O
);


  // Instancing generated Module: coreir.reg_arst(width:1)
  wire  inst0__arst;
  wire  inst0__clk;
  wire [0:0] inst0__in;
  wire [0:0] inst0__out;
  coreir_reg_arst #(.arst_posedge(1),.clk_posedge(1),.init(1'h0),.width(1)) inst0(
    .arst(inst0__arst),
    .clk(inst0__clk),
    .in(inst0__in),
    .out(inst0__out)
  );

  wire [0:0] inst1__I0;
  wire [0:0] inst1__I1;
  wire [0:0] inst1__O;
  wire  inst1__S;
  Mux2x1 inst1(
    .I0(inst1__I0),
    .I1(inst1__I1),
    .O(inst1__O),
    .S(inst1__S)
  );

  assign inst0__arst = ASYNCRESET;

  assign inst0__clk = CLK;

  assign inst0__in[0:0] = inst1__O[0:0];

  assign inst1__I0[0:0] = inst0__out[0:0];

  assign O[0:0] = inst0__out[0:0];

  assign inst1__I1[0:0] = I[0:0];

  assign inst1__S = CE;


endmodule  // Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1

module ConfigRegister_1_8_32_53 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_53_8__out;
  coreir_const #(.value(8'h35),.width(8)) const_53_8(
    .out(const_53_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_53_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_53

module ConfigRegister_1_8_32_73 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_73_8__out;
  coreir_const #(.value(8'h49),.width(8)) const_73_8(
    .out(const_73_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_73_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_73

module ConfigRegister_1_8_32_31 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_31_8__out;
  coreir_const #(.value(8'h1f),.width(8)) const_31_8(
    .out(const_31_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_31_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_31

module ConfigRegister_1_8_32_1 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_1_8__out;
  coreir_const #(.value(8'h01),.width(8)) const_1_8(
    .out(const_1_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_1_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_1

module ConfigRegister_1_8_32_39 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_39_8__out;
  coreir_const #(.value(8'h27),.width(8)) const_39_8(
    .out(const_39_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_39_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_39

module ConfigRegister_1_8_32_11 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_11_8__out;
  coreir_const #(.value(8'h0b),.width(8)) const_11_8(
    .out(const_11_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_11_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_11

module ConfigRegister_1_8_32_67 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_67_8__out;
  coreir_const #(.value(8'h43),.width(8)) const_67_8(
    .out(const_67_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_67_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_67

module ConfigRegister_1_8_32_13 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_13_8__out;
  coreir_const #(.value(8'h0d),.width(8)) const_13_8(
    .out(const_13_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_13_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_13

module ConfigRegister_1_8_32_17 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_17_8__out;
  coreir_const #(.value(8'h11),.width(8)) const_17_8(
    .out(const_17_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_17_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_17

module ConfigRegister_1_8_32_5 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_5_8__out;
  coreir_const #(.value(8'h05),.width(8)) const_5_8(
    .out(const_5_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_5_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_5

module ConfigRegister_1_8_32_19 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_19_8__out;
  coreir_const #(.value(8'h13),.width(8)) const_19_8(
    .out(const_19_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_19_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_19

module ConfigRegister_1_8_32_23 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_23_8__out;
  coreir_const #(.value(8'h17),.width(8)) const_23_8(
    .out(const_23_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_23_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_23

module ConfigRegister_1_8_32_27 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_27_8__out;
  coreir_const #(.value(8'h1b),.width(8)) const_27_8(
    .out(const_27_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_27_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_27

module ConfigRegister_1_8_32_59 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_59_8__out;
  coreir_const #(.value(8'h3b),.width(8)) const_59_8(
    .out(const_59_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_59_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_59

module ConfigRegister_1_8_32_3 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_3_8__out;
  coreir_const #(.value(8'h03),.width(8)) const_3_8(
    .out(const_3_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_3_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_3

module ConfigRegister_1_8_32_33 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_33_8__out;
  coreir_const #(.value(8'h21),.width(8)) const_33_8(
    .out(const_33_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_33_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_33

module ConfigRegister_1_8_32_35 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_35_8__out;
  coreir_const #(.value(8'h23),.width(8)) const_35_8(
    .out(const_35_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_35_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_35

module ConfigRegister_1_8_32_37 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_37_8__out;
  coreir_const #(.value(8'h25),.width(8)) const_37_8(
    .out(const_37_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_37_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_37

module ConfigRegister_1_8_32_9 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_9_8__out;
  coreir_const #(.value(8'h09),.width(8)) const_9_8(
    .out(const_9_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_9_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_9

module ConfigRegister_1_8_32_25 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_25_8__out;
  coreir_const #(.value(8'h19),.width(8)) const_25_8(
    .out(const_25_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_25_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_25

module ConfigRegister_1_8_32_7 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_7_8__out;
  coreir_const #(.value(8'h07),.width(8)) const_7_8(
    .out(const_7_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_7_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_7

module ConfigRegister_1_8_32_71 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_71_8__out;
  coreir_const #(.value(8'h47),.width(8)) const_71_8(
    .out(const_71_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_71_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_71

module ConfigRegister_1_8_32_29 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_29_8__out;
  coreir_const #(.value(8'h1d),.width(8)) const_29_8(
    .out(const_29_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_29_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_29

module ConfigRegister_1_8_32_61 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_61_8__out;
  coreir_const #(.value(8'h3d),.width(8)) const_61_8(
    .out(const_61_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_61_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_61

module ConfigRegister_1_8_32_69 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_69_8__out;
  coreir_const #(.value(8'h45),.width(8)) const_69_8(
    .out(const_69_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_69_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_69

module ConfigRegister_1_8_32_65 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_65_8__out;
  coreir_const #(.value(8'h41),.width(8)) const_65_8(
    .out(const_65_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_65_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_65

module ConfigRegister_1_8_32_15 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_15_8__out;
  coreir_const #(.value(8'h0f),.width(8)) const_15_8(
    .out(const_15_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_15_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_15

module ConfigRegister_1_8_32_77 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_77_8__out;
  coreir_const #(.value(8'h4d),.width(8)) const_77_8(
    .out(const_77_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_77_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_77

module ConfigRegister_1_8_32_63 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_63_8__out;
  coreir_const #(.value(8'h3f),.width(8)) const_63_8(
    .out(const_63_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_63_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_63

module ConfigRegister_1_8_32_49 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_49_8__out;
  coreir_const #(.value(8'h31),.width(8)) const_49_8(
    .out(const_49_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_49_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_49

module ConfigRegister_1_8_32_47 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_47_8__out;
  coreir_const #(.value(8'h2f),.width(8)) const_47_8(
    .out(const_47_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_47_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_47

module ConfigRegister_1_8_32_51 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_51_8__out;
  coreir_const #(.value(8'h33),.width(8)) const_51_8(
    .out(const_51_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_51_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_51

module ConfigRegister_1_8_32_43 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_43_8__out;
  coreir_const #(.value(8'h2b),.width(8)) const_43_8(
    .out(const_43_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_43_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_43

module ConfigRegister_1_8_32_21 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_21_8__out;
  coreir_const #(.value(8'h15),.width(8)) const_21_8(
    .out(const_21_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_21_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_21

module ConfigRegister_1_8_32_57 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_57_8__out;
  coreir_const #(.value(8'h39),.width(8)) const_57_8(
    .out(const_57_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_57_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_57

module ConfigRegister_1_8_32_55 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_55_8__out;
  coreir_const #(.value(8'h37),.width(8)) const_55_8(
    .out(const_55_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_55_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_55

module ConfigRegister_1_8_32_41 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_41_8__out;
  coreir_const #(.value(8'h29),.width(8)) const_41_8(
    .out(const_41_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_41_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_41

module ConfigRegister_1_8_32_75 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_75_8__out;
  coreir_const #(.value(8'h4b),.width(8)) const_75_8(
    .out(const_75_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_75_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_75

module ConfigRegister_1_8_32_45 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_45_8__out;
  coreir_const #(.value(8'h2d),.width(8)) const_45_8(
    .out(const_45_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_45_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_45

module ConfigRegister_1_8_32_79 (
  output [0:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_79_8__out;
  coreir_const #(.value(8'h4f),.width(8)) const_79_8(
    .out(const_79_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [0:0] inst0__I;
  wire [0:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_1 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_79_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign O[0:0] = inst0__O[0:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_1_8_32_79

module Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 (
  input  ASYNCRESET,
  input  CE,
  input  CLK,
  input [1:0] I,
  output [1:0] O
);


  // Instancing generated Module: coreir.reg_arst(width:2)
  wire  inst0__arst;
  wire  inst0__clk;
  wire [1:0] inst0__in;
  wire [1:0] inst0__out;
  coreir_reg_arst #(.arst_posedge(1),.clk_posedge(1),.init(2'h0),.width(2)) inst0(
    .arst(inst0__arst),
    .clk(inst0__clk),
    .in(inst0__in),
    .out(inst0__out)
  );

  wire [1:0] inst1__I0;
  wire [1:0] inst1__I1;
  wire [1:0] inst1__O;
  wire  inst1__S;
  Mux2x2 inst1(
    .I0(inst1__I0),
    .I1(inst1__I1),
    .O(inst1__O),
    .S(inst1__S)
  );

  assign inst0__arst = ASYNCRESET;

  assign inst0__clk = CLK;

  assign inst0__in[1:0] = inst1__O[1:0];

  assign inst1__I0[1:0] = inst0__out[1:0];

  assign O[1:0] = inst0__out[1:0];

  assign inst1__I1[1:0] = I[1:0];

  assign inst1__S = CE;


endmodule  // Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2

module ConfigRegister_2_8_32_0 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_0_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_0

module ConfigRegister_2_8_32_24 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_24_8__out;
  coreir_const #(.value(8'h18),.width(8)) const_24_8(
    .out(const_24_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_24_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_24

module ConfigRegister_2_8_32_64 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_64_8__out;
  coreir_const #(.value(8'h40),.width(8)) const_64_8(
    .out(const_64_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_64_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_64

module ConfigRegister_2_8_32_76 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_76_8__out;
  coreir_const #(.value(8'h4c),.width(8)) const_76_8(
    .out(const_76_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_76_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_76

module ConfigRegister_2_8_32_8 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_8_8__out;
  coreir_const #(.value(8'h08),.width(8)) const_8_8(
    .out(const_8_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_8_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_8

module ConfigRegister_2_8_32_60 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_60_8__out;
  coreir_const #(.value(8'h3c),.width(8)) const_60_8(
    .out(const_60_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_60_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_60

module ConfigRegister_2_8_32_68 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_68_8__out;
  coreir_const #(.value(8'h44),.width(8)) const_68_8(
    .out(const_68_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_68_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_68

module ConfigRegister_2_8_32_52 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_52_8__out;
  coreir_const #(.value(8'h34),.width(8)) const_52_8(
    .out(const_52_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_52_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_52

module ConfigRegister_2_8_32_54 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_54_8__out;
  coreir_const #(.value(8'h36),.width(8)) const_54_8(
    .out(const_54_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_54_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_54

module ConfigRegister_2_8_32_70 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_70_8__out;
  coreir_const #(.value(8'h46),.width(8)) const_70_8(
    .out(const_70_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_70_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_70

module ConfigRegister_2_8_32_32 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_32_8__out;
  coreir_const #(.value(8'h20),.width(8)) const_32_8(
    .out(const_32_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_32_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_32

module ConfigRegister_2_8_32_16 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_16_8__out;
  coreir_const #(.value(8'h10),.width(8)) const_16_8(
    .out(const_16_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_16_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_16

module ConfigRegister_2_8_32_48 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_48_8__out;
  coreir_const #(.value(8'h30),.width(8)) const_48_8(
    .out(const_48_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_48_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_48

module ConfigRegister_2_8_32_34 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_34_8__out;
  coreir_const #(.value(8'h22),.width(8)) const_34_8(
    .out(const_34_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_34_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_34

module ConfigRegister_2_8_32_18 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_18_8__out;
  coreir_const #(.value(8'h12),.width(8)) const_18_8(
    .out(const_18_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_18_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_18

module ConfigRegister_2_8_32_36 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_36_8__out;
  coreir_const #(.value(8'h24),.width(8)) const_36_8(
    .out(const_36_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_36_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_36

module ConfigRegister_2_8_32_2 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_2_8__out;
  coreir_const #(.value(8'h02),.width(8)) const_2_8(
    .out(const_2_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_2_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_2

module ConfigRegister_2_8_32_74 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_74_8__out;
  coreir_const #(.value(8'h4a),.width(8)) const_74_8(
    .out(const_74_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_74_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_74

module ConfigRegister_2_8_32_58 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_58_8__out;
  coreir_const #(.value(8'h3a),.width(8)) const_58_8(
    .out(const_58_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_58_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_58

module ConfigRegister_2_8_32_6 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_6_8__out;
  coreir_const #(.value(8'h06),.width(8)) const_6_8(
    .out(const_6_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_6_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_6

module ConfigRegister_2_8_32_4 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_4_8__out;
  coreir_const #(.value(8'h04),.width(8)) const_4_8(
    .out(const_4_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_4_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_4

module ConfigRegister_2_8_32_28 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_28_8__out;
  coreir_const #(.value(8'h1c),.width(8)) const_28_8(
    .out(const_28_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_28_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_28

module ConfigRegister_2_8_32_44 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_44_8__out;
  coreir_const #(.value(8'h2c),.width(8)) const_44_8(
    .out(const_44_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_44_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_44

module ConfigRegister_2_8_32_78 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_78_8__out;
  coreir_const #(.value(8'h4e),.width(8)) const_78_8(
    .out(const_78_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_78_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_78

module ConfigRegister_2_8_32_22 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_22_8__out;
  coreir_const #(.value(8'h16),.width(8)) const_22_8(
    .out(const_22_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_22_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_22

module ConfigRegister_2_8_32_40 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_40_8__out;
  coreir_const #(.value(8'h28),.width(8)) const_40_8(
    .out(const_40_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_40_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_40

module ConfigRegister_2_8_32_66 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_66_8__out;
  coreir_const #(.value(8'h42),.width(8)) const_66_8(
    .out(const_66_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_66_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_66

module ConfigRegister_2_8_32_46 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_46_8__out;
  coreir_const #(.value(8'h2e),.width(8)) const_46_8(
    .out(const_46_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_46_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_46

module ConfigRegister_2_8_32_30 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_30_8__out;
  coreir_const #(.value(8'h1e),.width(8)) const_30_8(
    .out(const_30_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_30_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_30

module ConfigRegister_2_8_32_14 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_14_8__out;
  coreir_const #(.value(8'h0e),.width(8)) const_14_8(
    .out(const_14_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_14_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_14

module ConfigRegister_2_8_32_20 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_20_8__out;
  coreir_const #(.value(8'h14),.width(8)) const_20_8(
    .out(const_20_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_20_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_20

module ConfigRegister_2_8_32_62 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_62_8__out;
  coreir_const #(.value(8'h3e),.width(8)) const_62_8(
    .out(const_62_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_62_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_62

module ConfigRegister_2_8_32_42 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_42_8__out;
  coreir_const #(.value(8'h2a),.width(8)) const_42_8(
    .out(const_42_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_42_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_42

module ConfigRegister_2_8_32_26 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_26_8__out;
  coreir_const #(.value(8'h1a),.width(8)) const_26_8(
    .out(const_26_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_26_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_26

module ConfigRegister_2_8_32_12 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_12_8__out;
  coreir_const #(.value(8'h0c),.width(8)) const_12_8(
    .out(const_12_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_12_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_12

module ConfigRegister_2_8_32_10 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_10_8__out;
  coreir_const #(.value(8'h0a),.width(8)) const_10_8(
    .out(const_10_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_10_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_10

module ConfigRegister_2_8_32_50 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_50_8__out;
  coreir_const #(.value(8'h32),.width(8)) const_50_8(
    .out(const_50_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_50_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_50

module ConfigRegister_2_8_32_72 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_72_8__out;
  coreir_const #(.value(8'h48),.width(8)) const_72_8(
    .out(const_72_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_72_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_72

module ConfigRegister_2_8_32_56 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_56_8__out;
  coreir_const #(.value(8'h38),.width(8)) const_56_8(
    .out(const_56_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_56_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_56

module ConfigRegister_2_8_32_38 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_38_8__out;
  coreir_const #(.value(8'h26),.width(8)) const_38_8(
    .out(const_38_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_38_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_38

module ZextWrapper_2_32 (
  input [1:0] I,
  output [31:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  assign O[10] = bit_const_0_None__out;

  assign O[11] = bit_const_0_None__out;

  assign O[12] = bit_const_0_None__out;

  assign O[13] = bit_const_0_None__out;

  assign O[14] = bit_const_0_None__out;

  assign O[15] = bit_const_0_None__out;

  assign O[16] = bit_const_0_None__out;

  assign O[17] = bit_const_0_None__out;

  assign O[18] = bit_const_0_None__out;

  assign O[19] = bit_const_0_None__out;

  assign O[20] = bit_const_0_None__out;

  assign O[21] = bit_const_0_None__out;

  assign O[22] = bit_const_0_None__out;

  assign O[23] = bit_const_0_None__out;

  assign O[24] = bit_const_0_None__out;

  assign O[25] = bit_const_0_None__out;

  assign O[26] = bit_const_0_None__out;

  assign O[27] = bit_const_0_None__out;

  assign O[28] = bit_const_0_None__out;

  assign O[29] = bit_const_0_None__out;

  assign O[2] = bit_const_0_None__out;

  assign O[30] = bit_const_0_None__out;

  assign O[31] = bit_const_0_None__out;

  assign O[3] = bit_const_0_None__out;

  assign O[4] = bit_const_0_None__out;

  assign O[5] = bit_const_0_None__out;

  assign O[6] = bit_const_0_None__out;

  assign O[7] = bit_const_0_None__out;

  assign O[8] = bit_const_0_None__out;

  assign O[9] = bit_const_0_None__out;

  assign O[0] = I[0];

  assign O[1] = I[1];


endmodule  // ZextWrapper_2_32

module SB_Out_Bits_16___Out_Bits_4__ (
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] east_I_layer16_0,
  input [15:0] east_I_layer16_1,
  input [15:0] east_I_layer16_2,
  input [15:0] east_I_layer16_3,
  input [15:0] east_I_layer16_4,
  input [0:0] east_I_layer1_0,
  input [0:0] east_I_layer1_1,
  input [0:0] east_I_layer1_2,
  input [0:0] east_I_layer1_3,
  input [0:0] east_I_layer1_4,
  output [15:0] east_O_layer16_0,
  output [15:0] east_O_layer16_1,
  output [15:0] east_O_layer16_2,
  output [15:0] east_O_layer16_3,
  output [15:0] east_O_layer16_4,
  output [0:0] east_O_layer1_0,
  output [0:0] east_O_layer1_1,
  output [0:0] east_O_layer1_2,
  output [0:0] east_O_layer1_3,
  output [0:0] east_O_layer1_4,
  input [15:0] north_I_layer16_0,
  input [15:0] north_I_layer16_1,
  input [15:0] north_I_layer16_2,
  input [15:0] north_I_layer16_3,
  input [15:0] north_I_layer16_4,
  input [0:0] north_I_layer1_0,
  input [0:0] north_I_layer1_1,
  input [0:0] north_I_layer1_2,
  input [0:0] north_I_layer1_3,
  input [0:0] north_I_layer1_4,
  output [15:0] north_O_layer16_0,
  output [15:0] north_O_layer16_1,
  output [15:0] north_O_layer16_2,
  output [15:0] north_O_layer16_3,
  output [15:0] north_O_layer16_4,
  output [0:0] north_O_layer1_0,
  output [0:0] north_O_layer1_1,
  output [0:0] north_O_layer1_2,
  output [0:0] north_O_layer1_3,
  output [0:0] north_O_layer1_4,
  output [31:0] read_config_data,
  input [15:0] res,
  input [3:0] res_p,
  input  reset,
  input [15:0] south_I_layer16_0,
  input [15:0] south_I_layer16_1,
  input [15:0] south_I_layer16_2,
  input [15:0] south_I_layer16_3,
  input [15:0] south_I_layer16_4,
  input [0:0] south_I_layer1_0,
  input [0:0] south_I_layer1_1,
  input [0:0] south_I_layer1_2,
  input [0:0] south_I_layer1_3,
  input [0:0] south_I_layer1_4,
  output [15:0] south_O_layer16_0,
  output [15:0] south_O_layer16_1,
  output [15:0] south_O_layer16_2,
  output [15:0] south_O_layer16_3,
  output [15:0] south_O_layer16_4,
  output [0:0] south_O_layer1_0,
  output [0:0] south_O_layer1_1,
  output [0:0] south_O_layer1_2,
  output [0:0] south_O_layer1_3,
  output [0:0] south_O_layer1_4,
  input [15:0] west_I_layer16_0,
  input [15:0] west_I_layer16_1,
  input [15:0] west_I_layer16_2,
  input [15:0] west_I_layer16_3,
  input [15:0] west_I_layer16_4,
  input [0:0] west_I_layer1_0,
  input [0:0] west_I_layer1_1,
  input [0:0] west_I_layer1_2,
  input [0:0] west_I_layer1_3,
  input [0:0] west_I_layer1_4,
  output [15:0] west_O_layer16_0,
  output [15:0] west_O_layer16_1,
  output [15:0] west_O_layer16_2,
  output [15:0] west_O_layer16_3,
  output [15:0] west_O_layer16_4,
  output [0:0] west_O_layer1_0,
  output [0:0] west_O_layer1_1,
  output [0:0] west_O_layer1_2,
  output [0:0] west_O_layer1_3,
  output [0:0] west_O_layer1_4
);


  wire [0:0] inst0__I_0;
  wire [0:0] inst0__I_1;
  wire [0:0] inst0__I_2;
  wire [0:0] inst0__O;
  wire [1:0] inst0__S;
  MuxWrapper_3_1 inst0(
    .I_0(inst0__I_0),
    .I_1(inst0__I_1),
    .I_2(inst0__I_2),
    .O(inst0__O),
    .S(inst0__S)
  );

  wire [0:0] inst1__I_0;
  wire [0:0] inst1__I_1;
  wire [0:0] inst1__O;
  wire [0:0] inst1__S;
  MuxWrapper_2_1 inst1(
    .I_0(inst1__I_0),
    .I_1(inst1__I_1),
    .O(inst1__O),
    .S(inst1__S)
  );

  wire [0:0] inst10__I_0;
  wire [0:0] inst10__I_1;
  wire [0:0] inst10__I_2;
  wire [0:0] inst10__O;
  wire [1:0] inst10__S;
  MuxWrapper_3_1 inst10(
    .I_0(inst10__I_0),
    .I_1(inst10__I_1),
    .I_2(inst10__I_2),
    .O(inst10__O),
    .S(inst10__S)
  );

  wire [0:0] inst100__I_0;
  wire [0:0] inst100__I_1;
  wire [0:0] inst100__I_2;
  wire [0:0] inst100__O;
  wire [1:0] inst100__S;
  MuxWrapper_3_1 inst100(
    .I_0(inst100__I_0),
    .I_1(inst100__I_1),
    .I_2(inst100__I_2),
    .O(inst100__O),
    .S(inst100__S)
  );

  wire [0:0] inst101__I_0;
  wire [0:0] inst101__I_1;
  wire [0:0] inst101__O;
  wire [0:0] inst101__S;
  MuxWrapper_2_1 inst101(
    .I_0(inst101__I_0),
    .I_1(inst101__I_1),
    .O(inst101__O),
    .S(inst101__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst102__clk;
  wire [0:0] inst102__in;
  wire [0:0] inst102__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst102(
    .clk(inst102__clk),
    .in(inst102__in),
    .out(inst102__out)
  );

  wire [1:0] inst103__O;
  wire  inst103__clk;
  wire [7:0] inst103__config_addr;
  wire [31:0] inst103__config_data;
  wire  inst103__config_en;
  wire  inst103__reset;
  ConfigRegister_2_8_32_40 inst103(
    .O(inst103__O),
    .clk(inst103__clk),
    .config_addr(inst103__config_addr),
    .config_data(inst103__config_data),
    .config_en(inst103__config_en),
    .reset(inst103__reset)
  );

  wire [0:0] inst104__O;
  wire  inst104__clk;
  wire [7:0] inst104__config_addr;
  wire [31:0] inst104__config_data;
  wire  inst104__config_en;
  wire  inst104__reset;
  ConfigRegister_1_8_32_41 inst104(
    .O(inst104__O),
    .clk(inst104__clk),
    .config_addr(inst104__config_addr),
    .config_data(inst104__config_data),
    .config_en(inst104__config_en),
    .reset(inst104__reset)
  );

  wire [0:0] inst105__I_0;
  wire [0:0] inst105__I_1;
  wire [0:0] inst105__I_2;
  wire [0:0] inst105__O;
  wire [1:0] inst105__S;
  MuxWrapper_3_1 inst105(
    .I_0(inst105__I_0),
    .I_1(inst105__I_1),
    .I_2(inst105__I_2),
    .O(inst105__O),
    .S(inst105__S)
  );

  wire [0:0] inst106__I_0;
  wire [0:0] inst106__I_1;
  wire [0:0] inst106__O;
  wire [0:0] inst106__S;
  MuxWrapper_2_1 inst106(
    .I_0(inst106__I_0),
    .I_1(inst106__I_1),
    .O(inst106__O),
    .S(inst106__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst107__clk;
  wire [0:0] inst107__in;
  wire [0:0] inst107__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst107(
    .clk(inst107__clk),
    .in(inst107__in),
    .out(inst107__out)
  );

  wire [1:0] inst108__O;
  wire  inst108__clk;
  wire [7:0] inst108__config_addr;
  wire [31:0] inst108__config_data;
  wire  inst108__config_en;
  wire  inst108__reset;
  ConfigRegister_2_8_32_42 inst108(
    .O(inst108__O),
    .clk(inst108__clk),
    .config_addr(inst108__config_addr),
    .config_data(inst108__config_data),
    .config_en(inst108__config_en),
    .reset(inst108__reset)
  );

  wire [0:0] inst109__O;
  wire  inst109__clk;
  wire [7:0] inst109__config_addr;
  wire [31:0] inst109__config_data;
  wire  inst109__config_en;
  wire  inst109__reset;
  ConfigRegister_1_8_32_43 inst109(
    .O(inst109__O),
    .clk(inst109__clk),
    .config_addr(inst109__config_addr),
    .config_data(inst109__config_data),
    .config_en(inst109__config_en),
    .reset(inst109__reset)
  );

  wire [0:0] inst11__I_0;
  wire [0:0] inst11__I_1;
  wire [0:0] inst11__O;
  wire [0:0] inst11__S;
  MuxWrapper_2_1 inst11(
    .I_0(inst11__I_0),
    .I_1(inst11__I_1),
    .O(inst11__O),
    .S(inst11__S)
  );

  wire [0:0] inst110__I_0;
  wire [0:0] inst110__I_1;
  wire [0:0] inst110__I_2;
  wire [0:0] inst110__O;
  wire [1:0] inst110__S;
  MuxWrapper_3_1 inst110(
    .I_0(inst110__I_0),
    .I_1(inst110__I_1),
    .I_2(inst110__I_2),
    .O(inst110__O),
    .S(inst110__S)
  );

  wire [0:0] inst111__I_0;
  wire [0:0] inst111__I_1;
  wire [0:0] inst111__O;
  wire [0:0] inst111__S;
  MuxWrapper_2_1 inst111(
    .I_0(inst111__I_0),
    .I_1(inst111__I_1),
    .O(inst111__O),
    .S(inst111__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst112__clk;
  wire [0:0] inst112__in;
  wire [0:0] inst112__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst112(
    .clk(inst112__clk),
    .in(inst112__in),
    .out(inst112__out)
  );

  wire [1:0] inst113__O;
  wire  inst113__clk;
  wire [7:0] inst113__config_addr;
  wire [31:0] inst113__config_data;
  wire  inst113__config_en;
  wire  inst113__reset;
  ConfigRegister_2_8_32_44 inst113(
    .O(inst113__O),
    .clk(inst113__clk),
    .config_addr(inst113__config_addr),
    .config_data(inst113__config_data),
    .config_en(inst113__config_en),
    .reset(inst113__reset)
  );

  wire [0:0] inst114__O;
  wire  inst114__clk;
  wire [7:0] inst114__config_addr;
  wire [31:0] inst114__config_data;
  wire  inst114__config_en;
  wire  inst114__reset;
  ConfigRegister_1_8_32_45 inst114(
    .O(inst114__O),
    .clk(inst114__clk),
    .config_addr(inst114__config_addr),
    .config_data(inst114__config_data),
    .config_en(inst114__config_en),
    .reset(inst114__reset)
  );

  wire [0:0] inst115__I_0;
  wire [0:0] inst115__I_1;
  wire [0:0] inst115__I_2;
  wire [0:0] inst115__O;
  wire [1:0] inst115__S;
  MuxWrapper_3_1 inst115(
    .I_0(inst115__I_0),
    .I_1(inst115__I_1),
    .I_2(inst115__I_2),
    .O(inst115__O),
    .S(inst115__S)
  );

  wire [0:0] inst116__I_0;
  wire [0:0] inst116__I_1;
  wire [0:0] inst116__O;
  wire [0:0] inst116__S;
  MuxWrapper_2_1 inst116(
    .I_0(inst116__I_0),
    .I_1(inst116__I_1),
    .O(inst116__O),
    .S(inst116__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst117__clk;
  wire [0:0] inst117__in;
  wire [0:0] inst117__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst117(
    .clk(inst117__clk),
    .in(inst117__in),
    .out(inst117__out)
  );

  wire [1:0] inst118__O;
  wire  inst118__clk;
  wire [7:0] inst118__config_addr;
  wire [31:0] inst118__config_data;
  wire  inst118__config_en;
  wire  inst118__reset;
  ConfigRegister_2_8_32_46 inst118(
    .O(inst118__O),
    .clk(inst118__clk),
    .config_addr(inst118__config_addr),
    .config_data(inst118__config_data),
    .config_en(inst118__config_en),
    .reset(inst118__reset)
  );

  wire [0:0] inst119__O;
  wire  inst119__clk;
  wire [7:0] inst119__config_addr;
  wire [31:0] inst119__config_data;
  wire  inst119__config_en;
  wire  inst119__reset;
  ConfigRegister_1_8_32_47 inst119(
    .O(inst119__O),
    .clk(inst119__clk),
    .config_addr(inst119__config_addr),
    .config_data(inst119__config_data),
    .config_en(inst119__config_en),
    .reset(inst119__reset)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst12__clk;
  wire [0:0] inst12__in;
  wire [0:0] inst12__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst12(
    .clk(inst12__clk),
    .in(inst12__in),
    .out(inst12__out)
  );

  wire [0:0] inst120__I_0;
  wire [0:0] inst120__I_1;
  wire [0:0] inst120__I_2;
  wire [0:0] inst120__O;
  wire [1:0] inst120__S;
  MuxWrapper_3_1 inst120(
    .I_0(inst120__I_0),
    .I_1(inst120__I_1),
    .I_2(inst120__I_2),
    .O(inst120__O),
    .S(inst120__S)
  );

  wire [0:0] inst121__I_0;
  wire [0:0] inst121__I_1;
  wire [0:0] inst121__O;
  wire [0:0] inst121__S;
  MuxWrapper_2_1 inst121(
    .I_0(inst121__I_0),
    .I_1(inst121__I_1),
    .O(inst121__O),
    .S(inst121__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst122__clk;
  wire [0:0] inst122__in;
  wire [0:0] inst122__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst122(
    .clk(inst122__clk),
    .in(inst122__in),
    .out(inst122__out)
  );

  wire [1:0] inst123__O;
  wire  inst123__clk;
  wire [7:0] inst123__config_addr;
  wire [31:0] inst123__config_data;
  wire  inst123__config_en;
  wire  inst123__reset;
  ConfigRegister_2_8_32_48 inst123(
    .O(inst123__O),
    .clk(inst123__clk),
    .config_addr(inst123__config_addr),
    .config_data(inst123__config_data),
    .config_en(inst123__config_en),
    .reset(inst123__reset)
  );

  wire [0:0] inst124__O;
  wire  inst124__clk;
  wire [7:0] inst124__config_addr;
  wire [31:0] inst124__config_data;
  wire  inst124__config_en;
  wire  inst124__reset;
  ConfigRegister_1_8_32_49 inst124(
    .O(inst124__O),
    .clk(inst124__clk),
    .config_addr(inst124__config_addr),
    .config_data(inst124__config_data),
    .config_en(inst124__config_en),
    .reset(inst124__reset)
  );

  wire [15:0] inst125__I_0;
  wire [15:0] inst125__I_1;
  wire [15:0] inst125__I_2;
  wire [15:0] inst125__I_3;
  wire [15:0] inst125__O;
  wire [1:0] inst125__S;
  MuxWrapper_4_16 inst125(
    .I_0(inst125__I_0),
    .I_1(inst125__I_1),
    .I_2(inst125__I_2),
    .I_3(inst125__I_3),
    .O(inst125__O),
    .S(inst125__S)
  );

  wire [15:0] inst126__I_0;
  wire [15:0] inst126__I_1;
  wire [15:0] inst126__O;
  wire [0:0] inst126__S;
  MuxWrapper_2_16 inst126(
    .I_0(inst126__I_0),
    .I_1(inst126__I_1),
    .O(inst126__O),
    .S(inst126__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst127__clk;
  wire [15:0] inst127__in;
  wire [15:0] inst127__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst127(
    .clk(inst127__clk),
    .in(inst127__in),
    .out(inst127__out)
  );

  wire [1:0] inst128__O;
  wire  inst128__clk;
  wire [7:0] inst128__config_addr;
  wire [31:0] inst128__config_data;
  wire  inst128__config_en;
  wire  inst128__reset;
  ConfigRegister_2_8_32_50 inst128(
    .O(inst128__O),
    .clk(inst128__clk),
    .config_addr(inst128__config_addr),
    .config_data(inst128__config_data),
    .config_en(inst128__config_en),
    .reset(inst128__reset)
  );

  wire [0:0] inst129__O;
  wire  inst129__clk;
  wire [7:0] inst129__config_addr;
  wire [31:0] inst129__config_data;
  wire  inst129__config_en;
  wire  inst129__reset;
  ConfigRegister_1_8_32_51 inst129(
    .O(inst129__O),
    .clk(inst129__clk),
    .config_addr(inst129__config_addr),
    .config_data(inst129__config_data),
    .config_en(inst129__config_en),
    .reset(inst129__reset)
  );

  wire [1:0] inst13__O;
  wire  inst13__clk;
  wire [7:0] inst13__config_addr;
  wire [31:0] inst13__config_data;
  wire  inst13__config_en;
  wire  inst13__reset;
  ConfigRegister_2_8_32_4 inst13(
    .O(inst13__O),
    .clk(inst13__clk),
    .config_addr(inst13__config_addr),
    .config_data(inst13__config_data),
    .config_en(inst13__config_en),
    .reset(inst13__reset)
  );

  wire [15:0] inst130__I_0;
  wire [15:0] inst130__I_1;
  wire [15:0] inst130__I_2;
  wire [15:0] inst130__I_3;
  wire [15:0] inst130__O;
  wire [1:0] inst130__S;
  MuxWrapper_4_16 inst130(
    .I_0(inst130__I_0),
    .I_1(inst130__I_1),
    .I_2(inst130__I_2),
    .I_3(inst130__I_3),
    .O(inst130__O),
    .S(inst130__S)
  );

  wire [15:0] inst131__I_0;
  wire [15:0] inst131__I_1;
  wire [15:0] inst131__O;
  wire [0:0] inst131__S;
  MuxWrapper_2_16 inst131(
    .I_0(inst131__I_0),
    .I_1(inst131__I_1),
    .O(inst131__O),
    .S(inst131__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst132__clk;
  wire [15:0] inst132__in;
  wire [15:0] inst132__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst132(
    .clk(inst132__clk),
    .in(inst132__in),
    .out(inst132__out)
  );

  wire [1:0] inst133__O;
  wire  inst133__clk;
  wire [7:0] inst133__config_addr;
  wire [31:0] inst133__config_data;
  wire  inst133__config_en;
  wire  inst133__reset;
  ConfigRegister_2_8_32_52 inst133(
    .O(inst133__O),
    .clk(inst133__clk),
    .config_addr(inst133__config_addr),
    .config_data(inst133__config_data),
    .config_en(inst133__config_en),
    .reset(inst133__reset)
  );

  wire [0:0] inst134__O;
  wire  inst134__clk;
  wire [7:0] inst134__config_addr;
  wire [31:0] inst134__config_data;
  wire  inst134__config_en;
  wire  inst134__reset;
  ConfigRegister_1_8_32_53 inst134(
    .O(inst134__O),
    .clk(inst134__clk),
    .config_addr(inst134__config_addr),
    .config_data(inst134__config_data),
    .config_en(inst134__config_en),
    .reset(inst134__reset)
  );

  wire [15:0] inst135__I_0;
  wire [15:0] inst135__I_1;
  wire [15:0] inst135__I_2;
  wire [15:0] inst135__I_3;
  wire [15:0] inst135__O;
  wire [1:0] inst135__S;
  MuxWrapper_4_16 inst135(
    .I_0(inst135__I_0),
    .I_1(inst135__I_1),
    .I_2(inst135__I_2),
    .I_3(inst135__I_3),
    .O(inst135__O),
    .S(inst135__S)
  );

  wire [15:0] inst136__I_0;
  wire [15:0] inst136__I_1;
  wire [15:0] inst136__O;
  wire [0:0] inst136__S;
  MuxWrapper_2_16 inst136(
    .I_0(inst136__I_0),
    .I_1(inst136__I_1),
    .O(inst136__O),
    .S(inst136__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst137__clk;
  wire [15:0] inst137__in;
  wire [15:0] inst137__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst137(
    .clk(inst137__clk),
    .in(inst137__in),
    .out(inst137__out)
  );

  wire [1:0] inst138__O;
  wire  inst138__clk;
  wire [7:0] inst138__config_addr;
  wire [31:0] inst138__config_data;
  wire  inst138__config_en;
  wire  inst138__reset;
  ConfigRegister_2_8_32_54 inst138(
    .O(inst138__O),
    .clk(inst138__clk),
    .config_addr(inst138__config_addr),
    .config_data(inst138__config_data),
    .config_en(inst138__config_en),
    .reset(inst138__reset)
  );

  wire [0:0] inst139__O;
  wire  inst139__clk;
  wire [7:0] inst139__config_addr;
  wire [31:0] inst139__config_data;
  wire  inst139__config_en;
  wire  inst139__reset;
  ConfigRegister_1_8_32_55 inst139(
    .O(inst139__O),
    .clk(inst139__clk),
    .config_addr(inst139__config_addr),
    .config_data(inst139__config_data),
    .config_en(inst139__config_en),
    .reset(inst139__reset)
  );

  wire [0:0] inst14__O;
  wire  inst14__clk;
  wire [7:0] inst14__config_addr;
  wire [31:0] inst14__config_data;
  wire  inst14__config_en;
  wire  inst14__reset;
  ConfigRegister_1_8_32_5 inst14(
    .O(inst14__O),
    .clk(inst14__clk),
    .config_addr(inst14__config_addr),
    .config_data(inst14__config_data),
    .config_en(inst14__config_en),
    .reset(inst14__reset)
  );

  wire [15:0] inst140__I_0;
  wire [15:0] inst140__I_1;
  wire [15:0] inst140__I_2;
  wire [15:0] inst140__I_3;
  wire [15:0] inst140__O;
  wire [1:0] inst140__S;
  MuxWrapper_4_16 inst140(
    .I_0(inst140__I_0),
    .I_1(inst140__I_1),
    .I_2(inst140__I_2),
    .I_3(inst140__I_3),
    .O(inst140__O),
    .S(inst140__S)
  );

  wire [15:0] inst141__I_0;
  wire [15:0] inst141__I_1;
  wire [15:0] inst141__O;
  wire [0:0] inst141__S;
  MuxWrapper_2_16 inst141(
    .I_0(inst141__I_0),
    .I_1(inst141__I_1),
    .O(inst141__O),
    .S(inst141__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst142__clk;
  wire [15:0] inst142__in;
  wire [15:0] inst142__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst142(
    .clk(inst142__clk),
    .in(inst142__in),
    .out(inst142__out)
  );

  wire [1:0] inst143__O;
  wire  inst143__clk;
  wire [7:0] inst143__config_addr;
  wire [31:0] inst143__config_data;
  wire  inst143__config_en;
  wire  inst143__reset;
  ConfigRegister_2_8_32_56 inst143(
    .O(inst143__O),
    .clk(inst143__clk),
    .config_addr(inst143__config_addr),
    .config_data(inst143__config_data),
    .config_en(inst143__config_en),
    .reset(inst143__reset)
  );

  wire [0:0] inst144__O;
  wire  inst144__clk;
  wire [7:0] inst144__config_addr;
  wire [31:0] inst144__config_data;
  wire  inst144__config_en;
  wire  inst144__reset;
  ConfigRegister_1_8_32_57 inst144(
    .O(inst144__O),
    .clk(inst144__clk),
    .config_addr(inst144__config_addr),
    .config_data(inst144__config_data),
    .config_en(inst144__config_en),
    .reset(inst144__reset)
  );

  wire [15:0] inst145__I_0;
  wire [15:0] inst145__I_1;
  wire [15:0] inst145__I_2;
  wire [15:0] inst145__I_3;
  wire [15:0] inst145__O;
  wire [1:0] inst145__S;
  MuxWrapper_4_16 inst145(
    .I_0(inst145__I_0),
    .I_1(inst145__I_1),
    .I_2(inst145__I_2),
    .I_3(inst145__I_3),
    .O(inst145__O),
    .S(inst145__S)
  );

  wire [15:0] inst146__I_0;
  wire [15:0] inst146__I_1;
  wire [15:0] inst146__O;
  wire [0:0] inst146__S;
  MuxWrapper_2_16 inst146(
    .I_0(inst146__I_0),
    .I_1(inst146__I_1),
    .O(inst146__O),
    .S(inst146__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst147__clk;
  wire [15:0] inst147__in;
  wire [15:0] inst147__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst147(
    .clk(inst147__clk),
    .in(inst147__in),
    .out(inst147__out)
  );

  wire [1:0] inst148__O;
  wire  inst148__clk;
  wire [7:0] inst148__config_addr;
  wire [31:0] inst148__config_data;
  wire  inst148__config_en;
  wire  inst148__reset;
  ConfigRegister_2_8_32_58 inst148(
    .O(inst148__O),
    .clk(inst148__clk),
    .config_addr(inst148__config_addr),
    .config_data(inst148__config_data),
    .config_en(inst148__config_en),
    .reset(inst148__reset)
  );

  wire [0:0] inst149__O;
  wire  inst149__clk;
  wire [7:0] inst149__config_addr;
  wire [31:0] inst149__config_data;
  wire  inst149__config_en;
  wire  inst149__reset;
  ConfigRegister_1_8_32_59 inst149(
    .O(inst149__O),
    .clk(inst149__clk),
    .config_addr(inst149__config_addr),
    .config_data(inst149__config_data),
    .config_en(inst149__config_en),
    .reset(inst149__reset)
  );

  wire [0:0] inst15__I_0;
  wire [0:0] inst15__I_1;
  wire [0:0] inst15__I_2;
  wire [0:0] inst15__O;
  wire [1:0] inst15__S;
  MuxWrapper_3_1 inst15(
    .I_0(inst15__I_0),
    .I_1(inst15__I_1),
    .I_2(inst15__I_2),
    .O(inst15__O),
    .S(inst15__S)
  );

  wire [0:0] inst150__I_0;
  wire [0:0] inst150__I_1;
  wire [0:0] inst150__I_2;
  wire [0:0] inst150__O;
  wire [1:0] inst150__S;
  MuxWrapper_3_1 inst150(
    .I_0(inst150__I_0),
    .I_1(inst150__I_1),
    .I_2(inst150__I_2),
    .O(inst150__O),
    .S(inst150__S)
  );

  wire [0:0] inst151__I_0;
  wire [0:0] inst151__I_1;
  wire [0:0] inst151__O;
  wire [0:0] inst151__S;
  MuxWrapper_2_1 inst151(
    .I_0(inst151__I_0),
    .I_1(inst151__I_1),
    .O(inst151__O),
    .S(inst151__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst152__clk;
  wire [0:0] inst152__in;
  wire [0:0] inst152__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst152(
    .clk(inst152__clk),
    .in(inst152__in),
    .out(inst152__out)
  );

  wire [1:0] inst153__O;
  wire  inst153__clk;
  wire [7:0] inst153__config_addr;
  wire [31:0] inst153__config_data;
  wire  inst153__config_en;
  wire  inst153__reset;
  ConfigRegister_2_8_32_60 inst153(
    .O(inst153__O),
    .clk(inst153__clk),
    .config_addr(inst153__config_addr),
    .config_data(inst153__config_data),
    .config_en(inst153__config_en),
    .reset(inst153__reset)
  );

  wire [0:0] inst154__O;
  wire  inst154__clk;
  wire [7:0] inst154__config_addr;
  wire [31:0] inst154__config_data;
  wire  inst154__config_en;
  wire  inst154__reset;
  ConfigRegister_1_8_32_61 inst154(
    .O(inst154__O),
    .clk(inst154__clk),
    .config_addr(inst154__config_addr),
    .config_data(inst154__config_data),
    .config_en(inst154__config_en),
    .reset(inst154__reset)
  );

  wire [0:0] inst155__I_0;
  wire [0:0] inst155__I_1;
  wire [0:0] inst155__I_2;
  wire [0:0] inst155__O;
  wire [1:0] inst155__S;
  MuxWrapper_3_1 inst155(
    .I_0(inst155__I_0),
    .I_1(inst155__I_1),
    .I_2(inst155__I_2),
    .O(inst155__O),
    .S(inst155__S)
  );

  wire [0:0] inst156__I_0;
  wire [0:0] inst156__I_1;
  wire [0:0] inst156__O;
  wire [0:0] inst156__S;
  MuxWrapper_2_1 inst156(
    .I_0(inst156__I_0),
    .I_1(inst156__I_1),
    .O(inst156__O),
    .S(inst156__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst157__clk;
  wire [0:0] inst157__in;
  wire [0:0] inst157__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst157(
    .clk(inst157__clk),
    .in(inst157__in),
    .out(inst157__out)
  );

  wire [1:0] inst158__O;
  wire  inst158__clk;
  wire [7:0] inst158__config_addr;
  wire [31:0] inst158__config_data;
  wire  inst158__config_en;
  wire  inst158__reset;
  ConfigRegister_2_8_32_62 inst158(
    .O(inst158__O),
    .clk(inst158__clk),
    .config_addr(inst158__config_addr),
    .config_data(inst158__config_data),
    .config_en(inst158__config_en),
    .reset(inst158__reset)
  );

  wire [0:0] inst159__O;
  wire  inst159__clk;
  wire [7:0] inst159__config_addr;
  wire [31:0] inst159__config_data;
  wire  inst159__config_en;
  wire  inst159__reset;
  ConfigRegister_1_8_32_63 inst159(
    .O(inst159__O),
    .clk(inst159__clk),
    .config_addr(inst159__config_addr),
    .config_data(inst159__config_data),
    .config_en(inst159__config_en),
    .reset(inst159__reset)
  );

  wire [0:0] inst16__I_0;
  wire [0:0] inst16__I_1;
  wire [0:0] inst16__O;
  wire [0:0] inst16__S;
  MuxWrapper_2_1 inst16(
    .I_0(inst16__I_0),
    .I_1(inst16__I_1),
    .O(inst16__O),
    .S(inst16__S)
  );

  wire [0:0] inst160__I_0;
  wire [0:0] inst160__I_1;
  wire [0:0] inst160__I_2;
  wire [0:0] inst160__O;
  wire [1:0] inst160__S;
  MuxWrapper_3_1 inst160(
    .I_0(inst160__I_0),
    .I_1(inst160__I_1),
    .I_2(inst160__I_2),
    .O(inst160__O),
    .S(inst160__S)
  );

  wire [0:0] inst161__I_0;
  wire [0:0] inst161__I_1;
  wire [0:0] inst161__O;
  wire [0:0] inst161__S;
  MuxWrapper_2_1 inst161(
    .I_0(inst161__I_0),
    .I_1(inst161__I_1),
    .O(inst161__O),
    .S(inst161__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst162__clk;
  wire [0:0] inst162__in;
  wire [0:0] inst162__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst162(
    .clk(inst162__clk),
    .in(inst162__in),
    .out(inst162__out)
  );

  wire [1:0] inst163__O;
  wire  inst163__clk;
  wire [7:0] inst163__config_addr;
  wire [31:0] inst163__config_data;
  wire  inst163__config_en;
  wire  inst163__reset;
  ConfigRegister_2_8_32_64 inst163(
    .O(inst163__O),
    .clk(inst163__clk),
    .config_addr(inst163__config_addr),
    .config_data(inst163__config_data),
    .config_en(inst163__config_en),
    .reset(inst163__reset)
  );

  wire [0:0] inst164__O;
  wire  inst164__clk;
  wire [7:0] inst164__config_addr;
  wire [31:0] inst164__config_data;
  wire  inst164__config_en;
  wire  inst164__reset;
  ConfigRegister_1_8_32_65 inst164(
    .O(inst164__O),
    .clk(inst164__clk),
    .config_addr(inst164__config_addr),
    .config_data(inst164__config_data),
    .config_en(inst164__config_en),
    .reset(inst164__reset)
  );

  wire [0:0] inst165__I_0;
  wire [0:0] inst165__I_1;
  wire [0:0] inst165__I_2;
  wire [0:0] inst165__O;
  wire [1:0] inst165__S;
  MuxWrapper_3_1 inst165(
    .I_0(inst165__I_0),
    .I_1(inst165__I_1),
    .I_2(inst165__I_2),
    .O(inst165__O),
    .S(inst165__S)
  );

  wire [0:0] inst166__I_0;
  wire [0:0] inst166__I_1;
  wire [0:0] inst166__O;
  wire [0:0] inst166__S;
  MuxWrapper_2_1 inst166(
    .I_0(inst166__I_0),
    .I_1(inst166__I_1),
    .O(inst166__O),
    .S(inst166__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst167__clk;
  wire [0:0] inst167__in;
  wire [0:0] inst167__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst167(
    .clk(inst167__clk),
    .in(inst167__in),
    .out(inst167__out)
  );

  wire [1:0] inst168__O;
  wire  inst168__clk;
  wire [7:0] inst168__config_addr;
  wire [31:0] inst168__config_data;
  wire  inst168__config_en;
  wire  inst168__reset;
  ConfigRegister_2_8_32_66 inst168(
    .O(inst168__O),
    .clk(inst168__clk),
    .config_addr(inst168__config_addr),
    .config_data(inst168__config_data),
    .config_en(inst168__config_en),
    .reset(inst168__reset)
  );

  wire [0:0] inst169__O;
  wire  inst169__clk;
  wire [7:0] inst169__config_addr;
  wire [31:0] inst169__config_data;
  wire  inst169__config_en;
  wire  inst169__reset;
  ConfigRegister_1_8_32_67 inst169(
    .O(inst169__O),
    .clk(inst169__clk),
    .config_addr(inst169__config_addr),
    .config_data(inst169__config_data),
    .config_en(inst169__config_en),
    .reset(inst169__reset)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst17__clk;
  wire [0:0] inst17__in;
  wire [0:0] inst17__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst17(
    .clk(inst17__clk),
    .in(inst17__in),
    .out(inst17__out)
  );

  wire [0:0] inst170__I_0;
  wire [0:0] inst170__I_1;
  wire [0:0] inst170__I_2;
  wire [0:0] inst170__O;
  wire [1:0] inst170__S;
  MuxWrapper_3_1 inst170(
    .I_0(inst170__I_0),
    .I_1(inst170__I_1),
    .I_2(inst170__I_2),
    .O(inst170__O),
    .S(inst170__S)
  );

  wire [0:0] inst171__I_0;
  wire [0:0] inst171__I_1;
  wire [0:0] inst171__O;
  wire [0:0] inst171__S;
  MuxWrapper_2_1 inst171(
    .I_0(inst171__I_0),
    .I_1(inst171__I_1),
    .O(inst171__O),
    .S(inst171__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst172__clk;
  wire [0:0] inst172__in;
  wire [0:0] inst172__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst172(
    .clk(inst172__clk),
    .in(inst172__in),
    .out(inst172__out)
  );

  wire [1:0] inst173__O;
  wire  inst173__clk;
  wire [7:0] inst173__config_addr;
  wire [31:0] inst173__config_data;
  wire  inst173__config_en;
  wire  inst173__reset;
  ConfigRegister_2_8_32_68 inst173(
    .O(inst173__O),
    .clk(inst173__clk),
    .config_addr(inst173__config_addr),
    .config_data(inst173__config_data),
    .config_en(inst173__config_en),
    .reset(inst173__reset)
  );

  wire [0:0] inst174__O;
  wire  inst174__clk;
  wire [7:0] inst174__config_addr;
  wire [31:0] inst174__config_data;
  wire  inst174__config_en;
  wire  inst174__reset;
  ConfigRegister_1_8_32_69 inst174(
    .O(inst174__O),
    .clk(inst174__clk),
    .config_addr(inst174__config_addr),
    .config_data(inst174__config_data),
    .config_en(inst174__config_en),
    .reset(inst174__reset)
  );

  wire [15:0] inst175__I_0;
  wire [15:0] inst175__I_1;
  wire [15:0] inst175__I_2;
  wire [15:0] inst175__I_3;
  wire [15:0] inst175__O;
  wire [1:0] inst175__S;
  MuxWrapper_4_16 inst175(
    .I_0(inst175__I_0),
    .I_1(inst175__I_1),
    .I_2(inst175__I_2),
    .I_3(inst175__I_3),
    .O(inst175__O),
    .S(inst175__S)
  );

  wire [15:0] inst176__I_0;
  wire [15:0] inst176__I_1;
  wire [15:0] inst176__O;
  wire [0:0] inst176__S;
  MuxWrapper_2_16 inst176(
    .I_0(inst176__I_0),
    .I_1(inst176__I_1),
    .O(inst176__O),
    .S(inst176__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst177__clk;
  wire [15:0] inst177__in;
  wire [15:0] inst177__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst177(
    .clk(inst177__clk),
    .in(inst177__in),
    .out(inst177__out)
  );

  wire [1:0] inst178__O;
  wire  inst178__clk;
  wire [7:0] inst178__config_addr;
  wire [31:0] inst178__config_data;
  wire  inst178__config_en;
  wire  inst178__reset;
  ConfigRegister_2_8_32_70 inst178(
    .O(inst178__O),
    .clk(inst178__clk),
    .config_addr(inst178__config_addr),
    .config_data(inst178__config_data),
    .config_en(inst178__config_en),
    .reset(inst178__reset)
  );

  wire [0:0] inst179__O;
  wire  inst179__clk;
  wire [7:0] inst179__config_addr;
  wire [31:0] inst179__config_data;
  wire  inst179__config_en;
  wire  inst179__reset;
  ConfigRegister_1_8_32_71 inst179(
    .O(inst179__O),
    .clk(inst179__clk),
    .config_addr(inst179__config_addr),
    .config_data(inst179__config_data),
    .config_en(inst179__config_en),
    .reset(inst179__reset)
  );

  wire [1:0] inst18__O;
  wire  inst18__clk;
  wire [7:0] inst18__config_addr;
  wire [31:0] inst18__config_data;
  wire  inst18__config_en;
  wire  inst18__reset;
  ConfigRegister_2_8_32_6 inst18(
    .O(inst18__O),
    .clk(inst18__clk),
    .config_addr(inst18__config_addr),
    .config_data(inst18__config_data),
    .config_en(inst18__config_en),
    .reset(inst18__reset)
  );

  wire [15:0] inst180__I_0;
  wire [15:0] inst180__I_1;
  wire [15:0] inst180__I_2;
  wire [15:0] inst180__I_3;
  wire [15:0] inst180__O;
  wire [1:0] inst180__S;
  MuxWrapper_4_16 inst180(
    .I_0(inst180__I_0),
    .I_1(inst180__I_1),
    .I_2(inst180__I_2),
    .I_3(inst180__I_3),
    .O(inst180__O),
    .S(inst180__S)
  );

  wire [15:0] inst181__I_0;
  wire [15:0] inst181__I_1;
  wire [15:0] inst181__O;
  wire [0:0] inst181__S;
  MuxWrapper_2_16 inst181(
    .I_0(inst181__I_0),
    .I_1(inst181__I_1),
    .O(inst181__O),
    .S(inst181__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst182__clk;
  wire [15:0] inst182__in;
  wire [15:0] inst182__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst182(
    .clk(inst182__clk),
    .in(inst182__in),
    .out(inst182__out)
  );

  wire [1:0] inst183__O;
  wire  inst183__clk;
  wire [7:0] inst183__config_addr;
  wire [31:0] inst183__config_data;
  wire  inst183__config_en;
  wire  inst183__reset;
  ConfigRegister_2_8_32_72 inst183(
    .O(inst183__O),
    .clk(inst183__clk),
    .config_addr(inst183__config_addr),
    .config_data(inst183__config_data),
    .config_en(inst183__config_en),
    .reset(inst183__reset)
  );

  wire [0:0] inst184__O;
  wire  inst184__clk;
  wire [7:0] inst184__config_addr;
  wire [31:0] inst184__config_data;
  wire  inst184__config_en;
  wire  inst184__reset;
  ConfigRegister_1_8_32_73 inst184(
    .O(inst184__O),
    .clk(inst184__clk),
    .config_addr(inst184__config_addr),
    .config_data(inst184__config_data),
    .config_en(inst184__config_en),
    .reset(inst184__reset)
  );

  wire [15:0] inst185__I_0;
  wire [15:0] inst185__I_1;
  wire [15:0] inst185__I_2;
  wire [15:0] inst185__I_3;
  wire [15:0] inst185__O;
  wire [1:0] inst185__S;
  MuxWrapper_4_16 inst185(
    .I_0(inst185__I_0),
    .I_1(inst185__I_1),
    .I_2(inst185__I_2),
    .I_3(inst185__I_3),
    .O(inst185__O),
    .S(inst185__S)
  );

  wire [15:0] inst186__I_0;
  wire [15:0] inst186__I_1;
  wire [15:0] inst186__O;
  wire [0:0] inst186__S;
  MuxWrapper_2_16 inst186(
    .I_0(inst186__I_0),
    .I_1(inst186__I_1),
    .O(inst186__O),
    .S(inst186__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst187__clk;
  wire [15:0] inst187__in;
  wire [15:0] inst187__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst187(
    .clk(inst187__clk),
    .in(inst187__in),
    .out(inst187__out)
  );

  wire [1:0] inst188__O;
  wire  inst188__clk;
  wire [7:0] inst188__config_addr;
  wire [31:0] inst188__config_data;
  wire  inst188__config_en;
  wire  inst188__reset;
  ConfigRegister_2_8_32_74 inst188(
    .O(inst188__O),
    .clk(inst188__clk),
    .config_addr(inst188__config_addr),
    .config_data(inst188__config_data),
    .config_en(inst188__config_en),
    .reset(inst188__reset)
  );

  wire [0:0] inst189__O;
  wire  inst189__clk;
  wire [7:0] inst189__config_addr;
  wire [31:0] inst189__config_data;
  wire  inst189__config_en;
  wire  inst189__reset;
  ConfigRegister_1_8_32_75 inst189(
    .O(inst189__O),
    .clk(inst189__clk),
    .config_addr(inst189__config_addr),
    .config_data(inst189__config_data),
    .config_en(inst189__config_en),
    .reset(inst189__reset)
  );

  wire [0:0] inst19__O;
  wire  inst19__clk;
  wire [7:0] inst19__config_addr;
  wire [31:0] inst19__config_data;
  wire  inst19__config_en;
  wire  inst19__reset;
  ConfigRegister_1_8_32_7 inst19(
    .O(inst19__O),
    .clk(inst19__clk),
    .config_addr(inst19__config_addr),
    .config_data(inst19__config_data),
    .config_en(inst19__config_en),
    .reset(inst19__reset)
  );

  wire [15:0] inst190__I_0;
  wire [15:0] inst190__I_1;
  wire [15:0] inst190__I_2;
  wire [15:0] inst190__I_3;
  wire [15:0] inst190__O;
  wire [1:0] inst190__S;
  MuxWrapper_4_16 inst190(
    .I_0(inst190__I_0),
    .I_1(inst190__I_1),
    .I_2(inst190__I_2),
    .I_3(inst190__I_3),
    .O(inst190__O),
    .S(inst190__S)
  );

  wire [15:0] inst191__I_0;
  wire [15:0] inst191__I_1;
  wire [15:0] inst191__O;
  wire [0:0] inst191__S;
  MuxWrapper_2_16 inst191(
    .I_0(inst191__I_0),
    .I_1(inst191__I_1),
    .O(inst191__O),
    .S(inst191__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst192__clk;
  wire [15:0] inst192__in;
  wire [15:0] inst192__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst192(
    .clk(inst192__clk),
    .in(inst192__in),
    .out(inst192__out)
  );

  wire [1:0] inst193__O;
  wire  inst193__clk;
  wire [7:0] inst193__config_addr;
  wire [31:0] inst193__config_data;
  wire  inst193__config_en;
  wire  inst193__reset;
  ConfigRegister_2_8_32_76 inst193(
    .O(inst193__O),
    .clk(inst193__clk),
    .config_addr(inst193__config_addr),
    .config_data(inst193__config_data),
    .config_en(inst193__config_en),
    .reset(inst193__reset)
  );

  wire [0:0] inst194__O;
  wire  inst194__clk;
  wire [7:0] inst194__config_addr;
  wire [31:0] inst194__config_data;
  wire  inst194__config_en;
  wire  inst194__reset;
  ConfigRegister_1_8_32_77 inst194(
    .O(inst194__O),
    .clk(inst194__clk),
    .config_addr(inst194__config_addr),
    .config_data(inst194__config_data),
    .config_en(inst194__config_en),
    .reset(inst194__reset)
  );

  wire [15:0] inst195__I_0;
  wire [15:0] inst195__I_1;
  wire [15:0] inst195__I_2;
  wire [15:0] inst195__I_3;
  wire [15:0] inst195__O;
  wire [1:0] inst195__S;
  MuxWrapper_4_16 inst195(
    .I_0(inst195__I_0),
    .I_1(inst195__I_1),
    .I_2(inst195__I_2),
    .I_3(inst195__I_3),
    .O(inst195__O),
    .S(inst195__S)
  );

  wire [15:0] inst196__I_0;
  wire [15:0] inst196__I_1;
  wire [15:0] inst196__O;
  wire [0:0] inst196__S;
  MuxWrapper_2_16 inst196(
    .I_0(inst196__I_0),
    .I_1(inst196__I_1),
    .O(inst196__O),
    .S(inst196__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst197__clk;
  wire [15:0] inst197__in;
  wire [15:0] inst197__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst197(
    .clk(inst197__clk),
    .in(inst197__in),
    .out(inst197__out)
  );

  wire [1:0] inst198__O;
  wire  inst198__clk;
  wire [7:0] inst198__config_addr;
  wire [31:0] inst198__config_data;
  wire  inst198__config_en;
  wire  inst198__reset;
  ConfigRegister_2_8_32_78 inst198(
    .O(inst198__O),
    .clk(inst198__clk),
    .config_addr(inst198__config_addr),
    .config_data(inst198__config_data),
    .config_en(inst198__config_en),
    .reset(inst198__reset)
  );

  wire [0:0] inst199__O;
  wire  inst199__clk;
  wire [7:0] inst199__config_addr;
  wire [31:0] inst199__config_data;
  wire  inst199__config_en;
  wire  inst199__reset;
  ConfigRegister_1_8_32_79 inst199(
    .O(inst199__O),
    .clk(inst199__clk),
    .config_addr(inst199__config_addr),
    .config_data(inst199__config_data),
    .config_en(inst199__config_en),
    .reset(inst199__reset)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst2__clk;
  wire [0:0] inst2__in;
  wire [0:0] inst2__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst2(
    .clk(inst2__clk),
    .in(inst2__in),
    .out(inst2__out)
  );

  wire [0:0] inst20__I_0;
  wire [0:0] inst20__I_1;
  wire [0:0] inst20__I_2;
  wire [0:0] inst20__O;
  wire [1:0] inst20__S;
  MuxWrapper_3_1 inst20(
    .I_0(inst20__I_0),
    .I_1(inst20__I_1),
    .I_2(inst20__I_2),
    .O(inst20__O),
    .S(inst20__S)
  );

  wire [31:0] inst200__I_0;
  wire [31:0] inst200__I_1;
  wire [31:0] inst200__I_10;
  wire [31:0] inst200__I_11;
  wire [31:0] inst200__I_12;
  wire [31:0] inst200__I_13;
  wire [31:0] inst200__I_14;
  wire [31:0] inst200__I_15;
  wire [31:0] inst200__I_16;
  wire [31:0] inst200__I_17;
  wire [31:0] inst200__I_18;
  wire [31:0] inst200__I_19;
  wire [31:0] inst200__I_2;
  wire [31:0] inst200__I_20;
  wire [31:0] inst200__I_21;
  wire [31:0] inst200__I_22;
  wire [31:0] inst200__I_23;
  wire [31:0] inst200__I_24;
  wire [31:0] inst200__I_25;
  wire [31:0] inst200__I_26;
  wire [31:0] inst200__I_27;
  wire [31:0] inst200__I_28;
  wire [31:0] inst200__I_29;
  wire [31:0] inst200__I_3;
  wire [31:0] inst200__I_30;
  wire [31:0] inst200__I_31;
  wire [31:0] inst200__I_32;
  wire [31:0] inst200__I_33;
  wire [31:0] inst200__I_34;
  wire [31:0] inst200__I_35;
  wire [31:0] inst200__I_36;
  wire [31:0] inst200__I_37;
  wire [31:0] inst200__I_38;
  wire [31:0] inst200__I_39;
  wire [31:0] inst200__I_4;
  wire [31:0] inst200__I_40;
  wire [31:0] inst200__I_41;
  wire [31:0] inst200__I_42;
  wire [31:0] inst200__I_43;
  wire [31:0] inst200__I_44;
  wire [31:0] inst200__I_45;
  wire [31:0] inst200__I_46;
  wire [31:0] inst200__I_47;
  wire [31:0] inst200__I_48;
  wire [31:0] inst200__I_49;
  wire [31:0] inst200__I_5;
  wire [31:0] inst200__I_50;
  wire [31:0] inst200__I_51;
  wire [31:0] inst200__I_52;
  wire [31:0] inst200__I_53;
  wire [31:0] inst200__I_54;
  wire [31:0] inst200__I_55;
  wire [31:0] inst200__I_56;
  wire [31:0] inst200__I_57;
  wire [31:0] inst200__I_58;
  wire [31:0] inst200__I_59;
  wire [31:0] inst200__I_6;
  wire [31:0] inst200__I_60;
  wire [31:0] inst200__I_61;
  wire [31:0] inst200__I_62;
  wire [31:0] inst200__I_63;
  wire [31:0] inst200__I_64;
  wire [31:0] inst200__I_65;
  wire [31:0] inst200__I_66;
  wire [31:0] inst200__I_67;
  wire [31:0] inst200__I_68;
  wire [31:0] inst200__I_69;
  wire [31:0] inst200__I_7;
  wire [31:0] inst200__I_70;
  wire [31:0] inst200__I_71;
  wire [31:0] inst200__I_72;
  wire [31:0] inst200__I_73;
  wire [31:0] inst200__I_74;
  wire [31:0] inst200__I_75;
  wire [31:0] inst200__I_76;
  wire [31:0] inst200__I_77;
  wire [31:0] inst200__I_78;
  wire [31:0] inst200__I_79;
  wire [31:0] inst200__I_8;
  wire [31:0] inst200__I_9;
  wire [31:0] inst200__O;
  wire [6:0] inst200__S;
  MuxWrapper_80_32 inst200(
    .I_0(inst200__I_0),
    .I_1(inst200__I_1),
    .I_10(inst200__I_10),
    .I_11(inst200__I_11),
    .I_12(inst200__I_12),
    .I_13(inst200__I_13),
    .I_14(inst200__I_14),
    .I_15(inst200__I_15),
    .I_16(inst200__I_16),
    .I_17(inst200__I_17),
    .I_18(inst200__I_18),
    .I_19(inst200__I_19),
    .I_2(inst200__I_2),
    .I_20(inst200__I_20),
    .I_21(inst200__I_21),
    .I_22(inst200__I_22),
    .I_23(inst200__I_23),
    .I_24(inst200__I_24),
    .I_25(inst200__I_25),
    .I_26(inst200__I_26),
    .I_27(inst200__I_27),
    .I_28(inst200__I_28),
    .I_29(inst200__I_29),
    .I_3(inst200__I_3),
    .I_30(inst200__I_30),
    .I_31(inst200__I_31),
    .I_32(inst200__I_32),
    .I_33(inst200__I_33),
    .I_34(inst200__I_34),
    .I_35(inst200__I_35),
    .I_36(inst200__I_36),
    .I_37(inst200__I_37),
    .I_38(inst200__I_38),
    .I_39(inst200__I_39),
    .I_4(inst200__I_4),
    .I_40(inst200__I_40),
    .I_41(inst200__I_41),
    .I_42(inst200__I_42),
    .I_43(inst200__I_43),
    .I_44(inst200__I_44),
    .I_45(inst200__I_45),
    .I_46(inst200__I_46),
    .I_47(inst200__I_47),
    .I_48(inst200__I_48),
    .I_49(inst200__I_49),
    .I_5(inst200__I_5),
    .I_50(inst200__I_50),
    .I_51(inst200__I_51),
    .I_52(inst200__I_52),
    .I_53(inst200__I_53),
    .I_54(inst200__I_54),
    .I_55(inst200__I_55),
    .I_56(inst200__I_56),
    .I_57(inst200__I_57),
    .I_58(inst200__I_58),
    .I_59(inst200__I_59),
    .I_6(inst200__I_6),
    .I_60(inst200__I_60),
    .I_61(inst200__I_61),
    .I_62(inst200__I_62),
    .I_63(inst200__I_63),
    .I_64(inst200__I_64),
    .I_65(inst200__I_65),
    .I_66(inst200__I_66),
    .I_67(inst200__I_67),
    .I_68(inst200__I_68),
    .I_69(inst200__I_69),
    .I_7(inst200__I_7),
    .I_70(inst200__I_70),
    .I_71(inst200__I_71),
    .I_72(inst200__I_72),
    .I_73(inst200__I_73),
    .I_74(inst200__I_74),
    .I_75(inst200__I_75),
    .I_76(inst200__I_76),
    .I_77(inst200__I_77),
    .I_78(inst200__I_78),
    .I_79(inst200__I_79),
    .I_8(inst200__I_8),
    .I_9(inst200__I_9),
    .O(inst200__O),
    .S(inst200__S)
  );

  wire [1:0] inst201__I;
  wire [31:0] inst201__O;
  ZextWrapper_2_32 inst201(
    .I(inst201__I),
    .O(inst201__O)
  );

  wire [0:0] inst202__I;
  wire [31:0] inst202__O;
  ZextWrapper_1_32 inst202(
    .I(inst202__I),
    .O(inst202__O)
  );

  wire [1:0] inst203__I;
  wire [31:0] inst203__O;
  ZextWrapper_2_32 inst203(
    .I(inst203__I),
    .O(inst203__O)
  );

  wire [0:0] inst204__I;
  wire [31:0] inst204__O;
  ZextWrapper_1_32 inst204(
    .I(inst204__I),
    .O(inst204__O)
  );

  wire [1:0] inst205__I;
  wire [31:0] inst205__O;
  ZextWrapper_2_32 inst205(
    .I(inst205__I),
    .O(inst205__O)
  );

  wire [0:0] inst206__I;
  wire [31:0] inst206__O;
  ZextWrapper_1_32 inst206(
    .I(inst206__I),
    .O(inst206__O)
  );

  wire [1:0] inst207__I;
  wire [31:0] inst207__O;
  ZextWrapper_2_32 inst207(
    .I(inst207__I),
    .O(inst207__O)
  );

  wire [0:0] inst208__I;
  wire [31:0] inst208__O;
  ZextWrapper_1_32 inst208(
    .I(inst208__I),
    .O(inst208__O)
  );

  wire [1:0] inst209__I;
  wire [31:0] inst209__O;
  ZextWrapper_2_32 inst209(
    .I(inst209__I),
    .O(inst209__O)
  );

  wire [0:0] inst21__I_0;
  wire [0:0] inst21__I_1;
  wire [0:0] inst21__O;
  wire [0:0] inst21__S;
  MuxWrapper_2_1 inst21(
    .I_0(inst21__I_0),
    .I_1(inst21__I_1),
    .O(inst21__O),
    .S(inst21__S)
  );

  wire [0:0] inst210__I;
  wire [31:0] inst210__O;
  ZextWrapper_1_32 inst210(
    .I(inst210__I),
    .O(inst210__O)
  );

  wire [1:0] inst211__I;
  wire [31:0] inst211__O;
  ZextWrapper_2_32 inst211(
    .I(inst211__I),
    .O(inst211__O)
  );

  wire [0:0] inst212__I;
  wire [31:0] inst212__O;
  ZextWrapper_1_32 inst212(
    .I(inst212__I),
    .O(inst212__O)
  );

  wire [1:0] inst213__I;
  wire [31:0] inst213__O;
  ZextWrapper_2_32 inst213(
    .I(inst213__I),
    .O(inst213__O)
  );

  wire [0:0] inst214__I;
  wire [31:0] inst214__O;
  ZextWrapper_1_32 inst214(
    .I(inst214__I),
    .O(inst214__O)
  );

  wire [1:0] inst215__I;
  wire [31:0] inst215__O;
  ZextWrapper_2_32 inst215(
    .I(inst215__I),
    .O(inst215__O)
  );

  wire [0:0] inst216__I;
  wire [31:0] inst216__O;
  ZextWrapper_1_32 inst216(
    .I(inst216__I),
    .O(inst216__O)
  );

  wire [1:0] inst217__I;
  wire [31:0] inst217__O;
  ZextWrapper_2_32 inst217(
    .I(inst217__I),
    .O(inst217__O)
  );

  wire [0:0] inst218__I;
  wire [31:0] inst218__O;
  ZextWrapper_1_32 inst218(
    .I(inst218__I),
    .O(inst218__O)
  );

  wire [1:0] inst219__I;
  wire [31:0] inst219__O;
  ZextWrapper_2_32 inst219(
    .I(inst219__I),
    .O(inst219__O)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst22__clk;
  wire [0:0] inst22__in;
  wire [0:0] inst22__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst22(
    .clk(inst22__clk),
    .in(inst22__in),
    .out(inst22__out)
  );

  wire [0:0] inst220__I;
  wire [31:0] inst220__O;
  ZextWrapper_1_32 inst220(
    .I(inst220__I),
    .O(inst220__O)
  );

  wire [1:0] inst221__I;
  wire [31:0] inst221__O;
  ZextWrapper_2_32 inst221(
    .I(inst221__I),
    .O(inst221__O)
  );

  wire [0:0] inst222__I;
  wire [31:0] inst222__O;
  ZextWrapper_1_32 inst222(
    .I(inst222__I),
    .O(inst222__O)
  );

  wire [1:0] inst223__I;
  wire [31:0] inst223__O;
  ZextWrapper_2_32 inst223(
    .I(inst223__I),
    .O(inst223__O)
  );

  wire [0:0] inst224__I;
  wire [31:0] inst224__O;
  ZextWrapper_1_32 inst224(
    .I(inst224__I),
    .O(inst224__O)
  );

  wire [1:0] inst225__I;
  wire [31:0] inst225__O;
  ZextWrapper_2_32 inst225(
    .I(inst225__I),
    .O(inst225__O)
  );

  wire [0:0] inst226__I;
  wire [31:0] inst226__O;
  ZextWrapper_1_32 inst226(
    .I(inst226__I),
    .O(inst226__O)
  );

  wire [1:0] inst227__I;
  wire [31:0] inst227__O;
  ZextWrapper_2_32 inst227(
    .I(inst227__I),
    .O(inst227__O)
  );

  wire [0:0] inst228__I;
  wire [31:0] inst228__O;
  ZextWrapper_1_32 inst228(
    .I(inst228__I),
    .O(inst228__O)
  );

  wire [1:0] inst229__I;
  wire [31:0] inst229__O;
  ZextWrapper_2_32 inst229(
    .I(inst229__I),
    .O(inst229__O)
  );

  wire [1:0] inst23__O;
  wire  inst23__clk;
  wire [7:0] inst23__config_addr;
  wire [31:0] inst23__config_data;
  wire  inst23__config_en;
  wire  inst23__reset;
  ConfigRegister_2_8_32_8 inst23(
    .O(inst23__O),
    .clk(inst23__clk),
    .config_addr(inst23__config_addr),
    .config_data(inst23__config_data),
    .config_en(inst23__config_en),
    .reset(inst23__reset)
  );

  wire [0:0] inst230__I;
  wire [31:0] inst230__O;
  ZextWrapper_1_32 inst230(
    .I(inst230__I),
    .O(inst230__O)
  );

  wire [1:0] inst231__I;
  wire [31:0] inst231__O;
  ZextWrapper_2_32 inst231(
    .I(inst231__I),
    .O(inst231__O)
  );

  wire [0:0] inst232__I;
  wire [31:0] inst232__O;
  ZextWrapper_1_32 inst232(
    .I(inst232__I),
    .O(inst232__O)
  );

  wire [1:0] inst233__I;
  wire [31:0] inst233__O;
  ZextWrapper_2_32 inst233(
    .I(inst233__I),
    .O(inst233__O)
  );

  wire [0:0] inst234__I;
  wire [31:0] inst234__O;
  ZextWrapper_1_32 inst234(
    .I(inst234__I),
    .O(inst234__O)
  );

  wire [1:0] inst235__I;
  wire [31:0] inst235__O;
  ZextWrapper_2_32 inst235(
    .I(inst235__I),
    .O(inst235__O)
  );

  wire [0:0] inst236__I;
  wire [31:0] inst236__O;
  ZextWrapper_1_32 inst236(
    .I(inst236__I),
    .O(inst236__O)
  );

  wire [1:0] inst237__I;
  wire [31:0] inst237__O;
  ZextWrapper_2_32 inst237(
    .I(inst237__I),
    .O(inst237__O)
  );

  wire [0:0] inst238__I;
  wire [31:0] inst238__O;
  ZextWrapper_1_32 inst238(
    .I(inst238__I),
    .O(inst238__O)
  );

  wire [1:0] inst239__I;
  wire [31:0] inst239__O;
  ZextWrapper_2_32 inst239(
    .I(inst239__I),
    .O(inst239__O)
  );

  wire [0:0] inst24__O;
  wire  inst24__clk;
  wire [7:0] inst24__config_addr;
  wire [31:0] inst24__config_data;
  wire  inst24__config_en;
  wire  inst24__reset;
  ConfigRegister_1_8_32_9 inst24(
    .O(inst24__O),
    .clk(inst24__clk),
    .config_addr(inst24__config_addr),
    .config_data(inst24__config_data),
    .config_en(inst24__config_en),
    .reset(inst24__reset)
  );

  wire [0:0] inst240__I;
  wire [31:0] inst240__O;
  ZextWrapper_1_32 inst240(
    .I(inst240__I),
    .O(inst240__O)
  );

  wire [1:0] inst241__I;
  wire [31:0] inst241__O;
  ZextWrapper_2_32 inst241(
    .I(inst241__I),
    .O(inst241__O)
  );

  wire [0:0] inst242__I;
  wire [31:0] inst242__O;
  ZextWrapper_1_32 inst242(
    .I(inst242__I),
    .O(inst242__O)
  );

  wire [1:0] inst243__I;
  wire [31:0] inst243__O;
  ZextWrapper_2_32 inst243(
    .I(inst243__I),
    .O(inst243__O)
  );

  wire [0:0] inst244__I;
  wire [31:0] inst244__O;
  ZextWrapper_1_32 inst244(
    .I(inst244__I),
    .O(inst244__O)
  );

  wire [1:0] inst245__I;
  wire [31:0] inst245__O;
  ZextWrapper_2_32 inst245(
    .I(inst245__I),
    .O(inst245__O)
  );

  wire [0:0] inst246__I;
  wire [31:0] inst246__O;
  ZextWrapper_1_32 inst246(
    .I(inst246__I),
    .O(inst246__O)
  );

  wire [1:0] inst247__I;
  wire [31:0] inst247__O;
  ZextWrapper_2_32 inst247(
    .I(inst247__I),
    .O(inst247__O)
  );

  wire [0:0] inst248__I;
  wire [31:0] inst248__O;
  ZextWrapper_1_32 inst248(
    .I(inst248__I),
    .O(inst248__O)
  );

  wire [1:0] inst249__I;
  wire [31:0] inst249__O;
  ZextWrapper_2_32 inst249(
    .I(inst249__I),
    .O(inst249__O)
  );

  wire [15:0] inst25__I_0;
  wire [15:0] inst25__I_1;
  wire [15:0] inst25__I_2;
  wire [15:0] inst25__I_3;
  wire [15:0] inst25__O;
  wire [1:0] inst25__S;
  MuxWrapper_4_16 inst25(
    .I_0(inst25__I_0),
    .I_1(inst25__I_1),
    .I_2(inst25__I_2),
    .I_3(inst25__I_3),
    .O(inst25__O),
    .S(inst25__S)
  );

  wire [0:0] inst250__I;
  wire [31:0] inst250__O;
  ZextWrapper_1_32 inst250(
    .I(inst250__I),
    .O(inst250__O)
  );

  wire [1:0] inst251__I;
  wire [31:0] inst251__O;
  ZextWrapper_2_32 inst251(
    .I(inst251__I),
    .O(inst251__O)
  );

  wire [0:0] inst252__I;
  wire [31:0] inst252__O;
  ZextWrapper_1_32 inst252(
    .I(inst252__I),
    .O(inst252__O)
  );

  wire [1:0] inst253__I;
  wire [31:0] inst253__O;
  ZextWrapper_2_32 inst253(
    .I(inst253__I),
    .O(inst253__O)
  );

  wire [0:0] inst254__I;
  wire [31:0] inst254__O;
  ZextWrapper_1_32 inst254(
    .I(inst254__I),
    .O(inst254__O)
  );

  wire [1:0] inst255__I;
  wire [31:0] inst255__O;
  ZextWrapper_2_32 inst255(
    .I(inst255__I),
    .O(inst255__O)
  );

  wire [0:0] inst256__I;
  wire [31:0] inst256__O;
  ZextWrapper_1_32 inst256(
    .I(inst256__I),
    .O(inst256__O)
  );

  wire [1:0] inst257__I;
  wire [31:0] inst257__O;
  ZextWrapper_2_32 inst257(
    .I(inst257__I),
    .O(inst257__O)
  );

  wire [0:0] inst258__I;
  wire [31:0] inst258__O;
  ZextWrapper_1_32 inst258(
    .I(inst258__I),
    .O(inst258__O)
  );

  wire [1:0] inst259__I;
  wire [31:0] inst259__O;
  ZextWrapper_2_32 inst259(
    .I(inst259__I),
    .O(inst259__O)
  );

  wire [15:0] inst26__I_0;
  wire [15:0] inst26__I_1;
  wire [15:0] inst26__O;
  wire [0:0] inst26__S;
  MuxWrapper_2_16 inst26(
    .I_0(inst26__I_0),
    .I_1(inst26__I_1),
    .O(inst26__O),
    .S(inst26__S)
  );

  wire [0:0] inst260__I;
  wire [31:0] inst260__O;
  ZextWrapper_1_32 inst260(
    .I(inst260__I),
    .O(inst260__O)
  );

  wire [1:0] inst261__I;
  wire [31:0] inst261__O;
  ZextWrapper_2_32 inst261(
    .I(inst261__I),
    .O(inst261__O)
  );

  wire [0:0] inst262__I;
  wire [31:0] inst262__O;
  ZextWrapper_1_32 inst262(
    .I(inst262__I),
    .O(inst262__O)
  );

  wire [1:0] inst263__I;
  wire [31:0] inst263__O;
  ZextWrapper_2_32 inst263(
    .I(inst263__I),
    .O(inst263__O)
  );

  wire [0:0] inst264__I;
  wire [31:0] inst264__O;
  ZextWrapper_1_32 inst264(
    .I(inst264__I),
    .O(inst264__O)
  );

  wire [1:0] inst265__I;
  wire [31:0] inst265__O;
  ZextWrapper_2_32 inst265(
    .I(inst265__I),
    .O(inst265__O)
  );

  wire [0:0] inst266__I;
  wire [31:0] inst266__O;
  ZextWrapper_1_32 inst266(
    .I(inst266__I),
    .O(inst266__O)
  );

  wire [1:0] inst267__I;
  wire [31:0] inst267__O;
  ZextWrapper_2_32 inst267(
    .I(inst267__I),
    .O(inst267__O)
  );

  wire [0:0] inst268__I;
  wire [31:0] inst268__O;
  ZextWrapper_1_32 inst268(
    .I(inst268__I),
    .O(inst268__O)
  );

  wire [1:0] inst269__I;
  wire [31:0] inst269__O;
  ZextWrapper_2_32 inst269(
    .I(inst269__I),
    .O(inst269__O)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst27__clk;
  wire [15:0] inst27__in;
  wire [15:0] inst27__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst27(
    .clk(inst27__clk),
    .in(inst27__in),
    .out(inst27__out)
  );

  wire [0:0] inst270__I;
  wire [31:0] inst270__O;
  ZextWrapper_1_32 inst270(
    .I(inst270__I),
    .O(inst270__O)
  );

  wire [1:0] inst271__I;
  wire [31:0] inst271__O;
  ZextWrapper_2_32 inst271(
    .I(inst271__I),
    .O(inst271__O)
  );

  wire [0:0] inst272__I;
  wire [31:0] inst272__O;
  ZextWrapper_1_32 inst272(
    .I(inst272__I),
    .O(inst272__O)
  );

  wire [1:0] inst273__I;
  wire [31:0] inst273__O;
  ZextWrapper_2_32 inst273(
    .I(inst273__I),
    .O(inst273__O)
  );

  wire [0:0] inst274__I;
  wire [31:0] inst274__O;
  ZextWrapper_1_32 inst274(
    .I(inst274__I),
    .O(inst274__O)
  );

  wire [1:0] inst275__I;
  wire [31:0] inst275__O;
  ZextWrapper_2_32 inst275(
    .I(inst275__I),
    .O(inst275__O)
  );

  wire [0:0] inst276__I;
  wire [31:0] inst276__O;
  ZextWrapper_1_32 inst276(
    .I(inst276__I),
    .O(inst276__O)
  );

  wire [1:0] inst277__I;
  wire [31:0] inst277__O;
  ZextWrapper_2_32 inst277(
    .I(inst277__I),
    .O(inst277__O)
  );

  wire [0:0] inst278__I;
  wire [31:0] inst278__O;
  ZextWrapper_1_32 inst278(
    .I(inst278__I),
    .O(inst278__O)
  );

  wire [1:0] inst279__I;
  wire [31:0] inst279__O;
  ZextWrapper_2_32 inst279(
    .I(inst279__I),
    .O(inst279__O)
  );

  wire [1:0] inst28__O;
  wire  inst28__clk;
  wire [7:0] inst28__config_addr;
  wire [31:0] inst28__config_data;
  wire  inst28__config_en;
  wire  inst28__reset;
  ConfigRegister_2_8_32_10 inst28(
    .O(inst28__O),
    .clk(inst28__clk),
    .config_addr(inst28__config_addr),
    .config_data(inst28__config_data),
    .config_en(inst28__config_en),
    .reset(inst28__reset)
  );

  wire [0:0] inst280__I;
  wire [31:0] inst280__O;
  ZextWrapper_1_32 inst280(
    .I(inst280__I),
    .O(inst280__O)
  );

  wire [0:0] inst29__O;
  wire  inst29__clk;
  wire [7:0] inst29__config_addr;
  wire [31:0] inst29__config_data;
  wire  inst29__config_en;
  wire  inst29__reset;
  ConfigRegister_1_8_32_11 inst29(
    .O(inst29__O),
    .clk(inst29__clk),
    .config_addr(inst29__config_addr),
    .config_data(inst29__config_data),
    .config_en(inst29__config_en),
    .reset(inst29__reset)
  );

  wire [1:0] inst3__O;
  wire  inst3__clk;
  wire [7:0] inst3__config_addr;
  wire [31:0] inst3__config_data;
  wire  inst3__config_en;
  wire  inst3__reset;
  ConfigRegister_2_8_32_0 inst3(
    .O(inst3__O),
    .clk(inst3__clk),
    .config_addr(inst3__config_addr),
    .config_data(inst3__config_data),
    .config_en(inst3__config_en),
    .reset(inst3__reset)
  );

  wire [15:0] inst30__I_0;
  wire [15:0] inst30__I_1;
  wire [15:0] inst30__I_2;
  wire [15:0] inst30__I_3;
  wire [15:0] inst30__O;
  wire [1:0] inst30__S;
  MuxWrapper_4_16 inst30(
    .I_0(inst30__I_0),
    .I_1(inst30__I_1),
    .I_2(inst30__I_2),
    .I_3(inst30__I_3),
    .O(inst30__O),
    .S(inst30__S)
  );

  wire [15:0] inst31__I_0;
  wire [15:0] inst31__I_1;
  wire [15:0] inst31__O;
  wire [0:0] inst31__S;
  MuxWrapper_2_16 inst31(
    .I_0(inst31__I_0),
    .I_1(inst31__I_1),
    .O(inst31__O),
    .S(inst31__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst32__clk;
  wire [15:0] inst32__in;
  wire [15:0] inst32__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst32(
    .clk(inst32__clk),
    .in(inst32__in),
    .out(inst32__out)
  );

  wire [1:0] inst33__O;
  wire  inst33__clk;
  wire [7:0] inst33__config_addr;
  wire [31:0] inst33__config_data;
  wire  inst33__config_en;
  wire  inst33__reset;
  ConfigRegister_2_8_32_12 inst33(
    .O(inst33__O),
    .clk(inst33__clk),
    .config_addr(inst33__config_addr),
    .config_data(inst33__config_data),
    .config_en(inst33__config_en),
    .reset(inst33__reset)
  );

  wire [0:0] inst34__O;
  wire  inst34__clk;
  wire [7:0] inst34__config_addr;
  wire [31:0] inst34__config_data;
  wire  inst34__config_en;
  wire  inst34__reset;
  ConfigRegister_1_8_32_13 inst34(
    .O(inst34__O),
    .clk(inst34__clk),
    .config_addr(inst34__config_addr),
    .config_data(inst34__config_data),
    .config_en(inst34__config_en),
    .reset(inst34__reset)
  );

  wire [15:0] inst35__I_0;
  wire [15:0] inst35__I_1;
  wire [15:0] inst35__I_2;
  wire [15:0] inst35__I_3;
  wire [15:0] inst35__O;
  wire [1:0] inst35__S;
  MuxWrapper_4_16 inst35(
    .I_0(inst35__I_0),
    .I_1(inst35__I_1),
    .I_2(inst35__I_2),
    .I_3(inst35__I_3),
    .O(inst35__O),
    .S(inst35__S)
  );

  wire [15:0] inst36__I_0;
  wire [15:0] inst36__I_1;
  wire [15:0] inst36__O;
  wire [0:0] inst36__S;
  MuxWrapper_2_16 inst36(
    .I_0(inst36__I_0),
    .I_1(inst36__I_1),
    .O(inst36__O),
    .S(inst36__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst37__clk;
  wire [15:0] inst37__in;
  wire [15:0] inst37__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst37(
    .clk(inst37__clk),
    .in(inst37__in),
    .out(inst37__out)
  );

  wire [1:0] inst38__O;
  wire  inst38__clk;
  wire [7:0] inst38__config_addr;
  wire [31:0] inst38__config_data;
  wire  inst38__config_en;
  wire  inst38__reset;
  ConfigRegister_2_8_32_14 inst38(
    .O(inst38__O),
    .clk(inst38__clk),
    .config_addr(inst38__config_addr),
    .config_data(inst38__config_data),
    .config_en(inst38__config_en),
    .reset(inst38__reset)
  );

  wire [0:0] inst39__O;
  wire  inst39__clk;
  wire [7:0] inst39__config_addr;
  wire [31:0] inst39__config_data;
  wire  inst39__config_en;
  wire  inst39__reset;
  ConfigRegister_1_8_32_15 inst39(
    .O(inst39__O),
    .clk(inst39__clk),
    .config_addr(inst39__config_addr),
    .config_data(inst39__config_data),
    .config_en(inst39__config_en),
    .reset(inst39__reset)
  );

  wire [0:0] inst4__O;
  wire  inst4__clk;
  wire [7:0] inst4__config_addr;
  wire [31:0] inst4__config_data;
  wire  inst4__config_en;
  wire  inst4__reset;
  ConfigRegister_1_8_32_1 inst4(
    .O(inst4__O),
    .clk(inst4__clk),
    .config_addr(inst4__config_addr),
    .config_data(inst4__config_data),
    .config_en(inst4__config_en),
    .reset(inst4__reset)
  );

  wire [15:0] inst40__I_0;
  wire [15:0] inst40__I_1;
  wire [15:0] inst40__I_2;
  wire [15:0] inst40__I_3;
  wire [15:0] inst40__O;
  wire [1:0] inst40__S;
  MuxWrapper_4_16 inst40(
    .I_0(inst40__I_0),
    .I_1(inst40__I_1),
    .I_2(inst40__I_2),
    .I_3(inst40__I_3),
    .O(inst40__O),
    .S(inst40__S)
  );

  wire [15:0] inst41__I_0;
  wire [15:0] inst41__I_1;
  wire [15:0] inst41__O;
  wire [0:0] inst41__S;
  MuxWrapper_2_16 inst41(
    .I_0(inst41__I_0),
    .I_1(inst41__I_1),
    .O(inst41__O),
    .S(inst41__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst42__clk;
  wire [15:0] inst42__in;
  wire [15:0] inst42__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst42(
    .clk(inst42__clk),
    .in(inst42__in),
    .out(inst42__out)
  );

  wire [1:0] inst43__O;
  wire  inst43__clk;
  wire [7:0] inst43__config_addr;
  wire [31:0] inst43__config_data;
  wire  inst43__config_en;
  wire  inst43__reset;
  ConfigRegister_2_8_32_16 inst43(
    .O(inst43__O),
    .clk(inst43__clk),
    .config_addr(inst43__config_addr),
    .config_data(inst43__config_data),
    .config_en(inst43__config_en),
    .reset(inst43__reset)
  );

  wire [0:0] inst44__O;
  wire  inst44__clk;
  wire [7:0] inst44__config_addr;
  wire [31:0] inst44__config_data;
  wire  inst44__config_en;
  wire  inst44__reset;
  ConfigRegister_1_8_32_17 inst44(
    .O(inst44__O),
    .clk(inst44__clk),
    .config_addr(inst44__config_addr),
    .config_data(inst44__config_data),
    .config_en(inst44__config_en),
    .reset(inst44__reset)
  );

  wire [15:0] inst45__I_0;
  wire [15:0] inst45__I_1;
  wire [15:0] inst45__I_2;
  wire [15:0] inst45__I_3;
  wire [15:0] inst45__O;
  wire [1:0] inst45__S;
  MuxWrapper_4_16 inst45(
    .I_0(inst45__I_0),
    .I_1(inst45__I_1),
    .I_2(inst45__I_2),
    .I_3(inst45__I_3),
    .O(inst45__O),
    .S(inst45__S)
  );

  wire [15:0] inst46__I_0;
  wire [15:0] inst46__I_1;
  wire [15:0] inst46__O;
  wire [0:0] inst46__S;
  MuxWrapper_2_16 inst46(
    .I_0(inst46__I_0),
    .I_1(inst46__I_1),
    .O(inst46__O),
    .S(inst46__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst47__clk;
  wire [15:0] inst47__in;
  wire [15:0] inst47__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst47(
    .clk(inst47__clk),
    .in(inst47__in),
    .out(inst47__out)
  );

  wire [1:0] inst48__O;
  wire  inst48__clk;
  wire [7:0] inst48__config_addr;
  wire [31:0] inst48__config_data;
  wire  inst48__config_en;
  wire  inst48__reset;
  ConfigRegister_2_8_32_18 inst48(
    .O(inst48__O),
    .clk(inst48__clk),
    .config_addr(inst48__config_addr),
    .config_data(inst48__config_data),
    .config_en(inst48__config_en),
    .reset(inst48__reset)
  );

  wire [0:0] inst49__O;
  wire  inst49__clk;
  wire [7:0] inst49__config_addr;
  wire [31:0] inst49__config_data;
  wire  inst49__config_en;
  wire  inst49__reset;
  ConfigRegister_1_8_32_19 inst49(
    .O(inst49__O),
    .clk(inst49__clk),
    .config_addr(inst49__config_addr),
    .config_data(inst49__config_data),
    .config_en(inst49__config_en),
    .reset(inst49__reset)
  );

  wire [0:0] inst5__I_0;
  wire [0:0] inst5__I_1;
  wire [0:0] inst5__I_2;
  wire [0:0] inst5__O;
  wire [1:0] inst5__S;
  MuxWrapper_3_1 inst5(
    .I_0(inst5__I_0),
    .I_1(inst5__I_1),
    .I_2(inst5__I_2),
    .O(inst5__O),
    .S(inst5__S)
  );

  wire [0:0] inst50__I_0;
  wire [0:0] inst50__I_1;
  wire [0:0] inst50__I_2;
  wire [0:0] inst50__O;
  wire [1:0] inst50__S;
  MuxWrapper_3_1 inst50(
    .I_0(inst50__I_0),
    .I_1(inst50__I_1),
    .I_2(inst50__I_2),
    .O(inst50__O),
    .S(inst50__S)
  );

  wire [0:0] inst51__I_0;
  wire [0:0] inst51__I_1;
  wire [0:0] inst51__O;
  wire [0:0] inst51__S;
  MuxWrapper_2_1 inst51(
    .I_0(inst51__I_0),
    .I_1(inst51__I_1),
    .O(inst51__O),
    .S(inst51__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst52__clk;
  wire [0:0] inst52__in;
  wire [0:0] inst52__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst52(
    .clk(inst52__clk),
    .in(inst52__in),
    .out(inst52__out)
  );

  wire [1:0] inst53__O;
  wire  inst53__clk;
  wire [7:0] inst53__config_addr;
  wire [31:0] inst53__config_data;
  wire  inst53__config_en;
  wire  inst53__reset;
  ConfigRegister_2_8_32_20 inst53(
    .O(inst53__O),
    .clk(inst53__clk),
    .config_addr(inst53__config_addr),
    .config_data(inst53__config_data),
    .config_en(inst53__config_en),
    .reset(inst53__reset)
  );

  wire [0:0] inst54__O;
  wire  inst54__clk;
  wire [7:0] inst54__config_addr;
  wire [31:0] inst54__config_data;
  wire  inst54__config_en;
  wire  inst54__reset;
  ConfigRegister_1_8_32_21 inst54(
    .O(inst54__O),
    .clk(inst54__clk),
    .config_addr(inst54__config_addr),
    .config_data(inst54__config_data),
    .config_en(inst54__config_en),
    .reset(inst54__reset)
  );

  wire [0:0] inst55__I_0;
  wire [0:0] inst55__I_1;
  wire [0:0] inst55__I_2;
  wire [0:0] inst55__O;
  wire [1:0] inst55__S;
  MuxWrapper_3_1 inst55(
    .I_0(inst55__I_0),
    .I_1(inst55__I_1),
    .I_2(inst55__I_2),
    .O(inst55__O),
    .S(inst55__S)
  );

  wire [0:0] inst56__I_0;
  wire [0:0] inst56__I_1;
  wire [0:0] inst56__O;
  wire [0:0] inst56__S;
  MuxWrapper_2_1 inst56(
    .I_0(inst56__I_0),
    .I_1(inst56__I_1),
    .O(inst56__O),
    .S(inst56__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst57__clk;
  wire [0:0] inst57__in;
  wire [0:0] inst57__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst57(
    .clk(inst57__clk),
    .in(inst57__in),
    .out(inst57__out)
  );

  wire [1:0] inst58__O;
  wire  inst58__clk;
  wire [7:0] inst58__config_addr;
  wire [31:0] inst58__config_data;
  wire  inst58__config_en;
  wire  inst58__reset;
  ConfigRegister_2_8_32_22 inst58(
    .O(inst58__O),
    .clk(inst58__clk),
    .config_addr(inst58__config_addr),
    .config_data(inst58__config_data),
    .config_en(inst58__config_en),
    .reset(inst58__reset)
  );

  wire [0:0] inst59__O;
  wire  inst59__clk;
  wire [7:0] inst59__config_addr;
  wire [31:0] inst59__config_data;
  wire  inst59__config_en;
  wire  inst59__reset;
  ConfigRegister_1_8_32_23 inst59(
    .O(inst59__O),
    .clk(inst59__clk),
    .config_addr(inst59__config_addr),
    .config_data(inst59__config_data),
    .config_en(inst59__config_en),
    .reset(inst59__reset)
  );

  wire [0:0] inst6__I_0;
  wire [0:0] inst6__I_1;
  wire [0:0] inst6__O;
  wire [0:0] inst6__S;
  MuxWrapper_2_1 inst6(
    .I_0(inst6__I_0),
    .I_1(inst6__I_1),
    .O(inst6__O),
    .S(inst6__S)
  );

  wire [0:0] inst60__I_0;
  wire [0:0] inst60__I_1;
  wire [0:0] inst60__I_2;
  wire [0:0] inst60__O;
  wire [1:0] inst60__S;
  MuxWrapper_3_1 inst60(
    .I_0(inst60__I_0),
    .I_1(inst60__I_1),
    .I_2(inst60__I_2),
    .O(inst60__O),
    .S(inst60__S)
  );

  wire [0:0] inst61__I_0;
  wire [0:0] inst61__I_1;
  wire [0:0] inst61__O;
  wire [0:0] inst61__S;
  MuxWrapper_2_1 inst61(
    .I_0(inst61__I_0),
    .I_1(inst61__I_1),
    .O(inst61__O),
    .S(inst61__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst62__clk;
  wire [0:0] inst62__in;
  wire [0:0] inst62__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst62(
    .clk(inst62__clk),
    .in(inst62__in),
    .out(inst62__out)
  );

  wire [1:0] inst63__O;
  wire  inst63__clk;
  wire [7:0] inst63__config_addr;
  wire [31:0] inst63__config_data;
  wire  inst63__config_en;
  wire  inst63__reset;
  ConfigRegister_2_8_32_24 inst63(
    .O(inst63__O),
    .clk(inst63__clk),
    .config_addr(inst63__config_addr),
    .config_data(inst63__config_data),
    .config_en(inst63__config_en),
    .reset(inst63__reset)
  );

  wire [0:0] inst64__O;
  wire  inst64__clk;
  wire [7:0] inst64__config_addr;
  wire [31:0] inst64__config_data;
  wire  inst64__config_en;
  wire  inst64__reset;
  ConfigRegister_1_8_32_25 inst64(
    .O(inst64__O),
    .clk(inst64__clk),
    .config_addr(inst64__config_addr),
    .config_data(inst64__config_data),
    .config_en(inst64__config_en),
    .reset(inst64__reset)
  );

  wire [0:0] inst65__I_0;
  wire [0:0] inst65__I_1;
  wire [0:0] inst65__I_2;
  wire [0:0] inst65__O;
  wire [1:0] inst65__S;
  MuxWrapper_3_1 inst65(
    .I_0(inst65__I_0),
    .I_1(inst65__I_1),
    .I_2(inst65__I_2),
    .O(inst65__O),
    .S(inst65__S)
  );

  wire [0:0] inst66__I_0;
  wire [0:0] inst66__I_1;
  wire [0:0] inst66__O;
  wire [0:0] inst66__S;
  MuxWrapper_2_1 inst66(
    .I_0(inst66__I_0),
    .I_1(inst66__I_1),
    .O(inst66__O),
    .S(inst66__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst67__clk;
  wire [0:0] inst67__in;
  wire [0:0] inst67__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst67(
    .clk(inst67__clk),
    .in(inst67__in),
    .out(inst67__out)
  );

  wire [1:0] inst68__O;
  wire  inst68__clk;
  wire [7:0] inst68__config_addr;
  wire [31:0] inst68__config_data;
  wire  inst68__config_en;
  wire  inst68__reset;
  ConfigRegister_2_8_32_26 inst68(
    .O(inst68__O),
    .clk(inst68__clk),
    .config_addr(inst68__config_addr),
    .config_data(inst68__config_data),
    .config_en(inst68__config_en),
    .reset(inst68__reset)
  );

  wire [0:0] inst69__O;
  wire  inst69__clk;
  wire [7:0] inst69__config_addr;
  wire [31:0] inst69__config_data;
  wire  inst69__config_en;
  wire  inst69__reset;
  ConfigRegister_1_8_32_27 inst69(
    .O(inst69__O),
    .clk(inst69__clk),
    .config_addr(inst69__config_addr),
    .config_data(inst69__config_data),
    .config_en(inst69__config_en),
    .reset(inst69__reset)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst7__clk;
  wire [0:0] inst7__in;
  wire [0:0] inst7__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst7(
    .clk(inst7__clk),
    .in(inst7__in),
    .out(inst7__out)
  );

  wire [0:0] inst70__I_0;
  wire [0:0] inst70__I_1;
  wire [0:0] inst70__I_2;
  wire [0:0] inst70__O;
  wire [1:0] inst70__S;
  MuxWrapper_3_1 inst70(
    .I_0(inst70__I_0),
    .I_1(inst70__I_1),
    .I_2(inst70__I_2),
    .O(inst70__O),
    .S(inst70__S)
  );

  wire [0:0] inst71__I_0;
  wire [0:0] inst71__I_1;
  wire [0:0] inst71__O;
  wire [0:0] inst71__S;
  MuxWrapper_2_1 inst71(
    .I_0(inst71__I_0),
    .I_1(inst71__I_1),
    .O(inst71__O),
    .S(inst71__S)
  );

  // Instancing generated Module: coreir.reg(width:1)
  wire  inst72__clk;
  wire [0:0] inst72__in;
  wire [0:0] inst72__out;
  coreir_reg #(.clk_posedge(1),.init(1'h0),.width(1)) inst72(
    .clk(inst72__clk),
    .in(inst72__in),
    .out(inst72__out)
  );

  wire [1:0] inst73__O;
  wire  inst73__clk;
  wire [7:0] inst73__config_addr;
  wire [31:0] inst73__config_data;
  wire  inst73__config_en;
  wire  inst73__reset;
  ConfigRegister_2_8_32_28 inst73(
    .O(inst73__O),
    .clk(inst73__clk),
    .config_addr(inst73__config_addr),
    .config_data(inst73__config_data),
    .config_en(inst73__config_en),
    .reset(inst73__reset)
  );

  wire [0:0] inst74__O;
  wire  inst74__clk;
  wire [7:0] inst74__config_addr;
  wire [31:0] inst74__config_data;
  wire  inst74__config_en;
  wire  inst74__reset;
  ConfigRegister_1_8_32_29 inst74(
    .O(inst74__O),
    .clk(inst74__clk),
    .config_addr(inst74__config_addr),
    .config_data(inst74__config_data),
    .config_en(inst74__config_en),
    .reset(inst74__reset)
  );

  wire [15:0] inst75__I_0;
  wire [15:0] inst75__I_1;
  wire [15:0] inst75__I_2;
  wire [15:0] inst75__I_3;
  wire [15:0] inst75__O;
  wire [1:0] inst75__S;
  MuxWrapper_4_16 inst75(
    .I_0(inst75__I_0),
    .I_1(inst75__I_1),
    .I_2(inst75__I_2),
    .I_3(inst75__I_3),
    .O(inst75__O),
    .S(inst75__S)
  );

  wire [15:0] inst76__I_0;
  wire [15:0] inst76__I_1;
  wire [15:0] inst76__O;
  wire [0:0] inst76__S;
  MuxWrapper_2_16 inst76(
    .I_0(inst76__I_0),
    .I_1(inst76__I_1),
    .O(inst76__O),
    .S(inst76__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst77__clk;
  wire [15:0] inst77__in;
  wire [15:0] inst77__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst77(
    .clk(inst77__clk),
    .in(inst77__in),
    .out(inst77__out)
  );

  wire [1:0] inst78__O;
  wire  inst78__clk;
  wire [7:0] inst78__config_addr;
  wire [31:0] inst78__config_data;
  wire  inst78__config_en;
  wire  inst78__reset;
  ConfigRegister_2_8_32_30 inst78(
    .O(inst78__O),
    .clk(inst78__clk),
    .config_addr(inst78__config_addr),
    .config_data(inst78__config_data),
    .config_en(inst78__config_en),
    .reset(inst78__reset)
  );

  wire [0:0] inst79__O;
  wire  inst79__clk;
  wire [7:0] inst79__config_addr;
  wire [31:0] inst79__config_data;
  wire  inst79__config_en;
  wire  inst79__reset;
  ConfigRegister_1_8_32_31 inst79(
    .O(inst79__O),
    .clk(inst79__clk),
    .config_addr(inst79__config_addr),
    .config_data(inst79__config_data),
    .config_en(inst79__config_en),
    .reset(inst79__reset)
  );

  wire [1:0] inst8__O;
  wire  inst8__clk;
  wire [7:0] inst8__config_addr;
  wire [31:0] inst8__config_data;
  wire  inst8__config_en;
  wire  inst8__reset;
  ConfigRegister_2_8_32_2 inst8(
    .O(inst8__O),
    .clk(inst8__clk),
    .config_addr(inst8__config_addr),
    .config_data(inst8__config_data),
    .config_en(inst8__config_en),
    .reset(inst8__reset)
  );

  wire [15:0] inst80__I_0;
  wire [15:0] inst80__I_1;
  wire [15:0] inst80__I_2;
  wire [15:0] inst80__I_3;
  wire [15:0] inst80__O;
  wire [1:0] inst80__S;
  MuxWrapper_4_16 inst80(
    .I_0(inst80__I_0),
    .I_1(inst80__I_1),
    .I_2(inst80__I_2),
    .I_3(inst80__I_3),
    .O(inst80__O),
    .S(inst80__S)
  );

  wire [15:0] inst81__I_0;
  wire [15:0] inst81__I_1;
  wire [15:0] inst81__O;
  wire [0:0] inst81__S;
  MuxWrapper_2_16 inst81(
    .I_0(inst81__I_0),
    .I_1(inst81__I_1),
    .O(inst81__O),
    .S(inst81__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst82__clk;
  wire [15:0] inst82__in;
  wire [15:0] inst82__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst82(
    .clk(inst82__clk),
    .in(inst82__in),
    .out(inst82__out)
  );

  wire [1:0] inst83__O;
  wire  inst83__clk;
  wire [7:0] inst83__config_addr;
  wire [31:0] inst83__config_data;
  wire  inst83__config_en;
  wire  inst83__reset;
  ConfigRegister_2_8_32_32 inst83(
    .O(inst83__O),
    .clk(inst83__clk),
    .config_addr(inst83__config_addr),
    .config_data(inst83__config_data),
    .config_en(inst83__config_en),
    .reset(inst83__reset)
  );

  wire [0:0] inst84__O;
  wire  inst84__clk;
  wire [7:0] inst84__config_addr;
  wire [31:0] inst84__config_data;
  wire  inst84__config_en;
  wire  inst84__reset;
  ConfigRegister_1_8_32_33 inst84(
    .O(inst84__O),
    .clk(inst84__clk),
    .config_addr(inst84__config_addr),
    .config_data(inst84__config_data),
    .config_en(inst84__config_en),
    .reset(inst84__reset)
  );

  wire [15:0] inst85__I_0;
  wire [15:0] inst85__I_1;
  wire [15:0] inst85__I_2;
  wire [15:0] inst85__I_3;
  wire [15:0] inst85__O;
  wire [1:0] inst85__S;
  MuxWrapper_4_16 inst85(
    .I_0(inst85__I_0),
    .I_1(inst85__I_1),
    .I_2(inst85__I_2),
    .I_3(inst85__I_3),
    .O(inst85__O),
    .S(inst85__S)
  );

  wire [15:0] inst86__I_0;
  wire [15:0] inst86__I_1;
  wire [15:0] inst86__O;
  wire [0:0] inst86__S;
  MuxWrapper_2_16 inst86(
    .I_0(inst86__I_0),
    .I_1(inst86__I_1),
    .O(inst86__O),
    .S(inst86__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst87__clk;
  wire [15:0] inst87__in;
  wire [15:0] inst87__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst87(
    .clk(inst87__clk),
    .in(inst87__in),
    .out(inst87__out)
  );

  wire [1:0] inst88__O;
  wire  inst88__clk;
  wire [7:0] inst88__config_addr;
  wire [31:0] inst88__config_data;
  wire  inst88__config_en;
  wire  inst88__reset;
  ConfigRegister_2_8_32_34 inst88(
    .O(inst88__O),
    .clk(inst88__clk),
    .config_addr(inst88__config_addr),
    .config_data(inst88__config_data),
    .config_en(inst88__config_en),
    .reset(inst88__reset)
  );

  wire [0:0] inst89__O;
  wire  inst89__clk;
  wire [7:0] inst89__config_addr;
  wire [31:0] inst89__config_data;
  wire  inst89__config_en;
  wire  inst89__reset;
  ConfigRegister_1_8_32_35 inst89(
    .O(inst89__O),
    .clk(inst89__clk),
    .config_addr(inst89__config_addr),
    .config_data(inst89__config_data),
    .config_en(inst89__config_en),
    .reset(inst89__reset)
  );

  wire [0:0] inst9__O;
  wire  inst9__clk;
  wire [7:0] inst9__config_addr;
  wire [31:0] inst9__config_data;
  wire  inst9__config_en;
  wire  inst9__reset;
  ConfigRegister_1_8_32_3 inst9(
    .O(inst9__O),
    .clk(inst9__clk),
    .config_addr(inst9__config_addr),
    .config_data(inst9__config_data),
    .config_en(inst9__config_en),
    .reset(inst9__reset)
  );

  wire [15:0] inst90__I_0;
  wire [15:0] inst90__I_1;
  wire [15:0] inst90__I_2;
  wire [15:0] inst90__I_3;
  wire [15:0] inst90__O;
  wire [1:0] inst90__S;
  MuxWrapper_4_16 inst90(
    .I_0(inst90__I_0),
    .I_1(inst90__I_1),
    .I_2(inst90__I_2),
    .I_3(inst90__I_3),
    .O(inst90__O),
    .S(inst90__S)
  );

  wire [15:0] inst91__I_0;
  wire [15:0] inst91__I_1;
  wire [15:0] inst91__O;
  wire [0:0] inst91__S;
  MuxWrapper_2_16 inst91(
    .I_0(inst91__I_0),
    .I_1(inst91__I_1),
    .O(inst91__O),
    .S(inst91__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst92__clk;
  wire [15:0] inst92__in;
  wire [15:0] inst92__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst92(
    .clk(inst92__clk),
    .in(inst92__in),
    .out(inst92__out)
  );

  wire [1:0] inst93__O;
  wire  inst93__clk;
  wire [7:0] inst93__config_addr;
  wire [31:0] inst93__config_data;
  wire  inst93__config_en;
  wire  inst93__reset;
  ConfigRegister_2_8_32_36 inst93(
    .O(inst93__O),
    .clk(inst93__clk),
    .config_addr(inst93__config_addr),
    .config_data(inst93__config_data),
    .config_en(inst93__config_en),
    .reset(inst93__reset)
  );

  wire [0:0] inst94__O;
  wire  inst94__clk;
  wire [7:0] inst94__config_addr;
  wire [31:0] inst94__config_data;
  wire  inst94__config_en;
  wire  inst94__reset;
  ConfigRegister_1_8_32_37 inst94(
    .O(inst94__O),
    .clk(inst94__clk),
    .config_addr(inst94__config_addr),
    .config_data(inst94__config_data),
    .config_en(inst94__config_en),
    .reset(inst94__reset)
  );

  wire [15:0] inst95__I_0;
  wire [15:0] inst95__I_1;
  wire [15:0] inst95__I_2;
  wire [15:0] inst95__I_3;
  wire [15:0] inst95__O;
  wire [1:0] inst95__S;
  MuxWrapper_4_16 inst95(
    .I_0(inst95__I_0),
    .I_1(inst95__I_1),
    .I_2(inst95__I_2),
    .I_3(inst95__I_3),
    .O(inst95__O),
    .S(inst95__S)
  );

  wire [15:0] inst96__I_0;
  wire [15:0] inst96__I_1;
  wire [15:0] inst96__O;
  wire [0:0] inst96__S;
  MuxWrapper_2_16 inst96(
    .I_0(inst96__I_0),
    .I_1(inst96__I_1),
    .O(inst96__O),
    .S(inst96__S)
  );

  // Instancing generated Module: coreir.reg(width:16)
  wire  inst97__clk;
  wire [15:0] inst97__in;
  wire [15:0] inst97__out;
  coreir_reg #(.clk_posedge(1),.init(16'h0000),.width(16)) inst97(
    .clk(inst97__clk),
    .in(inst97__in),
    .out(inst97__out)
  );

  wire [1:0] inst98__O;
  wire  inst98__clk;
  wire [7:0] inst98__config_addr;
  wire [31:0] inst98__config_data;
  wire  inst98__config_en;
  wire  inst98__reset;
  ConfigRegister_2_8_32_38 inst98(
    .O(inst98__O),
    .clk(inst98__clk),
    .config_addr(inst98__config_addr),
    .config_data(inst98__config_data),
    .config_en(inst98__config_en),
    .reset(inst98__reset)
  );

  wire [0:0] inst99__O;
  wire  inst99__clk;
  wire [7:0] inst99__config_addr;
  wire [31:0] inst99__config_data;
  wire  inst99__config_en;
  wire  inst99__reset;
  ConfigRegister_1_8_32_39 inst99(
    .O(inst99__O),
    .clk(inst99__clk),
    .config_addr(inst99__config_addr),
    .config_data(inst99__config_data),
    .config_en(inst99__config_en),
    .reset(inst99__reset)
  );

  assign inst0__I_0[0:0] = west_I_layer1_0[0:0];

  assign inst0__I_1[0:0] = south_I_layer1_0[0:0];

  assign inst0__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst1__I_0[0:0] = inst0__O[0:0];

  assign inst2__in[0:0] = inst0__O[0:0];

  assign inst0__S[1:0] = inst3__O[1:0];

  assign inst1__I_1[0:0] = inst2__out[0:0];

  assign north_O_layer1_0[0:0] = inst1__O[0:0];

  assign inst1__S[0:0] = inst4__O[0:0];

  assign inst10__I_0[0:0] = west_I_layer1_2[0:0];

  assign inst10__I_1[0:0] = south_I_layer1_2[0:0];

  assign inst10__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst11__I_0[0:0] = inst10__O[0:0];

  assign inst12__in[0:0] = inst10__O[0:0];

  assign inst10__S[1:0] = inst13__O[1:0];

  assign inst100__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst100__I_1[0:0] = west_I_layer1_0[0:0];

  assign inst100__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst101__I_0[0:0] = inst100__O[0:0];

  assign inst102__in[0:0] = inst100__O[0:0];

  assign inst100__S[1:0] = inst103__O[1:0];

  assign inst101__I_1[0:0] = inst102__out[0:0];

  assign south_O_layer1_0[0:0] = inst101__O[0:0];

  assign inst101__S[0:0] = inst104__O[0:0];

  assign inst102__clk = clk;

  assign inst241__I[1:0] = inst103__O[1:0];

  assign inst103__clk = clk;

  assign inst103__config_addr[7:0] = config_config_addr[7:0];

  assign inst103__config_data[31:0] = config_config_data[31:0];

  assign inst103__config_en = config_write[0];

  assign inst103__reset = reset;

  assign inst242__I[0:0] = inst104__O[0:0];

  assign inst104__clk = clk;

  assign inst104__config_addr[7:0] = config_config_addr[7:0];

  assign inst104__config_data[31:0] = config_config_data[31:0];

  assign inst104__config_en = config_write[0];

  assign inst104__reset = reset;

  assign inst105__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst105__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst105__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst106__I_0[0:0] = inst105__O[0:0];

  assign inst107__in[0:0] = inst105__O[0:0];

  assign inst105__S[1:0] = inst108__O[1:0];

  assign inst106__I_1[0:0] = inst107__out[0:0];

  assign south_O_layer1_1[0:0] = inst106__O[0:0];

  assign inst106__S[0:0] = inst109__O[0:0];

  assign inst107__clk = clk;

  assign inst243__I[1:0] = inst108__O[1:0];

  assign inst108__clk = clk;

  assign inst108__config_addr[7:0] = config_config_addr[7:0];

  assign inst108__config_data[31:0] = config_config_data[31:0];

  assign inst108__config_en = config_write[0];

  assign inst108__reset = reset;

  assign inst244__I[0:0] = inst109__O[0:0];

  assign inst109__clk = clk;

  assign inst109__config_addr[7:0] = config_config_addr[7:0];

  assign inst109__config_data[31:0] = config_config_data[31:0];

  assign inst109__config_en = config_write[0];

  assign inst109__reset = reset;

  assign inst11__I_1[0:0] = inst12__out[0:0];

  assign north_O_layer1_2[0:0] = inst11__O[0:0];

  assign inst11__S[0:0] = inst14__O[0:0];

  assign inst110__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst110__I_1[0:0] = west_I_layer1_2[0:0];

  assign inst110__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst111__I_0[0:0] = inst110__O[0:0];

  assign inst112__in[0:0] = inst110__O[0:0];

  assign inst110__S[1:0] = inst113__O[1:0];

  assign inst111__I_1[0:0] = inst112__out[0:0];

  assign south_O_layer1_2[0:0] = inst111__O[0:0];

  assign inst111__S[0:0] = inst114__O[0:0];

  assign inst112__clk = clk;

  assign inst245__I[1:0] = inst113__O[1:0];

  assign inst113__clk = clk;

  assign inst113__config_addr[7:0] = config_config_addr[7:0];

  assign inst113__config_data[31:0] = config_config_data[31:0];

  assign inst113__config_en = config_write[0];

  assign inst113__reset = reset;

  assign inst246__I[0:0] = inst114__O[0:0];

  assign inst114__clk = clk;

  assign inst114__config_addr[7:0] = config_config_addr[7:0];

  assign inst114__config_data[31:0] = config_config_data[31:0];

  assign inst114__config_en = config_write[0];

  assign inst114__reset = reset;

  assign inst115__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst115__I_1[0:0] = west_I_layer1_3[0:0];

  assign inst115__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst116__I_0[0:0] = inst115__O[0:0];

  assign inst117__in[0:0] = inst115__O[0:0];

  assign inst115__S[1:0] = inst118__O[1:0];

  assign inst116__I_1[0:0] = inst117__out[0:0];

  assign south_O_layer1_3[0:0] = inst116__O[0:0];

  assign inst116__S[0:0] = inst119__O[0:0];

  assign inst117__clk = clk;

  assign inst247__I[1:0] = inst118__O[1:0];

  assign inst118__clk = clk;

  assign inst118__config_addr[7:0] = config_config_addr[7:0];

  assign inst118__config_data[31:0] = config_config_data[31:0];

  assign inst118__config_en = config_write[0];

  assign inst118__reset = reset;

  assign inst248__I[0:0] = inst119__O[0:0];

  assign inst119__clk = clk;

  assign inst119__config_addr[7:0] = config_config_addr[7:0];

  assign inst119__config_data[31:0] = config_config_data[31:0];

  assign inst119__config_en = config_write[0];

  assign inst119__reset = reset;

  assign inst12__clk = clk;

  assign inst120__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst120__I_1[0:0] = west_I_layer1_4[0:0];

  assign inst120__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst121__I_0[0:0] = inst120__O[0:0];

  assign inst122__in[0:0] = inst120__O[0:0];

  assign inst120__S[1:0] = inst123__O[1:0];

  assign inst121__I_1[0:0] = inst122__out[0:0];

  assign south_O_layer1_4[0:0] = inst121__O[0:0];

  assign inst121__S[0:0] = inst124__O[0:0];

  assign inst122__clk = clk;

  assign inst249__I[1:0] = inst123__O[1:0];

  assign inst123__clk = clk;

  assign inst123__config_addr[7:0] = config_config_addr[7:0];

  assign inst123__config_data[31:0] = config_config_data[31:0];

  assign inst123__config_en = config_write[0];

  assign inst123__reset = reset;

  assign inst250__I[0:0] = inst124__O[0:0];

  assign inst124__clk = clk;

  assign inst124__config_addr[7:0] = config_config_addr[7:0];

  assign inst124__config_data[31:0] = config_config_data[31:0];

  assign inst124__config_en = config_write[0];

  assign inst124__reset = reset;

  assign inst125__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst125__I_1[15:0] = west_I_layer16_0[15:0];

  assign inst125__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst125__I_3[15:0] = res[15:0];

  assign inst126__I_0[15:0] = inst125__O[15:0];

  assign inst127__in[15:0] = inst125__O[15:0];

  assign inst125__S[1:0] = inst128__O[1:0];

  assign inst126__I_1[15:0] = inst127__out[15:0];

  assign south_O_layer16_0[15:0] = inst126__O[15:0];

  assign inst126__S[0:0] = inst129__O[0:0];

  assign inst127__clk = clk;

  assign inst251__I[1:0] = inst128__O[1:0];

  assign inst128__clk = clk;

  assign inst128__config_addr[7:0] = config_config_addr[7:0];

  assign inst128__config_data[31:0] = config_config_data[31:0];

  assign inst128__config_en = config_write[0];

  assign inst128__reset = reset;

  assign inst252__I[0:0] = inst129__O[0:0];

  assign inst129__clk = clk;

  assign inst129__config_addr[7:0] = config_config_addr[7:0];

  assign inst129__config_data[31:0] = config_config_data[31:0];

  assign inst129__config_en = config_write[0];

  assign inst129__reset = reset;

  assign inst205__I[1:0] = inst13__O[1:0];

  assign inst13__clk = clk;

  assign inst13__config_addr[7:0] = config_config_addr[7:0];

  assign inst13__config_data[31:0] = config_config_data[31:0];

  assign inst13__config_en = config_write[0];

  assign inst13__reset = reset;

  assign inst130__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst130__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst130__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst130__I_3[15:0] = res[15:0];

  assign inst131__I_0[15:0] = inst130__O[15:0];

  assign inst132__in[15:0] = inst130__O[15:0];

  assign inst130__S[1:0] = inst133__O[1:0];

  assign inst131__I_1[15:0] = inst132__out[15:0];

  assign south_O_layer16_1[15:0] = inst131__O[15:0];

  assign inst131__S[0:0] = inst134__O[0:0];

  assign inst132__clk = clk;

  assign inst253__I[1:0] = inst133__O[1:0];

  assign inst133__clk = clk;

  assign inst133__config_addr[7:0] = config_config_addr[7:0];

  assign inst133__config_data[31:0] = config_config_data[31:0];

  assign inst133__config_en = config_write[0];

  assign inst133__reset = reset;

  assign inst254__I[0:0] = inst134__O[0:0];

  assign inst134__clk = clk;

  assign inst134__config_addr[7:0] = config_config_addr[7:0];

  assign inst134__config_data[31:0] = config_config_data[31:0];

  assign inst134__config_en = config_write[0];

  assign inst134__reset = reset;

  assign inst135__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst135__I_1[15:0] = west_I_layer16_2[15:0];

  assign inst135__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst135__I_3[15:0] = res[15:0];

  assign inst136__I_0[15:0] = inst135__O[15:0];

  assign inst137__in[15:0] = inst135__O[15:0];

  assign inst135__S[1:0] = inst138__O[1:0];

  assign inst136__I_1[15:0] = inst137__out[15:0];

  assign south_O_layer16_2[15:0] = inst136__O[15:0];

  assign inst136__S[0:0] = inst139__O[0:0];

  assign inst137__clk = clk;

  assign inst255__I[1:0] = inst138__O[1:0];

  assign inst138__clk = clk;

  assign inst138__config_addr[7:0] = config_config_addr[7:0];

  assign inst138__config_data[31:0] = config_config_data[31:0];

  assign inst138__config_en = config_write[0];

  assign inst138__reset = reset;

  assign inst256__I[0:0] = inst139__O[0:0];

  assign inst139__clk = clk;

  assign inst139__config_addr[7:0] = config_config_addr[7:0];

  assign inst139__config_data[31:0] = config_config_data[31:0];

  assign inst139__config_en = config_write[0];

  assign inst139__reset = reset;

  assign inst206__I[0:0] = inst14__O[0:0];

  assign inst14__clk = clk;

  assign inst14__config_addr[7:0] = config_config_addr[7:0];

  assign inst14__config_data[31:0] = config_config_data[31:0];

  assign inst14__config_en = config_write[0];

  assign inst14__reset = reset;

  assign inst140__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst140__I_1[15:0] = west_I_layer16_3[15:0];

  assign inst140__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst140__I_3[15:0] = res[15:0];

  assign inst141__I_0[15:0] = inst140__O[15:0];

  assign inst142__in[15:0] = inst140__O[15:0];

  assign inst140__S[1:0] = inst143__O[1:0];

  assign inst141__I_1[15:0] = inst142__out[15:0];

  assign south_O_layer16_3[15:0] = inst141__O[15:0];

  assign inst141__S[0:0] = inst144__O[0:0];

  assign inst142__clk = clk;

  assign inst257__I[1:0] = inst143__O[1:0];

  assign inst143__clk = clk;

  assign inst143__config_addr[7:0] = config_config_addr[7:0];

  assign inst143__config_data[31:0] = config_config_data[31:0];

  assign inst143__config_en = config_write[0];

  assign inst143__reset = reset;

  assign inst258__I[0:0] = inst144__O[0:0];

  assign inst144__clk = clk;

  assign inst144__config_addr[7:0] = config_config_addr[7:0];

  assign inst144__config_data[31:0] = config_config_data[31:0];

  assign inst144__config_en = config_write[0];

  assign inst144__reset = reset;

  assign inst145__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst145__I_1[15:0] = west_I_layer16_4[15:0];

  assign inst145__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst145__I_3[15:0] = res[15:0];

  assign inst146__I_0[15:0] = inst145__O[15:0];

  assign inst147__in[15:0] = inst145__O[15:0];

  assign inst145__S[1:0] = inst148__O[1:0];

  assign inst146__I_1[15:0] = inst147__out[15:0];

  assign south_O_layer16_4[15:0] = inst146__O[15:0];

  assign inst146__S[0:0] = inst149__O[0:0];

  assign inst147__clk = clk;

  assign inst259__I[1:0] = inst148__O[1:0];

  assign inst148__clk = clk;

  assign inst148__config_addr[7:0] = config_config_addr[7:0];

  assign inst148__config_data[31:0] = config_config_data[31:0];

  assign inst148__config_en = config_write[0];

  assign inst148__reset = reset;

  assign inst260__I[0:0] = inst149__O[0:0];

  assign inst149__clk = clk;

  assign inst149__config_addr[7:0] = config_config_addr[7:0];

  assign inst149__config_data[31:0] = config_config_data[31:0];

  assign inst149__config_en = config_write[0];

  assign inst149__reset = reset;

  assign inst15__I_0[0:0] = west_I_layer1_3[0:0];

  assign inst15__I_1[0:0] = south_I_layer1_3[0:0];

  assign inst15__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst16__I_0[0:0] = inst15__O[0:0];

  assign inst17__in[0:0] = inst15__O[0:0];

  assign inst15__S[1:0] = inst18__O[1:0];

  assign inst150__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst150__I_1[0:0] = west_I_layer1_0[0:0];

  assign inst150__I_2[0:0] = south_I_layer1_0[0:0];

  assign inst151__I_0[0:0] = inst150__O[0:0];

  assign inst152__in[0:0] = inst150__O[0:0];

  assign inst150__S[1:0] = inst153__O[1:0];

  assign inst151__I_1[0:0] = inst152__out[0:0];

  assign east_O_layer1_0[0:0] = inst151__O[0:0];

  assign inst151__S[0:0] = inst154__O[0:0];

  assign inst152__clk = clk;

  assign inst261__I[1:0] = inst153__O[1:0];

  assign inst153__clk = clk;

  assign inst153__config_addr[7:0] = config_config_addr[7:0];

  assign inst153__config_data[31:0] = config_config_data[31:0];

  assign inst153__config_en = config_write[0];

  assign inst153__reset = reset;

  assign inst262__I[0:0] = inst154__O[0:0];

  assign inst154__clk = clk;

  assign inst154__config_addr[7:0] = config_config_addr[7:0];

  assign inst154__config_data[31:0] = config_config_data[31:0];

  assign inst154__config_en = config_write[0];

  assign inst154__reset = reset;

  assign inst155__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst155__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst155__I_2[0:0] = south_I_layer1_1[0:0];

  assign inst156__I_0[0:0] = inst155__O[0:0];

  assign inst157__in[0:0] = inst155__O[0:0];

  assign inst155__S[1:0] = inst158__O[1:0];

  assign inst156__I_1[0:0] = inst157__out[0:0];

  assign east_O_layer1_1[0:0] = inst156__O[0:0];

  assign inst156__S[0:0] = inst159__O[0:0];

  assign inst157__clk = clk;

  assign inst263__I[1:0] = inst158__O[1:0];

  assign inst158__clk = clk;

  assign inst158__config_addr[7:0] = config_config_addr[7:0];

  assign inst158__config_data[31:0] = config_config_data[31:0];

  assign inst158__config_en = config_write[0];

  assign inst158__reset = reset;

  assign inst264__I[0:0] = inst159__O[0:0];

  assign inst159__clk = clk;

  assign inst159__config_addr[7:0] = config_config_addr[7:0];

  assign inst159__config_data[31:0] = config_config_data[31:0];

  assign inst159__config_en = config_write[0];

  assign inst159__reset = reset;

  assign inst16__I_1[0:0] = inst17__out[0:0];

  assign north_O_layer1_3[0:0] = inst16__O[0:0];

  assign inst16__S[0:0] = inst19__O[0:0];

  assign inst160__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst160__I_1[0:0] = west_I_layer1_2[0:0];

  assign inst160__I_2[0:0] = south_I_layer1_2[0:0];

  assign inst161__I_0[0:0] = inst160__O[0:0];

  assign inst162__in[0:0] = inst160__O[0:0];

  assign inst160__S[1:0] = inst163__O[1:0];

  assign inst161__I_1[0:0] = inst162__out[0:0];

  assign east_O_layer1_2[0:0] = inst161__O[0:0];

  assign inst161__S[0:0] = inst164__O[0:0];

  assign inst162__clk = clk;

  assign inst265__I[1:0] = inst163__O[1:0];

  assign inst163__clk = clk;

  assign inst163__config_addr[7:0] = config_config_addr[7:0];

  assign inst163__config_data[31:0] = config_config_data[31:0];

  assign inst163__config_en = config_write[0];

  assign inst163__reset = reset;

  assign inst266__I[0:0] = inst164__O[0:0];

  assign inst164__clk = clk;

  assign inst164__config_addr[7:0] = config_config_addr[7:0];

  assign inst164__config_data[31:0] = config_config_data[31:0];

  assign inst164__config_en = config_write[0];

  assign inst164__reset = reset;

  assign inst165__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst165__I_1[0:0] = west_I_layer1_3[0:0];

  assign inst165__I_2[0:0] = south_I_layer1_3[0:0];

  assign inst166__I_0[0:0] = inst165__O[0:0];

  assign inst167__in[0:0] = inst165__O[0:0];

  assign inst165__S[1:0] = inst168__O[1:0];

  assign inst166__I_1[0:0] = inst167__out[0:0];

  assign east_O_layer1_3[0:0] = inst166__O[0:0];

  assign inst166__S[0:0] = inst169__O[0:0];

  assign inst167__clk = clk;

  assign inst267__I[1:0] = inst168__O[1:0];

  assign inst168__clk = clk;

  assign inst168__config_addr[7:0] = config_config_addr[7:0];

  assign inst168__config_data[31:0] = config_config_data[31:0];

  assign inst168__config_en = config_write[0];

  assign inst168__reset = reset;

  assign inst268__I[0:0] = inst169__O[0:0];

  assign inst169__clk = clk;

  assign inst169__config_addr[7:0] = config_config_addr[7:0];

  assign inst169__config_data[31:0] = config_config_data[31:0];

  assign inst169__config_en = config_write[0];

  assign inst169__reset = reset;

  assign inst17__clk = clk;

  assign inst170__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst170__I_1[0:0] = west_I_layer1_4[0:0];

  assign inst170__I_2[0:0] = south_I_layer1_4[0:0];

  assign inst171__I_0[0:0] = inst170__O[0:0];

  assign inst172__in[0:0] = inst170__O[0:0];

  assign inst170__S[1:0] = inst173__O[1:0];

  assign inst171__I_1[0:0] = inst172__out[0:0];

  assign east_O_layer1_4[0:0] = inst171__O[0:0];

  assign inst171__S[0:0] = inst174__O[0:0];

  assign inst172__clk = clk;

  assign inst269__I[1:0] = inst173__O[1:0];

  assign inst173__clk = clk;

  assign inst173__config_addr[7:0] = config_config_addr[7:0];

  assign inst173__config_data[31:0] = config_config_data[31:0];

  assign inst173__config_en = config_write[0];

  assign inst173__reset = reset;

  assign inst270__I[0:0] = inst174__O[0:0];

  assign inst174__clk = clk;

  assign inst174__config_addr[7:0] = config_config_addr[7:0];

  assign inst174__config_data[31:0] = config_config_data[31:0];

  assign inst174__config_en = config_write[0];

  assign inst174__reset = reset;

  assign inst175__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst175__I_1[15:0] = west_I_layer16_0[15:0];

  assign inst175__I_2[15:0] = south_I_layer16_0[15:0];

  assign inst175__I_3[15:0] = res[15:0];

  assign inst176__I_0[15:0] = inst175__O[15:0];

  assign inst177__in[15:0] = inst175__O[15:0];

  assign inst175__S[1:0] = inst178__O[1:0];

  assign inst176__I_1[15:0] = inst177__out[15:0];

  assign east_O_layer16_0[15:0] = inst176__O[15:0];

  assign inst176__S[0:0] = inst179__O[0:0];

  assign inst177__clk = clk;

  assign inst271__I[1:0] = inst178__O[1:0];

  assign inst178__clk = clk;

  assign inst178__config_addr[7:0] = config_config_addr[7:0];

  assign inst178__config_data[31:0] = config_config_data[31:0];

  assign inst178__config_en = config_write[0];

  assign inst178__reset = reset;

  assign inst272__I[0:0] = inst179__O[0:0];

  assign inst179__clk = clk;

  assign inst179__config_addr[7:0] = config_config_addr[7:0];

  assign inst179__config_data[31:0] = config_config_data[31:0];

  assign inst179__config_en = config_write[0];

  assign inst179__reset = reset;

  assign inst207__I[1:0] = inst18__O[1:0];

  assign inst18__clk = clk;

  assign inst18__config_addr[7:0] = config_config_addr[7:0];

  assign inst18__config_data[31:0] = config_config_data[31:0];

  assign inst18__config_en = config_write[0];

  assign inst18__reset = reset;

  assign inst180__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst180__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst180__I_2[15:0] = south_I_layer16_1[15:0];

  assign inst180__I_3[15:0] = res[15:0];

  assign inst181__I_0[15:0] = inst180__O[15:0];

  assign inst182__in[15:0] = inst180__O[15:0];

  assign inst180__S[1:0] = inst183__O[1:0];

  assign inst181__I_1[15:0] = inst182__out[15:0];

  assign east_O_layer16_1[15:0] = inst181__O[15:0];

  assign inst181__S[0:0] = inst184__O[0:0];

  assign inst182__clk = clk;

  assign inst273__I[1:0] = inst183__O[1:0];

  assign inst183__clk = clk;

  assign inst183__config_addr[7:0] = config_config_addr[7:0];

  assign inst183__config_data[31:0] = config_config_data[31:0];

  assign inst183__config_en = config_write[0];

  assign inst183__reset = reset;

  assign inst274__I[0:0] = inst184__O[0:0];

  assign inst184__clk = clk;

  assign inst184__config_addr[7:0] = config_config_addr[7:0];

  assign inst184__config_data[31:0] = config_config_data[31:0];

  assign inst184__config_en = config_write[0];

  assign inst184__reset = reset;

  assign inst185__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst185__I_1[15:0] = west_I_layer16_2[15:0];

  assign inst185__I_2[15:0] = south_I_layer16_2[15:0];

  assign inst185__I_3[15:0] = res[15:0];

  assign inst186__I_0[15:0] = inst185__O[15:0];

  assign inst187__in[15:0] = inst185__O[15:0];

  assign inst185__S[1:0] = inst188__O[1:0];

  assign inst186__I_1[15:0] = inst187__out[15:0];

  assign east_O_layer16_2[15:0] = inst186__O[15:0];

  assign inst186__S[0:0] = inst189__O[0:0];

  assign inst187__clk = clk;

  assign inst275__I[1:0] = inst188__O[1:0];

  assign inst188__clk = clk;

  assign inst188__config_addr[7:0] = config_config_addr[7:0];

  assign inst188__config_data[31:0] = config_config_data[31:0];

  assign inst188__config_en = config_write[0];

  assign inst188__reset = reset;

  assign inst276__I[0:0] = inst189__O[0:0];

  assign inst189__clk = clk;

  assign inst189__config_addr[7:0] = config_config_addr[7:0];

  assign inst189__config_data[31:0] = config_config_data[31:0];

  assign inst189__config_en = config_write[0];

  assign inst189__reset = reset;

  assign inst208__I[0:0] = inst19__O[0:0];

  assign inst19__clk = clk;

  assign inst19__config_addr[7:0] = config_config_addr[7:0];

  assign inst19__config_data[31:0] = config_config_data[31:0];

  assign inst19__config_en = config_write[0];

  assign inst19__reset = reset;

  assign inst190__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst190__I_1[15:0] = west_I_layer16_3[15:0];

  assign inst190__I_2[15:0] = south_I_layer16_3[15:0];

  assign inst190__I_3[15:0] = res[15:0];

  assign inst191__I_0[15:0] = inst190__O[15:0];

  assign inst192__in[15:0] = inst190__O[15:0];

  assign inst190__S[1:0] = inst193__O[1:0];

  assign inst191__I_1[15:0] = inst192__out[15:0];

  assign east_O_layer16_3[15:0] = inst191__O[15:0];

  assign inst191__S[0:0] = inst194__O[0:0];

  assign inst192__clk = clk;

  assign inst277__I[1:0] = inst193__O[1:0];

  assign inst193__clk = clk;

  assign inst193__config_addr[7:0] = config_config_addr[7:0];

  assign inst193__config_data[31:0] = config_config_data[31:0];

  assign inst193__config_en = config_write[0];

  assign inst193__reset = reset;

  assign inst278__I[0:0] = inst194__O[0:0];

  assign inst194__clk = clk;

  assign inst194__config_addr[7:0] = config_config_addr[7:0];

  assign inst194__config_data[31:0] = config_config_data[31:0];

  assign inst194__config_en = config_write[0];

  assign inst194__reset = reset;

  assign inst195__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst195__I_1[15:0] = west_I_layer16_4[15:0];

  assign inst195__I_2[15:0] = south_I_layer16_4[15:0];

  assign inst195__I_3[15:0] = res[15:0];

  assign inst196__I_0[15:0] = inst195__O[15:0];

  assign inst197__in[15:0] = inst195__O[15:0];

  assign inst195__S[1:0] = inst198__O[1:0];

  assign inst196__I_1[15:0] = inst197__out[15:0];

  assign east_O_layer16_4[15:0] = inst196__O[15:0];

  assign inst196__S[0:0] = inst199__O[0:0];

  assign inst197__clk = clk;

  assign inst279__I[1:0] = inst198__O[1:0];

  assign inst198__clk = clk;

  assign inst198__config_addr[7:0] = config_config_addr[7:0];

  assign inst198__config_data[31:0] = config_config_data[31:0];

  assign inst198__config_en = config_write[0];

  assign inst198__reset = reset;

  assign inst280__I[0:0] = inst199__O[0:0];

  assign inst199__clk = clk;

  assign inst199__config_addr[7:0] = config_config_addr[7:0];

  assign inst199__config_data[31:0] = config_config_data[31:0];

  assign inst199__config_en = config_write[0];

  assign inst199__reset = reset;

  assign inst2__clk = clk;

  assign inst20__I_0[0:0] = west_I_layer1_4[0:0];

  assign inst20__I_1[0:0] = south_I_layer1_4[0:0];

  assign inst20__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst21__I_0[0:0] = inst20__O[0:0];

  assign inst22__in[0:0] = inst20__O[0:0];

  assign inst20__S[1:0] = inst23__O[1:0];

  assign inst200__I_0[31:0] = inst201__O[31:0];

  assign inst200__I_1[31:0] = inst202__O[31:0];

  assign inst200__I_10[31:0] = inst211__O[31:0];

  assign inst200__I_11[31:0] = inst212__O[31:0];

  assign inst200__I_12[31:0] = inst213__O[31:0];

  assign inst200__I_13[31:0] = inst214__O[31:0];

  assign inst200__I_14[31:0] = inst215__O[31:0];

  assign inst200__I_15[31:0] = inst216__O[31:0];

  assign inst200__I_16[31:0] = inst217__O[31:0];

  assign inst200__I_17[31:0] = inst218__O[31:0];

  assign inst200__I_18[31:0] = inst219__O[31:0];

  assign inst200__I_19[31:0] = inst220__O[31:0];

  assign inst200__I_2[31:0] = inst203__O[31:0];

  assign inst200__I_20[31:0] = inst221__O[31:0];

  assign inst200__I_21[31:0] = inst222__O[31:0];

  assign inst200__I_22[31:0] = inst223__O[31:0];

  assign inst200__I_23[31:0] = inst224__O[31:0];

  assign inst200__I_24[31:0] = inst225__O[31:0];

  assign inst200__I_25[31:0] = inst226__O[31:0];

  assign inst200__I_26[31:0] = inst227__O[31:0];

  assign inst200__I_27[31:0] = inst228__O[31:0];

  assign inst200__I_28[31:0] = inst229__O[31:0];

  assign inst200__I_29[31:0] = inst230__O[31:0];

  assign inst200__I_3[31:0] = inst204__O[31:0];

  assign inst200__I_30[31:0] = inst231__O[31:0];

  assign inst200__I_31[31:0] = inst232__O[31:0];

  assign inst200__I_32[31:0] = inst233__O[31:0];

  assign inst200__I_33[31:0] = inst234__O[31:0];

  assign inst200__I_34[31:0] = inst235__O[31:0];

  assign inst200__I_35[31:0] = inst236__O[31:0];

  assign inst200__I_36[31:0] = inst237__O[31:0];

  assign inst200__I_37[31:0] = inst238__O[31:0];

  assign inst200__I_38[31:0] = inst239__O[31:0];

  assign inst200__I_39[31:0] = inst240__O[31:0];

  assign inst200__I_4[31:0] = inst205__O[31:0];

  assign inst200__I_40[31:0] = inst241__O[31:0];

  assign inst200__I_41[31:0] = inst242__O[31:0];

  assign inst200__I_42[31:0] = inst243__O[31:0];

  assign inst200__I_43[31:0] = inst244__O[31:0];

  assign inst200__I_44[31:0] = inst245__O[31:0];

  assign inst200__I_45[31:0] = inst246__O[31:0];

  assign inst200__I_46[31:0] = inst247__O[31:0];

  assign inst200__I_47[31:0] = inst248__O[31:0];

  assign inst200__I_48[31:0] = inst249__O[31:0];

  assign inst200__I_49[31:0] = inst250__O[31:0];

  assign inst200__I_5[31:0] = inst206__O[31:0];

  assign inst200__I_50[31:0] = inst251__O[31:0];

  assign inst200__I_51[31:0] = inst252__O[31:0];

  assign inst200__I_52[31:0] = inst253__O[31:0];

  assign inst200__I_53[31:0] = inst254__O[31:0];

  assign inst200__I_54[31:0] = inst255__O[31:0];

  assign inst200__I_55[31:0] = inst256__O[31:0];

  assign inst200__I_56[31:0] = inst257__O[31:0];

  assign inst200__I_57[31:0] = inst258__O[31:0];

  assign inst200__I_58[31:0] = inst259__O[31:0];

  assign inst200__I_59[31:0] = inst260__O[31:0];

  assign inst200__I_6[31:0] = inst207__O[31:0];

  assign inst200__I_60[31:0] = inst261__O[31:0];

  assign inst200__I_61[31:0] = inst262__O[31:0];

  assign inst200__I_62[31:0] = inst263__O[31:0];

  assign inst200__I_63[31:0] = inst264__O[31:0];

  assign inst200__I_64[31:0] = inst265__O[31:0];

  assign inst200__I_65[31:0] = inst266__O[31:0];

  assign inst200__I_66[31:0] = inst267__O[31:0];

  assign inst200__I_67[31:0] = inst268__O[31:0];

  assign inst200__I_68[31:0] = inst269__O[31:0];

  assign inst200__I_69[31:0] = inst270__O[31:0];

  assign inst200__I_7[31:0] = inst208__O[31:0];

  assign inst200__I_70[31:0] = inst271__O[31:0];

  assign inst200__I_71[31:0] = inst272__O[31:0];

  assign inst200__I_72[31:0] = inst273__O[31:0];

  assign inst200__I_73[31:0] = inst274__O[31:0];

  assign inst200__I_74[31:0] = inst275__O[31:0];

  assign inst200__I_75[31:0] = inst276__O[31:0];

  assign inst200__I_76[31:0] = inst277__O[31:0];

  assign inst200__I_77[31:0] = inst278__O[31:0];

  assign inst200__I_78[31:0] = inst279__O[31:0];

  assign inst200__I_79[31:0] = inst280__O[31:0];

  assign inst200__I_8[31:0] = inst209__O[31:0];

  assign inst200__I_9[31:0] = inst210__O[31:0];

  assign read_config_data[31:0] = inst200__O[31:0];

  assign inst200__S[0] = config_config_addr[0];

  assign inst200__S[1] = config_config_addr[1];

  assign inst200__S[2] = config_config_addr[2];

  assign inst200__S[3] = config_config_addr[3];

  assign inst200__S[4] = config_config_addr[4];

  assign inst200__S[5] = config_config_addr[5];

  assign inst200__S[6] = config_config_addr[6];

  assign inst201__I[1:0] = inst3__O[1:0];

  assign inst202__I[0:0] = inst4__O[0:0];

  assign inst203__I[1:0] = inst8__O[1:0];

  assign inst204__I[0:0] = inst9__O[0:0];

  assign inst209__I[1:0] = inst23__O[1:0];

  assign inst21__I_1[0:0] = inst22__out[0:0];

  assign north_O_layer1_4[0:0] = inst21__O[0:0];

  assign inst21__S[0:0] = inst24__O[0:0];

  assign inst210__I[0:0] = inst24__O[0:0];

  assign inst211__I[1:0] = inst28__O[1:0];

  assign inst212__I[0:0] = inst29__O[0:0];

  assign inst213__I[1:0] = inst33__O[1:0];

  assign inst214__I[0:0] = inst34__O[0:0];

  assign inst215__I[1:0] = inst38__O[1:0];

  assign inst216__I[0:0] = inst39__O[0:0];

  assign inst217__I[1:0] = inst43__O[1:0];

  assign inst218__I[0:0] = inst44__O[0:0];

  assign inst219__I[1:0] = inst48__O[1:0];

  assign inst22__clk = clk;

  assign inst220__I[0:0] = inst49__O[0:0];

  assign inst221__I[1:0] = inst53__O[1:0];

  assign inst222__I[0:0] = inst54__O[0:0];

  assign inst223__I[1:0] = inst58__O[1:0];

  assign inst224__I[0:0] = inst59__O[0:0];

  assign inst225__I[1:0] = inst63__O[1:0];

  assign inst226__I[0:0] = inst64__O[0:0];

  assign inst227__I[1:0] = inst68__O[1:0];

  assign inst228__I[0:0] = inst69__O[0:0];

  assign inst229__I[1:0] = inst73__O[1:0];

  assign inst23__clk = clk;

  assign inst23__config_addr[7:0] = config_config_addr[7:0];

  assign inst23__config_data[31:0] = config_config_data[31:0];

  assign inst23__config_en = config_write[0];

  assign inst23__reset = reset;

  assign inst230__I[0:0] = inst74__O[0:0];

  assign inst231__I[1:0] = inst78__O[1:0];

  assign inst232__I[0:0] = inst79__O[0:0];

  assign inst233__I[1:0] = inst83__O[1:0];

  assign inst234__I[0:0] = inst84__O[0:0];

  assign inst235__I[1:0] = inst88__O[1:0];

  assign inst236__I[0:0] = inst89__O[0:0];

  assign inst237__I[1:0] = inst93__O[1:0];

  assign inst238__I[0:0] = inst94__O[0:0];

  assign inst239__I[1:0] = inst98__O[1:0];

  assign inst24__clk = clk;

  assign inst24__config_addr[7:0] = config_config_addr[7:0];

  assign inst24__config_data[31:0] = config_config_data[31:0];

  assign inst24__config_en = config_write[0];

  assign inst24__reset = reset;

  assign inst240__I[0:0] = inst99__O[0:0];

  assign inst25__I_0[15:0] = west_I_layer16_0[15:0];

  assign inst25__I_1[15:0] = south_I_layer16_0[15:0];

  assign inst25__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst25__I_3[15:0] = res[15:0];

  assign inst26__I_0[15:0] = inst25__O[15:0];

  assign inst27__in[15:0] = inst25__O[15:0];

  assign inst25__S[1:0] = inst28__O[1:0];

  assign inst26__I_1[15:0] = inst27__out[15:0];

  assign north_O_layer16_0[15:0] = inst26__O[15:0];

  assign inst26__S[0:0] = inst29__O[0:0];

  assign inst27__clk = clk;

  assign inst28__clk = clk;

  assign inst28__config_addr[7:0] = config_config_addr[7:0];

  assign inst28__config_data[31:0] = config_config_data[31:0];

  assign inst28__config_en = config_write[0];

  assign inst28__reset = reset;

  assign inst29__clk = clk;

  assign inst29__config_addr[7:0] = config_config_addr[7:0];

  assign inst29__config_data[31:0] = config_config_data[31:0];

  assign inst29__config_en = config_write[0];

  assign inst29__reset = reset;

  assign inst3__clk = clk;

  assign inst3__config_addr[7:0] = config_config_addr[7:0];

  assign inst3__config_data[31:0] = config_config_data[31:0];

  assign inst3__config_en = config_write[0];

  assign inst3__reset = reset;

  assign inst30__I_0[15:0] = west_I_layer16_1[15:0];

  assign inst30__I_1[15:0] = south_I_layer16_1[15:0];

  assign inst30__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst30__I_3[15:0] = res[15:0];

  assign inst31__I_0[15:0] = inst30__O[15:0];

  assign inst32__in[15:0] = inst30__O[15:0];

  assign inst30__S[1:0] = inst33__O[1:0];

  assign inst31__I_1[15:0] = inst32__out[15:0];

  assign north_O_layer16_1[15:0] = inst31__O[15:0];

  assign inst31__S[0:0] = inst34__O[0:0];

  assign inst32__clk = clk;

  assign inst33__clk = clk;

  assign inst33__config_addr[7:0] = config_config_addr[7:0];

  assign inst33__config_data[31:0] = config_config_data[31:0];

  assign inst33__config_en = config_write[0];

  assign inst33__reset = reset;

  assign inst34__clk = clk;

  assign inst34__config_addr[7:0] = config_config_addr[7:0];

  assign inst34__config_data[31:0] = config_config_data[31:0];

  assign inst34__config_en = config_write[0];

  assign inst34__reset = reset;

  assign inst35__I_0[15:0] = west_I_layer16_2[15:0];

  assign inst35__I_1[15:0] = south_I_layer16_2[15:0];

  assign inst35__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst35__I_3[15:0] = res[15:0];

  assign inst36__I_0[15:0] = inst35__O[15:0];

  assign inst37__in[15:0] = inst35__O[15:0];

  assign inst35__S[1:0] = inst38__O[1:0];

  assign inst36__I_1[15:0] = inst37__out[15:0];

  assign north_O_layer16_2[15:0] = inst36__O[15:0];

  assign inst36__S[0:0] = inst39__O[0:0];

  assign inst37__clk = clk;

  assign inst38__clk = clk;

  assign inst38__config_addr[7:0] = config_config_addr[7:0];

  assign inst38__config_data[31:0] = config_config_data[31:0];

  assign inst38__config_en = config_write[0];

  assign inst38__reset = reset;

  assign inst39__clk = clk;

  assign inst39__config_addr[7:0] = config_config_addr[7:0];

  assign inst39__config_data[31:0] = config_config_data[31:0];

  assign inst39__config_en = config_write[0];

  assign inst39__reset = reset;

  assign inst4__clk = clk;

  assign inst4__config_addr[7:0] = config_config_addr[7:0];

  assign inst4__config_data[31:0] = config_config_data[31:0];

  assign inst4__config_en = config_write[0];

  assign inst4__reset = reset;

  assign inst40__I_0[15:0] = west_I_layer16_3[15:0];

  assign inst40__I_1[15:0] = south_I_layer16_3[15:0];

  assign inst40__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst40__I_3[15:0] = res[15:0];

  assign inst41__I_0[15:0] = inst40__O[15:0];

  assign inst42__in[15:0] = inst40__O[15:0];

  assign inst40__S[1:0] = inst43__O[1:0];

  assign inst41__I_1[15:0] = inst42__out[15:0];

  assign north_O_layer16_3[15:0] = inst41__O[15:0];

  assign inst41__S[0:0] = inst44__O[0:0];

  assign inst42__clk = clk;

  assign inst43__clk = clk;

  assign inst43__config_addr[7:0] = config_config_addr[7:0];

  assign inst43__config_data[31:0] = config_config_data[31:0];

  assign inst43__config_en = config_write[0];

  assign inst43__reset = reset;

  assign inst44__clk = clk;

  assign inst44__config_addr[7:0] = config_config_addr[7:0];

  assign inst44__config_data[31:0] = config_config_data[31:0];

  assign inst44__config_en = config_write[0];

  assign inst44__reset = reset;

  assign inst45__I_0[15:0] = west_I_layer16_4[15:0];

  assign inst45__I_1[15:0] = south_I_layer16_4[15:0];

  assign inst45__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst45__I_3[15:0] = res[15:0];

  assign inst46__I_0[15:0] = inst45__O[15:0];

  assign inst47__in[15:0] = inst45__O[15:0];

  assign inst45__S[1:0] = inst48__O[1:0];

  assign inst46__I_1[15:0] = inst47__out[15:0];

  assign north_O_layer16_4[15:0] = inst46__O[15:0];

  assign inst46__S[0:0] = inst49__O[0:0];

  assign inst47__clk = clk;

  assign inst48__clk = clk;

  assign inst48__config_addr[7:0] = config_config_addr[7:0];

  assign inst48__config_data[31:0] = config_config_data[31:0];

  assign inst48__config_en = config_write[0];

  assign inst48__reset = reset;

  assign inst49__clk = clk;

  assign inst49__config_addr[7:0] = config_config_addr[7:0];

  assign inst49__config_data[31:0] = config_config_data[31:0];

  assign inst49__config_en = config_write[0];

  assign inst49__reset = reset;

  assign inst5__I_0[0:0] = west_I_layer1_1[0:0];

  assign inst5__I_1[0:0] = south_I_layer1_1[0:0];

  assign inst5__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst6__I_0[0:0] = inst5__O[0:0];

  assign inst7__in[0:0] = inst5__O[0:0];

  assign inst5__S[1:0] = inst8__O[1:0];

  assign inst50__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst50__I_1[0:0] = south_I_layer1_0[0:0];

  assign inst50__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst51__I_0[0:0] = inst50__O[0:0];

  assign inst52__in[0:0] = inst50__O[0:0];

  assign inst50__S[1:0] = inst53__O[1:0];

  assign inst51__I_1[0:0] = inst52__out[0:0];

  assign west_O_layer1_0[0:0] = inst51__O[0:0];

  assign inst51__S[0:0] = inst54__O[0:0];

  assign inst52__clk = clk;

  assign inst53__clk = clk;

  assign inst53__config_addr[7:0] = config_config_addr[7:0];

  assign inst53__config_data[31:0] = config_config_data[31:0];

  assign inst53__config_en = config_write[0];

  assign inst53__reset = reset;

  assign inst54__clk = clk;

  assign inst54__config_addr[7:0] = config_config_addr[7:0];

  assign inst54__config_data[31:0] = config_config_data[31:0];

  assign inst54__config_en = config_write[0];

  assign inst54__reset = reset;

  assign inst55__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst55__I_1[0:0] = south_I_layer1_1[0:0];

  assign inst55__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst56__I_0[0:0] = inst55__O[0:0];

  assign inst57__in[0:0] = inst55__O[0:0];

  assign inst55__S[1:0] = inst58__O[1:0];

  assign inst56__I_1[0:0] = inst57__out[0:0];

  assign west_O_layer1_1[0:0] = inst56__O[0:0];

  assign inst56__S[0:0] = inst59__O[0:0];

  assign inst57__clk = clk;

  assign inst58__clk = clk;

  assign inst58__config_addr[7:0] = config_config_addr[7:0];

  assign inst58__config_data[31:0] = config_config_data[31:0];

  assign inst58__config_en = config_write[0];

  assign inst58__reset = reset;

  assign inst59__clk = clk;

  assign inst59__config_addr[7:0] = config_config_addr[7:0];

  assign inst59__config_data[31:0] = config_config_data[31:0];

  assign inst59__config_en = config_write[0];

  assign inst59__reset = reset;

  assign inst6__I_1[0:0] = inst7__out[0:0];

  assign north_O_layer1_1[0:0] = inst6__O[0:0];

  assign inst6__S[0:0] = inst9__O[0:0];

  assign inst60__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst60__I_1[0:0] = south_I_layer1_2[0:0];

  assign inst60__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst61__I_0[0:0] = inst60__O[0:0];

  assign inst62__in[0:0] = inst60__O[0:0];

  assign inst60__S[1:0] = inst63__O[1:0];

  assign inst61__I_1[0:0] = inst62__out[0:0];

  assign west_O_layer1_2[0:0] = inst61__O[0:0];

  assign inst61__S[0:0] = inst64__O[0:0];

  assign inst62__clk = clk;

  assign inst63__clk = clk;

  assign inst63__config_addr[7:0] = config_config_addr[7:0];

  assign inst63__config_data[31:0] = config_config_data[31:0];

  assign inst63__config_en = config_write[0];

  assign inst63__reset = reset;

  assign inst64__clk = clk;

  assign inst64__config_addr[7:0] = config_config_addr[7:0];

  assign inst64__config_data[31:0] = config_config_data[31:0];

  assign inst64__config_en = config_write[0];

  assign inst64__reset = reset;

  assign inst65__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst65__I_1[0:0] = south_I_layer1_3[0:0];

  assign inst65__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst66__I_0[0:0] = inst65__O[0:0];

  assign inst67__in[0:0] = inst65__O[0:0];

  assign inst65__S[1:0] = inst68__O[1:0];

  assign inst66__I_1[0:0] = inst67__out[0:0];

  assign west_O_layer1_3[0:0] = inst66__O[0:0];

  assign inst66__S[0:0] = inst69__O[0:0];

  assign inst67__clk = clk;

  assign inst68__clk = clk;

  assign inst68__config_addr[7:0] = config_config_addr[7:0];

  assign inst68__config_data[31:0] = config_config_data[31:0];

  assign inst68__config_en = config_write[0];

  assign inst68__reset = reset;

  assign inst69__clk = clk;

  assign inst69__config_addr[7:0] = config_config_addr[7:0];

  assign inst69__config_data[31:0] = config_config_data[31:0];

  assign inst69__config_en = config_write[0];

  assign inst69__reset = reset;

  assign inst7__clk = clk;

  assign inst70__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst70__I_1[0:0] = south_I_layer1_4[0:0];

  assign inst70__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst71__I_0[0:0] = inst70__O[0:0];

  assign inst72__in[0:0] = inst70__O[0:0];

  assign inst70__S[1:0] = inst73__O[1:0];

  assign inst71__I_1[0:0] = inst72__out[0:0];

  assign west_O_layer1_4[0:0] = inst71__O[0:0];

  assign inst71__S[0:0] = inst74__O[0:0];

  assign inst72__clk = clk;

  assign inst73__clk = clk;

  assign inst73__config_addr[7:0] = config_config_addr[7:0];

  assign inst73__config_data[31:0] = config_config_data[31:0];

  assign inst73__config_en = config_write[0];

  assign inst73__reset = reset;

  assign inst74__clk = clk;

  assign inst74__config_addr[7:0] = config_config_addr[7:0];

  assign inst74__config_data[31:0] = config_config_data[31:0];

  assign inst74__config_en = config_write[0];

  assign inst74__reset = reset;

  assign inst75__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst75__I_1[15:0] = south_I_layer16_0[15:0];

  assign inst75__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst75__I_3[15:0] = res[15:0];

  assign inst76__I_0[15:0] = inst75__O[15:0];

  assign inst77__in[15:0] = inst75__O[15:0];

  assign inst75__S[1:0] = inst78__O[1:0];

  assign inst76__I_1[15:0] = inst77__out[15:0];

  assign west_O_layer16_0[15:0] = inst76__O[15:0];

  assign inst76__S[0:0] = inst79__O[0:0];

  assign inst77__clk = clk;

  assign inst78__clk = clk;

  assign inst78__config_addr[7:0] = config_config_addr[7:0];

  assign inst78__config_data[31:0] = config_config_data[31:0];

  assign inst78__config_en = config_write[0];

  assign inst78__reset = reset;

  assign inst79__clk = clk;

  assign inst79__config_addr[7:0] = config_config_addr[7:0];

  assign inst79__config_data[31:0] = config_config_data[31:0];

  assign inst79__config_en = config_write[0];

  assign inst79__reset = reset;

  assign inst8__clk = clk;

  assign inst8__config_addr[7:0] = config_config_addr[7:0];

  assign inst8__config_data[31:0] = config_config_data[31:0];

  assign inst8__config_en = config_write[0];

  assign inst8__reset = reset;

  assign inst80__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst80__I_1[15:0] = south_I_layer16_1[15:0];

  assign inst80__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst80__I_3[15:0] = res[15:0];

  assign inst81__I_0[15:0] = inst80__O[15:0];

  assign inst82__in[15:0] = inst80__O[15:0];

  assign inst80__S[1:0] = inst83__O[1:0];

  assign inst81__I_1[15:0] = inst82__out[15:0];

  assign west_O_layer16_1[15:0] = inst81__O[15:0];

  assign inst81__S[0:0] = inst84__O[0:0];

  assign inst82__clk = clk;

  assign inst83__clk = clk;

  assign inst83__config_addr[7:0] = config_config_addr[7:0];

  assign inst83__config_data[31:0] = config_config_data[31:0];

  assign inst83__config_en = config_write[0];

  assign inst83__reset = reset;

  assign inst84__clk = clk;

  assign inst84__config_addr[7:0] = config_config_addr[7:0];

  assign inst84__config_data[31:0] = config_config_data[31:0];

  assign inst84__config_en = config_write[0];

  assign inst84__reset = reset;

  assign inst85__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst85__I_1[15:0] = south_I_layer16_2[15:0];

  assign inst85__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst85__I_3[15:0] = res[15:0];

  assign inst86__I_0[15:0] = inst85__O[15:0];

  assign inst87__in[15:0] = inst85__O[15:0];

  assign inst85__S[1:0] = inst88__O[1:0];

  assign inst86__I_1[15:0] = inst87__out[15:0];

  assign west_O_layer16_2[15:0] = inst86__O[15:0];

  assign inst86__S[0:0] = inst89__O[0:0];

  assign inst87__clk = clk;

  assign inst88__clk = clk;

  assign inst88__config_addr[7:0] = config_config_addr[7:0];

  assign inst88__config_data[31:0] = config_config_data[31:0];

  assign inst88__config_en = config_write[0];

  assign inst88__reset = reset;

  assign inst89__clk = clk;

  assign inst89__config_addr[7:0] = config_config_addr[7:0];

  assign inst89__config_data[31:0] = config_config_data[31:0];

  assign inst89__config_en = config_write[0];

  assign inst89__reset = reset;

  assign inst9__clk = clk;

  assign inst9__config_addr[7:0] = config_config_addr[7:0];

  assign inst9__config_data[31:0] = config_config_data[31:0];

  assign inst9__config_en = config_write[0];

  assign inst9__reset = reset;

  assign inst90__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst90__I_1[15:0] = south_I_layer16_3[15:0];

  assign inst90__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst90__I_3[15:0] = res[15:0];

  assign inst91__I_0[15:0] = inst90__O[15:0];

  assign inst92__in[15:0] = inst90__O[15:0];

  assign inst90__S[1:0] = inst93__O[1:0];

  assign inst91__I_1[15:0] = inst92__out[15:0];

  assign west_O_layer16_3[15:0] = inst91__O[15:0];

  assign inst91__S[0:0] = inst94__O[0:0];

  assign inst92__clk = clk;

  assign inst93__clk = clk;

  assign inst93__config_addr[7:0] = config_config_addr[7:0];

  assign inst93__config_data[31:0] = config_config_data[31:0];

  assign inst93__config_en = config_write[0];

  assign inst93__reset = reset;

  assign inst94__clk = clk;

  assign inst94__config_addr[7:0] = config_config_addr[7:0];

  assign inst94__config_data[31:0] = config_config_data[31:0];

  assign inst94__config_en = config_write[0];

  assign inst94__reset = reset;

  assign inst95__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst95__I_1[15:0] = south_I_layer16_4[15:0];

  assign inst95__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst95__I_3[15:0] = res[15:0];

  assign inst96__I_0[15:0] = inst95__O[15:0];

  assign inst97__in[15:0] = inst95__O[15:0];

  assign inst95__S[1:0] = inst98__O[1:0];

  assign inst96__I_1[15:0] = inst97__out[15:0];

  assign west_O_layer16_4[15:0] = inst96__O[15:0];

  assign inst96__S[0:0] = inst99__O[0:0];

  assign inst97__clk = clk;

  assign inst98__clk = clk;

  assign inst98__config_addr[7:0] = config_config_addr[7:0];

  assign inst98__config_data[31:0] = config_config_data[31:0];

  assign inst98__config_en = config_write[0];

  assign inst98__reset = reset;

  assign inst99__clk = clk;

  assign inst99__config_addr[7:0] = config_config_addr[7:0];

  assign inst99__config_data[31:0] = config_config_data[31:0];

  assign inst99__config_en = config_write[0];

  assign inst99__reset = reset;


endmodule  // SB_Out_Bits_16___Out_Bits_4__

module ZextWrapper_4_32 (
  input [3:0] I,
  output [31:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  assign O[10] = bit_const_0_None__out;

  assign O[11] = bit_const_0_None__out;

  assign O[12] = bit_const_0_None__out;

  assign O[13] = bit_const_0_None__out;

  assign O[14] = bit_const_0_None__out;

  assign O[15] = bit_const_0_None__out;

  assign O[16] = bit_const_0_None__out;

  assign O[17] = bit_const_0_None__out;

  assign O[18] = bit_const_0_None__out;

  assign O[19] = bit_const_0_None__out;

  assign O[20] = bit_const_0_None__out;

  assign O[21] = bit_const_0_None__out;

  assign O[22] = bit_const_0_None__out;

  assign O[23] = bit_const_0_None__out;

  assign O[24] = bit_const_0_None__out;

  assign O[25] = bit_const_0_None__out;

  assign O[26] = bit_const_0_None__out;

  assign O[27] = bit_const_0_None__out;

  assign O[28] = bit_const_0_None__out;

  assign O[29] = bit_const_0_None__out;

  assign O[30] = bit_const_0_None__out;

  assign O[31] = bit_const_0_None__out;

  assign O[4] = bit_const_0_None__out;

  assign O[5] = bit_const_0_None__out;

  assign O[6] = bit_const_0_None__out;

  assign O[7] = bit_const_0_None__out;

  assign O[8] = bit_const_0_None__out;

  assign O[9] = bit_const_0_None__out;

  assign O[0] = I[0];

  assign O[1] = I[1];

  assign O[2] = I[2];

  assign O[3] = I[3];


endmodule  // ZextWrapper_4_32

module CB_10_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  input [15:0] I_4,
  input [15:0] I_5,
  input [15:0] I_6,
  input [15:0] I_7,
  input [15:0] I_8,
  input [15:0] I_9,
  output [15:0] O,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  output [31:0] read_config_data,
  input  reset
);


  wire [3:0] inst0__O;
  wire  inst0__clk;
  wire [7:0] inst0__config_addr;
  wire [31:0] inst0__config_data;
  wire  inst0__config_en;
  wire  inst0__reset;
  ConfigRegister_4_8_32_0 inst0(
    .O(inst0__O),
    .clk(inst0__clk),
    .config_addr(inst0__config_addr),
    .config_data(inst0__config_data),
    .config_en(inst0__config_en),
    .reset(inst0__reset)
  );

  wire [3:0] inst1__I;
  wire [31:0] inst1__O;
  ZextWrapper_4_32 inst1(
    .I(inst1__I),
    .O(inst1__O)
  );

  wire [15:0] inst2__I_0;
  wire [15:0] inst2__I_1;
  wire [15:0] inst2__I_2;
  wire [15:0] inst2__I_3;
  wire [15:0] inst2__I_4;
  wire [15:0] inst2__I_5;
  wire [15:0] inst2__I_6;
  wire [15:0] inst2__I_7;
  wire [15:0] inst2__I_8;
  wire [15:0] inst2__I_9;
  wire [15:0] inst2__O;
  wire [3:0] inst2__S;
  MuxWrapper_10_16 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .S(inst2__S)
  );

  assign inst1__I[3:0] = inst0__O[3:0];

  assign inst2__S[3:0] = inst0__O[3:0];

  assign inst0__clk = clk;

  assign inst0__config_addr[7:0] = config_config_addr[7:0];

  assign inst0__config_data[31:0] = config_config_data[31:0];

  assign inst0__config_en = config_write[0];

  assign inst0__reset = reset;

  assign read_config_data[31:0] = inst1__O[31:0];

  assign inst2__I_0[15:0] = I_0[15:0];

  assign inst2__I_1[15:0] = I_1[15:0];

  assign inst2__I_2[15:0] = I_2[15:0];

  assign inst2__I_3[15:0] = I_3[15:0];

  assign inst2__I_4[15:0] = I_4[15:0];

  assign inst2__I_5[15:0] = I_5[15:0];

  assign inst2__I_6[15:0] = I_6[15:0];

  assign inst2__I_7[15:0] = I_7[15:0];

  assign inst2__I_8[15:0] = I_8[15:0];

  assign inst2__I_9[15:0] = I_9[15:0];

  assign O[15:0] = inst2__O[15:0];


endmodule  // CB_10_16

module CB_10_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  input [0:0] I_3,
  input [0:0] I_4,
  input [0:0] I_5,
  input [0:0] I_6,
  input [0:0] I_7,
  input [0:0] I_8,
  input [0:0] I_9,
  output [0:0] O,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  output [31:0] read_config_data,
  input  reset
);


  wire [3:0] inst0__O;
  wire  inst0__clk;
  wire [7:0] inst0__config_addr;
  wire [31:0] inst0__config_data;
  wire  inst0__config_en;
  wire  inst0__reset;
  ConfigRegister_4_8_32_0 inst0(
    .O(inst0__O),
    .clk(inst0__clk),
    .config_addr(inst0__config_addr),
    .config_data(inst0__config_data),
    .config_en(inst0__config_en),
    .reset(inst0__reset)
  );

  wire [3:0] inst1__I;
  wire [31:0] inst1__O;
  ZextWrapper_4_32 inst1(
    .I(inst1__I),
    .O(inst1__O)
  );

  wire [0:0] inst2__I_0;
  wire [0:0] inst2__I_1;
  wire [0:0] inst2__I_2;
  wire [0:0] inst2__I_3;
  wire [0:0] inst2__I_4;
  wire [0:0] inst2__I_5;
  wire [0:0] inst2__I_6;
  wire [0:0] inst2__I_7;
  wire [0:0] inst2__I_8;
  wire [0:0] inst2__I_9;
  wire [0:0] inst2__O;
  wire [3:0] inst2__S;
  MuxWrapper_10_1 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .S(inst2__S)
  );

  assign inst1__I[3:0] = inst0__O[3:0];

  assign inst2__S[3:0] = inst0__O[3:0];

  assign inst0__clk = clk;

  assign inst0__config_addr[7:0] = config_config_addr[7:0];

  assign inst0__config_data[31:0] = config_config_data[31:0];

  assign inst0__config_en = config_write[0];

  assign inst0__reset = reset;

  assign read_config_data[31:0] = inst1__O[31:0];

  assign inst2__I_0[0:0] = I_0[0:0];

  assign inst2__I_1[0:0] = I_1[0:0];

  assign inst2__I_2[0:0] = I_2[0:0];

  assign inst2__I_3[0:0] = I_3[0:0];

  assign inst2__I_4[0:0] = I_4[0:0];

  assign inst2__I_5[0:0] = I_5[0:0];

  assign inst2__I_6[0:0] = I_6[0:0];

  assign inst2__I_7[0:0] = I_7[0:0];

  assign inst2__I_8[0:0] = I_8[0:0];

  assign inst2__I_9[0:0] = I_9[0:0];

  assign O[0:0] = inst2__O[0:0];


endmodule  // CB_10_1

/* External Modules
module test_pe (
  input  bit0,
  input  bit1,
  input  bit2,
  input [7:0] cfg_a,
  input [31:0] cfg_d,
  input  cfg_en,
  input  clk,
  input  clk_en,
  input [15:0] data0,
  input [15:0] data1,
  output  irq,
  output [31:0] read_data,
  output [15:0] res,
  output [3:0] res_p,
  input  rst_n
);

endmodule  // test_pe

*/
module PECore (
  input [0:0] bit0,
  input [0:0] bit1,
  input [0:0] bit2,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] data0,
  input [15:0] data1,
  output [31:0] read_config_data,
  output [15:0] res,
  output [3:0] res_p,
  input  reset,
  input [3:0] stall
);


  wire  inst0__bit0;
  wire  inst0__bit1;
  wire  inst0__bit2;
  wire [7:0] inst0__cfg_a;
  wire [31:0] inst0__cfg_d;
  wire  inst0__cfg_en;
  wire  inst0__clk;
  wire  inst0__clk_en;
  wire [15:0] inst0__data0;
  wire [15:0] inst0__data1;
  wire  inst0__irq;
  wire [31:0] inst0__read_data;
  wire [15:0] inst0__res;
  wire [3:0] inst0__res_p;
  wire  inst0__rst_n;
  test_pe inst0(
    .bit0(inst0__bit0),
    .bit1(inst0__bit1),
    .bit2(inst0__bit2),
    .cfg_a(inst0__cfg_a),
    .cfg_d(inst0__cfg_d),
    .cfg_en(inst0__cfg_en),
    .clk(inst0__clk),
    .clk_en(inst0__clk_en),
    .data0(inst0__data0),
    .data1(inst0__data1),
    .irq(inst0__irq),
    .read_data(inst0__read_data),
    .res(inst0__res),
    .res_p(inst0__res_p),
    .rst_n(inst0__rst_n)
  );

  // Instancing generated Module: coreir.not(width:1)
  wire [0:0] inst1__in;
  wire [0:0] inst1__out;
  coreir_not #(.width(1)) inst1(
    .in(inst1__in),
    .out(inst1__out)
  );

  assign inst0__bit0 = bit0[0];

  assign inst0__bit1 = bit1[0];

  assign inst0__bit2 = bit2[0];

  assign inst0__cfg_a[7:0] = config_config_addr[7:0];

  assign inst0__cfg_d[31:0] = config_config_data[31:0];

  assign inst0__cfg_en = config_write[0];

  assign inst0__clk = clk;

  assign inst0__clk_en = inst1__out[0];

  assign inst0__data0[15:0] = data0[15:0];

  assign inst0__data1[15:0] = data1[15:0];

  assign read_config_data[31:0] = inst0__read_data[31:0];

  assign res[15:0] = inst0__res[15:0];

  assign res_p[3:0] = inst0__res_p[3:0];

  assign inst0__rst_n = reset;

  assign inst1__in[0] = stall[0];


endmodule  // PECore

module Tile_PECore (
  input  clk,
  input [31:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] east_I_layer16_0,
  input [15:0] east_I_layer16_1,
  input [15:0] east_I_layer16_2,
  input [15:0] east_I_layer16_3,
  input [15:0] east_I_layer16_4,
  input [0:0] east_I_layer1_0,
  input [0:0] east_I_layer1_1,
  input [0:0] east_I_layer1_2,
  input [0:0] east_I_layer1_3,
  input [0:0] east_I_layer1_4,
  output [15:0] east_O_layer16_0,
  output [15:0] east_O_layer16_1,
  output [15:0] east_O_layer16_2,
  output [15:0] east_O_layer16_3,
  output [15:0] east_O_layer16_4,
  output [0:0] east_O_layer1_0,
  output [0:0] east_O_layer1_1,
  output [0:0] east_O_layer1_2,
  output [0:0] east_O_layer1_3,
  output [0:0] east_O_layer1_4,
  input [15:0] north_I_layer16_0,
  input [15:0] north_I_layer16_1,
  input [15:0] north_I_layer16_2,
  input [15:0] north_I_layer16_3,
  input [15:0] north_I_layer16_4,
  input [0:0] north_I_layer1_0,
  input [0:0] north_I_layer1_1,
  input [0:0] north_I_layer1_2,
  input [0:0] north_I_layer1_3,
  input [0:0] north_I_layer1_4,
  output [15:0] north_O_layer16_0,
  output [15:0] north_O_layer16_1,
  output [15:0] north_O_layer16_2,
  output [15:0] north_O_layer16_3,
  output [15:0] north_O_layer16_4,
  output [0:0] north_O_layer1_0,
  output [0:0] north_O_layer1_1,
  output [0:0] north_O_layer1_2,
  output [0:0] north_O_layer1_3,
  output [0:0] north_O_layer1_4,
  output [31:0] read_config_data,
  input  reset,
  input [15:0] south_I_layer16_0,
  input [15:0] south_I_layer16_1,
  input [15:0] south_I_layer16_2,
  input [15:0] south_I_layer16_3,
  input [15:0] south_I_layer16_4,
  input [0:0] south_I_layer1_0,
  input [0:0] south_I_layer1_1,
  input [0:0] south_I_layer1_2,
  input [0:0] south_I_layer1_3,
  input [0:0] south_I_layer1_4,
  output [15:0] south_O_layer16_0,
  output [15:0] south_O_layer16_1,
  output [15:0] south_O_layer16_2,
  output [15:0] south_O_layer16_3,
  output [15:0] south_O_layer16_4,
  output [0:0] south_O_layer1_0,
  output [0:0] south_O_layer1_1,
  output [0:0] south_O_layer1_2,
  output [0:0] south_O_layer1_3,
  output [0:0] south_O_layer1_4,
  input [3:0] stall,
  input [15:0] tile_id,
  input [15:0] west_I_layer16_0,
  input [15:0] west_I_layer16_1,
  input [15:0] west_I_layer16_2,
  input [15:0] west_I_layer16_3,
  input [15:0] west_I_layer16_4,
  input [0:0] west_I_layer1_0,
  input [0:0] west_I_layer1_1,
  input [0:0] west_I_layer1_2,
  input [0:0] west_I_layer1_3,
  input [0:0] west_I_layer1_4,
  output [15:0] west_O_layer16_0,
  output [15:0] west_O_layer16_1,
  output [15:0] west_O_layer16_2,
  output [15:0] west_O_layer16_3,
  output [15:0] west_O_layer16_4,
  output [0:0] west_O_layer1_0,
  output [0:0] west_O_layer1_1,
  output [0:0] west_O_layer1_2,
  output [0:0] west_O_layer1_3,
  output [0:0] west_O_layer1_4
);


  wire  inst0__clk;
  wire [7:0] inst0__config_config_addr;
  wire [31:0] inst0__config_config_data;
  wire [0:0] inst0__config_read;
  wire [0:0] inst0__config_write;
  wire [15:0] inst0__east_I_layer16_0;
  wire [15:0] inst0__east_I_layer16_1;
  wire [15:0] inst0__east_I_layer16_2;
  wire [15:0] inst0__east_I_layer16_3;
  wire [15:0] inst0__east_I_layer16_4;
  wire [0:0] inst0__east_I_layer1_0;
  wire [0:0] inst0__east_I_layer1_1;
  wire [0:0] inst0__east_I_layer1_2;
  wire [0:0] inst0__east_I_layer1_3;
  wire [0:0] inst0__east_I_layer1_4;
  wire [15:0] inst0__east_O_layer16_0;
  wire [15:0] inst0__east_O_layer16_1;
  wire [15:0] inst0__east_O_layer16_2;
  wire [15:0] inst0__east_O_layer16_3;
  wire [15:0] inst0__east_O_layer16_4;
  wire [0:0] inst0__east_O_layer1_0;
  wire [0:0] inst0__east_O_layer1_1;
  wire [0:0] inst0__east_O_layer1_2;
  wire [0:0] inst0__east_O_layer1_3;
  wire [0:0] inst0__east_O_layer1_4;
  wire [15:0] inst0__north_I_layer16_0;
  wire [15:0] inst0__north_I_layer16_1;
  wire [15:0] inst0__north_I_layer16_2;
  wire [15:0] inst0__north_I_layer16_3;
  wire [15:0] inst0__north_I_layer16_4;
  wire [0:0] inst0__north_I_layer1_0;
  wire [0:0] inst0__north_I_layer1_1;
  wire [0:0] inst0__north_I_layer1_2;
  wire [0:0] inst0__north_I_layer1_3;
  wire [0:0] inst0__north_I_layer1_4;
  wire [15:0] inst0__north_O_layer16_0;
  wire [15:0] inst0__north_O_layer16_1;
  wire [15:0] inst0__north_O_layer16_2;
  wire [15:0] inst0__north_O_layer16_3;
  wire [15:0] inst0__north_O_layer16_4;
  wire [0:0] inst0__north_O_layer1_0;
  wire [0:0] inst0__north_O_layer1_1;
  wire [0:0] inst0__north_O_layer1_2;
  wire [0:0] inst0__north_O_layer1_3;
  wire [0:0] inst0__north_O_layer1_4;
  wire [31:0] inst0__read_config_data;
  wire [15:0] inst0__res;
  wire [3:0] inst0__res_p;
  wire  inst0__reset;
  wire [15:0] inst0__south_I_layer16_0;
  wire [15:0] inst0__south_I_layer16_1;
  wire [15:0] inst0__south_I_layer16_2;
  wire [15:0] inst0__south_I_layer16_3;
  wire [15:0] inst0__south_I_layer16_4;
  wire [0:0] inst0__south_I_layer1_0;
  wire [0:0] inst0__south_I_layer1_1;
  wire [0:0] inst0__south_I_layer1_2;
  wire [0:0] inst0__south_I_layer1_3;
  wire [0:0] inst0__south_I_layer1_4;
  wire [15:0] inst0__south_O_layer16_0;
  wire [15:0] inst0__south_O_layer16_1;
  wire [15:0] inst0__south_O_layer16_2;
  wire [15:0] inst0__south_O_layer16_3;
  wire [15:0] inst0__south_O_layer16_4;
  wire [0:0] inst0__south_O_layer1_0;
  wire [0:0] inst0__south_O_layer1_1;
  wire [0:0] inst0__south_O_layer1_2;
  wire [0:0] inst0__south_O_layer1_3;
  wire [0:0] inst0__south_O_layer1_4;
  wire [15:0] inst0__west_I_layer16_0;
  wire [15:0] inst0__west_I_layer16_1;
  wire [15:0] inst0__west_I_layer16_2;
  wire [15:0] inst0__west_I_layer16_3;
  wire [15:0] inst0__west_I_layer16_4;
  wire [0:0] inst0__west_I_layer1_0;
  wire [0:0] inst0__west_I_layer1_1;
  wire [0:0] inst0__west_I_layer1_2;
  wire [0:0] inst0__west_I_layer1_3;
  wire [0:0] inst0__west_I_layer1_4;
  wire [15:0] inst0__west_O_layer16_0;
  wire [15:0] inst0__west_O_layer16_1;
  wire [15:0] inst0__west_O_layer16_2;
  wire [15:0] inst0__west_O_layer16_3;
  wire [15:0] inst0__west_O_layer16_4;
  wire [0:0] inst0__west_O_layer1_0;
  wire [0:0] inst0__west_O_layer1_1;
  wire [0:0] inst0__west_O_layer1_2;
  wire [0:0] inst0__west_O_layer1_3;
  wire [0:0] inst0__west_O_layer1_4;
  SB_Out_Bits_16___Out_Bits_4__ inst0(
    .clk(inst0__clk),
    .config_config_addr(inst0__config_config_addr),
    .config_config_data(inst0__config_config_data),
    .config_read(inst0__config_read),
    .config_write(inst0__config_write),
    .east_I_layer16_0(inst0__east_I_layer16_0),
    .east_I_layer16_1(inst0__east_I_layer16_1),
    .east_I_layer16_2(inst0__east_I_layer16_2),
    .east_I_layer16_3(inst0__east_I_layer16_3),
    .east_I_layer16_4(inst0__east_I_layer16_4),
    .east_I_layer1_0(inst0__east_I_layer1_0),
    .east_I_layer1_1(inst0__east_I_layer1_1),
    .east_I_layer1_2(inst0__east_I_layer1_2),
    .east_I_layer1_3(inst0__east_I_layer1_3),
    .east_I_layer1_4(inst0__east_I_layer1_4),
    .east_O_layer16_0(inst0__east_O_layer16_0),
    .east_O_layer16_1(inst0__east_O_layer16_1),
    .east_O_layer16_2(inst0__east_O_layer16_2),
    .east_O_layer16_3(inst0__east_O_layer16_3),
    .east_O_layer16_4(inst0__east_O_layer16_4),
    .east_O_layer1_0(inst0__east_O_layer1_0),
    .east_O_layer1_1(inst0__east_O_layer1_1),
    .east_O_layer1_2(inst0__east_O_layer1_2),
    .east_O_layer1_3(inst0__east_O_layer1_3),
    .east_O_layer1_4(inst0__east_O_layer1_4),
    .north_I_layer16_0(inst0__north_I_layer16_0),
    .north_I_layer16_1(inst0__north_I_layer16_1),
    .north_I_layer16_2(inst0__north_I_layer16_2),
    .north_I_layer16_3(inst0__north_I_layer16_3),
    .north_I_layer16_4(inst0__north_I_layer16_4),
    .north_I_layer1_0(inst0__north_I_layer1_0),
    .north_I_layer1_1(inst0__north_I_layer1_1),
    .north_I_layer1_2(inst0__north_I_layer1_2),
    .north_I_layer1_3(inst0__north_I_layer1_3),
    .north_I_layer1_4(inst0__north_I_layer1_4),
    .north_O_layer16_0(inst0__north_O_layer16_0),
    .north_O_layer16_1(inst0__north_O_layer16_1),
    .north_O_layer16_2(inst0__north_O_layer16_2),
    .north_O_layer16_3(inst0__north_O_layer16_3),
    .north_O_layer16_4(inst0__north_O_layer16_4),
    .north_O_layer1_0(inst0__north_O_layer1_0),
    .north_O_layer1_1(inst0__north_O_layer1_1),
    .north_O_layer1_2(inst0__north_O_layer1_2),
    .north_O_layer1_3(inst0__north_O_layer1_3),
    .north_O_layer1_4(inst0__north_O_layer1_4),
    .read_config_data(inst0__read_config_data),
    .res(inst0__res),
    .res_p(inst0__res_p),
    .reset(inst0__reset),
    .south_I_layer16_0(inst0__south_I_layer16_0),
    .south_I_layer16_1(inst0__south_I_layer16_1),
    .south_I_layer16_2(inst0__south_I_layer16_2),
    .south_I_layer16_3(inst0__south_I_layer16_3),
    .south_I_layer16_4(inst0__south_I_layer16_4),
    .south_I_layer1_0(inst0__south_I_layer1_0),
    .south_I_layer1_1(inst0__south_I_layer1_1),
    .south_I_layer1_2(inst0__south_I_layer1_2),
    .south_I_layer1_3(inst0__south_I_layer1_3),
    .south_I_layer1_4(inst0__south_I_layer1_4),
    .south_O_layer16_0(inst0__south_O_layer16_0),
    .south_O_layer16_1(inst0__south_O_layer16_1),
    .south_O_layer16_2(inst0__south_O_layer16_2),
    .south_O_layer16_3(inst0__south_O_layer16_3),
    .south_O_layer16_4(inst0__south_O_layer16_4),
    .south_O_layer1_0(inst0__south_O_layer1_0),
    .south_O_layer1_1(inst0__south_O_layer1_1),
    .south_O_layer1_2(inst0__south_O_layer1_2),
    .south_O_layer1_3(inst0__south_O_layer1_3),
    .south_O_layer1_4(inst0__south_O_layer1_4),
    .west_I_layer16_0(inst0__west_I_layer16_0),
    .west_I_layer16_1(inst0__west_I_layer16_1),
    .west_I_layer16_2(inst0__west_I_layer16_2),
    .west_I_layer16_3(inst0__west_I_layer16_3),
    .west_I_layer16_4(inst0__west_I_layer16_4),
    .west_I_layer1_0(inst0__west_I_layer1_0),
    .west_I_layer1_1(inst0__west_I_layer1_1),
    .west_I_layer1_2(inst0__west_I_layer1_2),
    .west_I_layer1_3(inst0__west_I_layer1_3),
    .west_I_layer1_4(inst0__west_I_layer1_4),
    .west_O_layer16_0(inst0__west_O_layer16_0),
    .west_O_layer16_1(inst0__west_O_layer16_1),
    .west_O_layer16_2(inst0__west_O_layer16_2),
    .west_O_layer16_3(inst0__west_O_layer16_3),
    .west_O_layer16_4(inst0__west_O_layer16_4),
    .west_O_layer1_0(inst0__west_O_layer1_0),
    .west_O_layer1_1(inst0__west_O_layer1_1),
    .west_O_layer1_2(inst0__west_O_layer1_2),
    .west_O_layer1_3(inst0__west_O_layer1_3),
    .west_O_layer1_4(inst0__west_O_layer1_4)
  );

  wire [0:0] inst1__bit0;
  wire [0:0] inst1__bit1;
  wire [0:0] inst1__bit2;
  wire  inst1__clk;
  wire [7:0] inst1__config_config_addr;
  wire [31:0] inst1__config_config_data;
  wire [0:0] inst1__config_read;
  wire [0:0] inst1__config_write;
  wire [15:0] inst1__data0;
  wire [15:0] inst1__data1;
  wire [31:0] inst1__read_config_data;
  wire [15:0] inst1__res;
  wire [3:0] inst1__res_p;
  wire  inst1__reset;
  wire [3:0] inst1__stall;
  PECore inst1(
    .bit0(inst1__bit0),
    .bit1(inst1__bit1),
    .bit2(inst1__bit2),
    .clk(inst1__clk),
    .config_config_addr(inst1__config_config_addr),
    .config_config_data(inst1__config_config_data),
    .config_read(inst1__config_read),
    .config_write(inst1__config_write),
    .data0(inst1__data0),
    .data1(inst1__data1),
    .read_config_data(inst1__read_config_data),
    .res(inst1__res),
    .res_p(inst1__res_p),
    .reset(inst1__reset),
    .stall(inst1__stall)
  );

  wire  inst10__in0;
  wire  inst10__in1;
  wire  inst10__out;
  corebit_and inst10(
    .in0(inst10__in0),
    .in1(inst10__in1),
    .out(inst10__out)
  );

  wire [7:0] inst11__I;
  wire  inst11__O;
  Decode08 inst11(
    .I(inst11__I),
    .O(inst11__O)
  );

  wire  inst12__in0;
  wire  inst12__in1;
  wire  inst12__out;
  corebit_and inst12(
    .in0(inst12__in0),
    .in1(inst12__in1),
    .out(inst12__out)
  );

  wire [7:0] inst13__I;
  wire  inst13__O;
  Decode18 inst13(
    .I(inst13__I),
    .O(inst13__O)
  );

  wire  inst14__in0;
  wire  inst14__in1;
  wire  inst14__out;
  corebit_and inst14(
    .in0(inst14__in0),
    .in1(inst14__in1),
    .out(inst14__out)
  );

  wire [7:0] inst15__I;
  wire  inst15__O;
  Decode28 inst15(
    .I(inst15__I),
    .O(inst15__O)
  );

  wire  inst16__in0;
  wire  inst16__in1;
  wire  inst16__out;
  corebit_and inst16(
    .in0(inst16__in0),
    .in1(inst16__in1),
    .out(inst16__out)
  );

  wire [7:0] inst17__I;
  wire  inst17__O;
  Decode38 inst17(
    .I(inst17__I),
    .O(inst17__O)
  );

  wire  inst18__in0;
  wire  inst18__in1;
  wire  inst18__out;
  corebit_and inst18(
    .in0(inst18__in0),
    .in1(inst18__in1),
    .out(inst18__out)
  );

  wire [7:0] inst19__I;
  wire  inst19__O;
  Decode48 inst19(
    .I(inst19__I),
    .O(inst19__O)
  );

  wire [15:0] inst2__I_0;
  wire [15:0] inst2__I_1;
  wire [15:0] inst2__I_2;
  wire [15:0] inst2__I_3;
  wire [15:0] inst2__I_4;
  wire [15:0] inst2__I_5;
  wire [15:0] inst2__I_6;
  wire [15:0] inst2__I_7;
  wire [15:0] inst2__I_8;
  wire [15:0] inst2__I_9;
  wire [15:0] inst2__O;
  wire  inst2__clk;
  wire [7:0] inst2__config_config_addr;
  wire [31:0] inst2__config_config_data;
  wire [0:0] inst2__config_read;
  wire [0:0] inst2__config_write;
  wire [31:0] inst2__read_config_data;
  wire  inst2__reset;
  CB_10_16 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .clk(inst2__clk),
    .config_config_addr(inst2__config_config_addr),
    .config_config_data(inst2__config_config_data),
    .config_read(inst2__config_read),
    .config_write(inst2__config_write),
    .read_config_data(inst2__read_config_data),
    .reset(inst2__reset)
  );

  wire  inst20__in0;
  wire  inst20__in1;
  wire  inst20__out;
  corebit_and inst20(
    .in0(inst20__in0),
    .in1(inst20__in1),
    .out(inst20__out)
  );

  wire [7:0] inst21__I;
  wire  inst21__O;
  Decode58 inst21(
    .I(inst21__I),
    .O(inst21__O)
  );

  wire  inst22__in0;
  wire  inst22__in1;
  wire  inst22__out;
  corebit_and inst22(
    .in0(inst22__in0),
    .in1(inst22__in1),
    .out(inst22__out)
  );

  wire [7:0] inst23__I;
  wire  inst23__O;
  Decode68 inst23(
    .I(inst23__I),
    .O(inst23__O)
  );

  wire  inst24__in0;
  wire  inst24__in1;
  wire  inst24__out;
  corebit_and inst24(
    .in0(inst24__in0),
    .in1(inst24__in1),
    .out(inst24__out)
  );

  wire [15:0] inst3__I_0;
  wire [15:0] inst3__I_1;
  wire [15:0] inst3__I_2;
  wire [15:0] inst3__I_3;
  wire [15:0] inst3__I_4;
  wire [15:0] inst3__I_5;
  wire [15:0] inst3__I_6;
  wire [15:0] inst3__I_7;
  wire [15:0] inst3__I_8;
  wire [15:0] inst3__I_9;
  wire [15:0] inst3__O;
  wire  inst3__clk;
  wire [7:0] inst3__config_config_addr;
  wire [31:0] inst3__config_config_data;
  wire [0:0] inst3__config_read;
  wire [0:0] inst3__config_write;
  wire [31:0] inst3__read_config_data;
  wire  inst3__reset;
  CB_10_16 inst3(
    .I_0(inst3__I_0),
    .I_1(inst3__I_1),
    .I_2(inst3__I_2),
    .I_3(inst3__I_3),
    .I_4(inst3__I_4),
    .I_5(inst3__I_5),
    .I_6(inst3__I_6),
    .I_7(inst3__I_7),
    .I_8(inst3__I_8),
    .I_9(inst3__I_9),
    .O(inst3__O),
    .clk(inst3__clk),
    .config_config_addr(inst3__config_config_addr),
    .config_config_data(inst3__config_config_data),
    .config_read(inst3__config_read),
    .config_write(inst3__config_write),
    .read_config_data(inst3__read_config_data),
    .reset(inst3__reset)
  );

  wire [0:0] inst4__I_0;
  wire [0:0] inst4__I_1;
  wire [0:0] inst4__I_2;
  wire [0:0] inst4__I_3;
  wire [0:0] inst4__I_4;
  wire [0:0] inst4__I_5;
  wire [0:0] inst4__I_6;
  wire [0:0] inst4__I_7;
  wire [0:0] inst4__I_8;
  wire [0:0] inst4__I_9;
  wire [0:0] inst4__O;
  wire  inst4__clk;
  wire [7:0] inst4__config_config_addr;
  wire [31:0] inst4__config_config_data;
  wire [0:0] inst4__config_read;
  wire [0:0] inst4__config_write;
  wire [31:0] inst4__read_config_data;
  wire  inst4__reset;
  CB_10_1 inst4(
    .I_0(inst4__I_0),
    .I_1(inst4__I_1),
    .I_2(inst4__I_2),
    .I_3(inst4__I_3),
    .I_4(inst4__I_4),
    .I_5(inst4__I_5),
    .I_6(inst4__I_6),
    .I_7(inst4__I_7),
    .I_8(inst4__I_8),
    .I_9(inst4__I_9),
    .O(inst4__O),
    .clk(inst4__clk),
    .config_config_addr(inst4__config_config_addr),
    .config_config_data(inst4__config_config_data),
    .config_read(inst4__config_read),
    .config_write(inst4__config_write),
    .read_config_data(inst4__read_config_data),
    .reset(inst4__reset)
  );

  wire [0:0] inst5__I_0;
  wire [0:0] inst5__I_1;
  wire [0:0] inst5__I_2;
  wire [0:0] inst5__I_3;
  wire [0:0] inst5__I_4;
  wire [0:0] inst5__I_5;
  wire [0:0] inst5__I_6;
  wire [0:0] inst5__I_7;
  wire [0:0] inst5__I_8;
  wire [0:0] inst5__I_9;
  wire [0:0] inst5__O;
  wire  inst5__clk;
  wire [7:0] inst5__config_config_addr;
  wire [31:0] inst5__config_config_data;
  wire [0:0] inst5__config_read;
  wire [0:0] inst5__config_write;
  wire [31:0] inst5__read_config_data;
  wire  inst5__reset;
  CB_10_1 inst5(
    .I_0(inst5__I_0),
    .I_1(inst5__I_1),
    .I_2(inst5__I_2),
    .I_3(inst5__I_3),
    .I_4(inst5__I_4),
    .I_5(inst5__I_5),
    .I_6(inst5__I_6),
    .I_7(inst5__I_7),
    .I_8(inst5__I_8),
    .I_9(inst5__I_9),
    .O(inst5__O),
    .clk(inst5__clk),
    .config_config_addr(inst5__config_config_addr),
    .config_config_data(inst5__config_config_data),
    .config_read(inst5__config_read),
    .config_write(inst5__config_write),
    .read_config_data(inst5__read_config_data),
    .reset(inst5__reset)
  );

  wire [0:0] inst6__I_0;
  wire [0:0] inst6__I_1;
  wire [0:0] inst6__I_2;
  wire [0:0] inst6__I_3;
  wire [0:0] inst6__I_4;
  wire [0:0] inst6__I_5;
  wire [0:0] inst6__I_6;
  wire [0:0] inst6__I_7;
  wire [0:0] inst6__I_8;
  wire [0:0] inst6__I_9;
  wire [0:0] inst6__O;
  wire  inst6__clk;
  wire [7:0] inst6__config_config_addr;
  wire [31:0] inst6__config_config_data;
  wire [0:0] inst6__config_read;
  wire [0:0] inst6__config_write;
  wire [31:0] inst6__read_config_data;
  wire  inst6__reset;
  CB_10_1 inst6(
    .I_0(inst6__I_0),
    .I_1(inst6__I_1),
    .I_2(inst6__I_2),
    .I_3(inst6__I_3),
    .I_4(inst6__I_4),
    .I_5(inst6__I_5),
    .I_6(inst6__I_6),
    .I_7(inst6__I_7),
    .I_8(inst6__I_8),
    .I_9(inst6__I_9),
    .O(inst6__O),
    .clk(inst6__clk),
    .config_config_addr(inst6__config_config_addr),
    .config_config_data(inst6__config_config_data),
    .config_read(inst6__config_read),
    .config_write(inst6__config_write),
    .read_config_data(inst6__read_config_data),
    .reset(inst6__reset)
  );

  wire [0:0] inst7__EN;
  wire [31:0] inst7__I_0;
  wire [31:0] inst7__I_1;
  wire [31:0] inst7__I_2;
  wire [31:0] inst7__I_3;
  wire [31:0] inst7__I_4;
  wire [31:0] inst7__I_5;
  wire [31:0] inst7__I_6;
  wire [31:0] inst7__O;
  wire [7:0] inst7__S;
  MuxWithDefaultWrapper_7_32_8_0 inst7(
    .EN(inst7__EN),
    .I_0(inst7__I_0),
    .I_1(inst7__I_1),
    .I_2(inst7__I_2),
    .I_3(inst7__I_3),
    .I_4(inst7__I_4),
    .I_5(inst7__I_5),
    .I_6(inst7__I_6),
    .O(inst7__O),
    .S(inst7__S)
  );

  // Instancing generated Module: coreir.eq(width:16)
  wire [15:0] inst8__in0;
  wire [15:0] inst8__in1;
  wire  inst8__out;
  coreir_eq #(.width(16)) inst8(
    .in0(inst8__in0),
    .in1(inst8__in1),
    .out(inst8__out)
  );

  wire  inst9__in0;
  wire  inst9__in1;
  wire  inst9__out;
  corebit_and inst9(
    .in0(inst9__in0),
    .in1(inst9__in1),
    .out(inst9__out)
  );

  assign inst0__clk = clk;

  assign inst0__config_config_addr[0] = config_config_addr[24];

  assign inst0__config_config_addr[1] = config_config_addr[25];

  assign inst0__config_config_addr[2] = config_config_addr[26];

  assign inst0__config_config_addr[3] = config_config_addr[27];

  assign inst0__config_config_addr[4] = config_config_addr[28];

  assign inst0__config_config_addr[5] = config_config_addr[29];

  assign inst0__config_config_addr[6] = config_config_addr[30];

  assign inst0__config_config_addr[7] = config_config_addr[31];

  assign inst0__config_config_data[31:0] = config_config_data[31:0];

  assign inst0__config_read[0:0] = config_read[0:0];

  assign inst0__config_write[0] = inst14__out;

  assign inst0__east_I_layer16_0[15:0] = east_I_layer16_0[15:0];

  assign inst0__east_I_layer16_1[15:0] = east_I_layer16_1[15:0];

  assign inst0__east_I_layer16_2[15:0] = east_I_layer16_2[15:0];

  assign inst0__east_I_layer16_3[15:0] = east_I_layer16_3[15:0];

  assign inst0__east_I_layer16_4[15:0] = east_I_layer16_4[15:0];

  assign inst0__east_I_layer1_0[0:0] = east_I_layer1_0[0:0];

  assign inst0__east_I_layer1_1[0:0] = east_I_layer1_1[0:0];

  assign inst0__east_I_layer1_2[0:0] = east_I_layer1_2[0:0];

  assign inst0__east_I_layer1_3[0:0] = east_I_layer1_3[0:0];

  assign inst0__east_I_layer1_4[0:0] = east_I_layer1_4[0:0];

  assign east_O_layer16_0[15:0] = inst0__east_O_layer16_0[15:0];

  assign east_O_layer16_1[15:0] = inst0__east_O_layer16_1[15:0];

  assign east_O_layer16_2[15:0] = inst0__east_O_layer16_2[15:0];

  assign east_O_layer16_3[15:0] = inst0__east_O_layer16_3[15:0];

  assign east_O_layer16_4[15:0] = inst0__east_O_layer16_4[15:0];

  assign east_O_layer1_0[0:0] = inst0__east_O_layer1_0[0:0];

  assign east_O_layer1_1[0:0] = inst0__east_O_layer1_1[0:0];

  assign east_O_layer1_2[0:0] = inst0__east_O_layer1_2[0:0];

  assign east_O_layer1_3[0:0] = inst0__east_O_layer1_3[0:0];

  assign east_O_layer1_4[0:0] = inst0__east_O_layer1_4[0:0];

  assign inst0__north_I_layer16_0[15:0] = north_I_layer16_0[15:0];

  assign inst0__north_I_layer16_1[15:0] = north_I_layer16_1[15:0];

  assign inst0__north_I_layer16_2[15:0] = north_I_layer16_2[15:0];

  assign inst0__north_I_layer16_3[15:0] = north_I_layer16_3[15:0];

  assign inst0__north_I_layer16_4[15:0] = north_I_layer16_4[15:0];

  assign inst0__north_I_layer1_0[0:0] = north_I_layer1_0[0:0];

  assign inst0__north_I_layer1_1[0:0] = north_I_layer1_1[0:0];

  assign inst0__north_I_layer1_2[0:0] = north_I_layer1_2[0:0];

  assign inst0__north_I_layer1_3[0:0] = north_I_layer1_3[0:0];

  assign inst0__north_I_layer1_4[0:0] = north_I_layer1_4[0:0];

  assign inst2__I_5[15:0] = inst0__north_O_layer16_0[15:0];

  assign north_O_layer16_0[15:0] = inst0__north_O_layer16_0[15:0];

  assign inst2__I_6[15:0] = inst0__north_O_layer16_1[15:0];

  assign north_O_layer16_1[15:0] = inst0__north_O_layer16_1[15:0];

  assign inst2__I_7[15:0] = inst0__north_O_layer16_2[15:0];

  assign north_O_layer16_2[15:0] = inst0__north_O_layer16_2[15:0];

  assign inst2__I_8[15:0] = inst0__north_O_layer16_3[15:0];

  assign north_O_layer16_3[15:0] = inst0__north_O_layer16_3[15:0];

  assign inst2__I_9[15:0] = inst0__north_O_layer16_4[15:0];

  assign north_O_layer16_4[15:0] = inst0__north_O_layer16_4[15:0];

  assign inst4__I_5[0:0] = inst0__north_O_layer1_0[0:0];

  assign inst6__I_5[0:0] = inst0__north_O_layer1_0[0:0];

  assign north_O_layer1_0[0:0] = inst0__north_O_layer1_0[0:0];

  assign inst4__I_6[0:0] = inst0__north_O_layer1_1[0:0];

  assign inst6__I_6[0:0] = inst0__north_O_layer1_1[0:0];

  assign north_O_layer1_1[0:0] = inst0__north_O_layer1_1[0:0];

  assign inst4__I_7[0:0] = inst0__north_O_layer1_2[0:0];

  assign inst6__I_7[0:0] = inst0__north_O_layer1_2[0:0];

  assign north_O_layer1_2[0:0] = inst0__north_O_layer1_2[0:0];

  assign inst4__I_8[0:0] = inst0__north_O_layer1_3[0:0];

  assign inst6__I_8[0:0] = inst0__north_O_layer1_3[0:0];

  assign north_O_layer1_3[0:0] = inst0__north_O_layer1_3[0:0];

  assign inst4__I_9[0:0] = inst0__north_O_layer1_4[0:0];

  assign inst6__I_9[0:0] = inst0__north_O_layer1_4[0:0];

  assign north_O_layer1_4[0:0] = inst0__north_O_layer1_4[0:0];

  assign inst7__I_1[31:0] = inst0__read_config_data[31:0];

  assign inst0__res[15:0] = inst1__res[15:0];

  assign inst0__res_p[3:0] = inst1__res_p[3:0];

  assign inst0__reset = reset;

  assign inst0__south_I_layer16_0[15:0] = south_I_layer16_0[15:0];

  assign inst0__south_I_layer16_1[15:0] = south_I_layer16_1[15:0];

  assign inst0__south_I_layer16_2[15:0] = south_I_layer16_2[15:0];

  assign inst0__south_I_layer16_3[15:0] = south_I_layer16_3[15:0];

  assign inst0__south_I_layer16_4[15:0] = south_I_layer16_4[15:0];

  assign inst0__south_I_layer1_0[0:0] = south_I_layer1_0[0:0];

  assign inst0__south_I_layer1_1[0:0] = south_I_layer1_1[0:0];

  assign inst0__south_I_layer1_2[0:0] = south_I_layer1_2[0:0];

  assign inst0__south_I_layer1_3[0:0] = south_I_layer1_3[0:0];

  assign inst0__south_I_layer1_4[0:0] = south_I_layer1_4[0:0];

  assign south_O_layer16_0[15:0] = inst0__south_O_layer16_0[15:0];

  assign south_O_layer16_1[15:0] = inst0__south_O_layer16_1[15:0];

  assign south_O_layer16_2[15:0] = inst0__south_O_layer16_2[15:0];

  assign south_O_layer16_3[15:0] = inst0__south_O_layer16_3[15:0];

  assign south_O_layer16_4[15:0] = inst0__south_O_layer16_4[15:0];

  assign south_O_layer1_0[0:0] = inst0__south_O_layer1_0[0:0];

  assign south_O_layer1_1[0:0] = inst0__south_O_layer1_1[0:0];

  assign south_O_layer1_2[0:0] = inst0__south_O_layer1_2[0:0];

  assign south_O_layer1_3[0:0] = inst0__south_O_layer1_3[0:0];

  assign south_O_layer1_4[0:0] = inst0__south_O_layer1_4[0:0];

  assign inst0__west_I_layer16_0[15:0] = west_I_layer16_0[15:0];

  assign inst0__west_I_layer16_1[15:0] = west_I_layer16_1[15:0];

  assign inst0__west_I_layer16_2[15:0] = west_I_layer16_2[15:0];

  assign inst0__west_I_layer16_3[15:0] = west_I_layer16_3[15:0];

  assign inst0__west_I_layer16_4[15:0] = west_I_layer16_4[15:0];

  assign inst0__west_I_layer1_0[0:0] = west_I_layer1_0[0:0];

  assign inst0__west_I_layer1_1[0:0] = west_I_layer1_1[0:0];

  assign inst0__west_I_layer1_2[0:0] = west_I_layer1_2[0:0];

  assign inst0__west_I_layer1_3[0:0] = west_I_layer1_3[0:0];

  assign inst0__west_I_layer1_4[0:0] = west_I_layer1_4[0:0];

  assign inst3__I_5[15:0] = inst0__west_O_layer16_0[15:0];

  assign west_O_layer16_0[15:0] = inst0__west_O_layer16_0[15:0];

  assign inst3__I_6[15:0] = inst0__west_O_layer16_1[15:0];

  assign west_O_layer16_1[15:0] = inst0__west_O_layer16_1[15:0];

  assign inst3__I_7[15:0] = inst0__west_O_layer16_2[15:0];

  assign west_O_layer16_2[15:0] = inst0__west_O_layer16_2[15:0];

  assign inst3__I_8[15:0] = inst0__west_O_layer16_3[15:0];

  assign west_O_layer16_3[15:0] = inst0__west_O_layer16_3[15:0];

  assign inst3__I_9[15:0] = inst0__west_O_layer16_4[15:0];

  assign west_O_layer16_4[15:0] = inst0__west_O_layer16_4[15:0];

  assign inst5__I_5[0:0] = inst0__west_O_layer1_0[0:0];

  assign west_O_layer1_0[0:0] = inst0__west_O_layer1_0[0:0];

  assign inst5__I_6[0:0] = inst0__west_O_layer1_1[0:0];

  assign west_O_layer1_1[0:0] = inst0__west_O_layer1_1[0:0];

  assign inst5__I_7[0:0] = inst0__west_O_layer1_2[0:0];

  assign west_O_layer1_2[0:0] = inst0__west_O_layer1_2[0:0];

  assign inst5__I_8[0:0] = inst0__west_O_layer1_3[0:0];

  assign west_O_layer1_3[0:0] = inst0__west_O_layer1_3[0:0];

  assign inst5__I_9[0:0] = inst0__west_O_layer1_4[0:0];

  assign west_O_layer1_4[0:0] = inst0__west_O_layer1_4[0:0];

  assign inst1__bit0[0:0] = inst4__O[0:0];

  assign inst1__bit1[0:0] = inst5__O[0:0];

  assign inst1__bit2[0:0] = inst6__O[0:0];

  assign inst1__clk = clk;

  assign inst1__config_config_addr[0] = config_config_addr[24];

  assign inst1__config_config_addr[1] = config_config_addr[25];

  assign inst1__config_config_addr[2] = config_config_addr[26];

  assign inst1__config_config_addr[3] = config_config_addr[27];

  assign inst1__config_config_addr[4] = config_config_addr[28];

  assign inst1__config_config_addr[5] = config_config_addr[29];

  assign inst1__config_config_addr[6] = config_config_addr[30];

  assign inst1__config_config_addr[7] = config_config_addr[31];

  assign inst1__config_config_data[31:0] = config_config_data[31:0];

  assign inst1__config_read[0:0] = config_read[0:0];

  assign inst1__config_write[0] = inst12__out;

  assign inst1__data0[15:0] = inst2__O[15:0];

  assign inst1__data1[15:0] = inst3__O[15:0];

  assign inst7__I_0[31:0] = inst1__read_config_data[31:0];

  assign inst1__reset = reset;

  assign inst1__stall[3:0] = stall[3:0];

  assign inst10__in0 = inst8__out;

  assign inst10__in1 = config_write[0];

  assign inst12__in1 = inst10__out;

  assign inst14__in1 = inst10__out;

  assign inst16__in1 = inst10__out;

  assign inst18__in1 = inst10__out;

  assign inst20__in1 = inst10__out;

  assign inst22__in1 = inst10__out;

  assign inst24__in1 = inst10__out;

  assign inst11__I[0] = config_config_addr[16];

  assign inst11__I[1] = config_config_addr[17];

  assign inst11__I[2] = config_config_addr[18];

  assign inst11__I[3] = config_config_addr[19];

  assign inst11__I[4] = config_config_addr[20];

  assign inst11__I[5] = config_config_addr[21];

  assign inst11__I[6] = config_config_addr[22];

  assign inst11__I[7] = config_config_addr[23];

  assign inst12__in0 = inst11__O;

  assign inst13__I[0] = config_config_addr[16];

  assign inst13__I[1] = config_config_addr[17];

  assign inst13__I[2] = config_config_addr[18];

  assign inst13__I[3] = config_config_addr[19];

  assign inst13__I[4] = config_config_addr[20];

  assign inst13__I[5] = config_config_addr[21];

  assign inst13__I[6] = config_config_addr[22];

  assign inst13__I[7] = config_config_addr[23];

  assign inst14__in0 = inst13__O;

  assign inst15__I[0] = config_config_addr[16];

  assign inst15__I[1] = config_config_addr[17];

  assign inst15__I[2] = config_config_addr[18];

  assign inst15__I[3] = config_config_addr[19];

  assign inst15__I[4] = config_config_addr[20];

  assign inst15__I[5] = config_config_addr[21];

  assign inst15__I[6] = config_config_addr[22];

  assign inst15__I[7] = config_config_addr[23];

  assign inst16__in0 = inst15__O;

  assign inst2__config_write[0] = inst16__out;

  assign inst17__I[0] = config_config_addr[16];

  assign inst17__I[1] = config_config_addr[17];

  assign inst17__I[2] = config_config_addr[18];

  assign inst17__I[3] = config_config_addr[19];

  assign inst17__I[4] = config_config_addr[20];

  assign inst17__I[5] = config_config_addr[21];

  assign inst17__I[6] = config_config_addr[22];

  assign inst17__I[7] = config_config_addr[23];

  assign inst18__in0 = inst17__O;

  assign inst3__config_write[0] = inst18__out;

  assign inst19__I[0] = config_config_addr[16];

  assign inst19__I[1] = config_config_addr[17];

  assign inst19__I[2] = config_config_addr[18];

  assign inst19__I[3] = config_config_addr[19];

  assign inst19__I[4] = config_config_addr[20];

  assign inst19__I[5] = config_config_addr[21];

  assign inst19__I[6] = config_config_addr[22];

  assign inst19__I[7] = config_config_addr[23];

  assign inst20__in0 = inst19__O;

  assign inst2__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst2__I_1[15:0] = north_I_layer16_1[15:0];

  assign inst2__I_2[15:0] = north_I_layer16_2[15:0];

  assign inst2__I_3[15:0] = north_I_layer16_3[15:0];

  assign inst2__I_4[15:0] = north_I_layer16_4[15:0];

  assign inst2__clk = clk;

  assign inst2__config_config_addr[0] = config_config_addr[24];

  assign inst2__config_config_addr[1] = config_config_addr[25];

  assign inst2__config_config_addr[2] = config_config_addr[26];

  assign inst2__config_config_addr[3] = config_config_addr[27];

  assign inst2__config_config_addr[4] = config_config_addr[28];

  assign inst2__config_config_addr[5] = config_config_addr[29];

  assign inst2__config_config_addr[6] = config_config_addr[30];

  assign inst2__config_config_addr[7] = config_config_addr[31];

  assign inst2__config_config_data[31:0] = config_config_data[31:0];

  assign inst2__config_read[0:0] = config_read[0:0];

  assign inst7__I_2[31:0] = inst2__read_config_data[31:0];

  assign inst2__reset = reset;

  assign inst4__config_write[0] = inst20__out;

  assign inst21__I[0] = config_config_addr[16];

  assign inst21__I[1] = config_config_addr[17];

  assign inst21__I[2] = config_config_addr[18];

  assign inst21__I[3] = config_config_addr[19];

  assign inst21__I[4] = config_config_addr[20];

  assign inst21__I[5] = config_config_addr[21];

  assign inst21__I[6] = config_config_addr[22];

  assign inst21__I[7] = config_config_addr[23];

  assign inst22__in0 = inst21__O;

  assign inst5__config_write[0] = inst22__out;

  assign inst23__I[0] = config_config_addr[16];

  assign inst23__I[1] = config_config_addr[17];

  assign inst23__I[2] = config_config_addr[18];

  assign inst23__I[3] = config_config_addr[19];

  assign inst23__I[4] = config_config_addr[20];

  assign inst23__I[5] = config_config_addr[21];

  assign inst23__I[6] = config_config_addr[22];

  assign inst23__I[7] = config_config_addr[23];

  assign inst24__in0 = inst23__O;

  assign inst6__config_write[0] = inst24__out;

  assign inst3__I_0[15:0] = west_I_layer16_0[15:0];

  assign inst3__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst3__I_2[15:0] = west_I_layer16_2[15:0];

  assign inst3__I_3[15:0] = west_I_layer16_3[15:0];

  assign inst3__I_4[15:0] = west_I_layer16_4[15:0];

  assign inst3__clk = clk;

  assign inst3__config_config_addr[0] = config_config_addr[24];

  assign inst3__config_config_addr[1] = config_config_addr[25];

  assign inst3__config_config_addr[2] = config_config_addr[26];

  assign inst3__config_config_addr[3] = config_config_addr[27];

  assign inst3__config_config_addr[4] = config_config_addr[28];

  assign inst3__config_config_addr[5] = config_config_addr[29];

  assign inst3__config_config_addr[6] = config_config_addr[30];

  assign inst3__config_config_addr[7] = config_config_addr[31];

  assign inst3__config_config_data[31:0] = config_config_data[31:0];

  assign inst3__config_read[0:0] = config_read[0:0];

  assign inst7__I_3[31:0] = inst3__read_config_data[31:0];

  assign inst3__reset = reset;

  assign inst4__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst4__I_1[0:0] = north_I_layer1_1[0:0];

  assign inst4__I_2[0:0] = north_I_layer1_2[0:0];

  assign inst4__I_3[0:0] = north_I_layer1_3[0:0];

  assign inst4__I_4[0:0] = north_I_layer1_4[0:0];

  assign inst4__clk = clk;

  assign inst4__config_config_addr[0] = config_config_addr[24];

  assign inst4__config_config_addr[1] = config_config_addr[25];

  assign inst4__config_config_addr[2] = config_config_addr[26];

  assign inst4__config_config_addr[3] = config_config_addr[27];

  assign inst4__config_config_addr[4] = config_config_addr[28];

  assign inst4__config_config_addr[5] = config_config_addr[29];

  assign inst4__config_config_addr[6] = config_config_addr[30];

  assign inst4__config_config_addr[7] = config_config_addr[31];

  assign inst4__config_config_data[31:0] = config_config_data[31:0];

  assign inst4__config_read[0:0] = config_read[0:0];

  assign inst7__I_4[31:0] = inst4__read_config_data[31:0];

  assign inst4__reset = reset;

  assign inst5__I_0[0:0] = west_I_layer1_0[0:0];

  assign inst5__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst5__I_2[0:0] = west_I_layer1_2[0:0];

  assign inst5__I_3[0:0] = west_I_layer1_3[0:0];

  assign inst5__I_4[0:0] = west_I_layer1_4[0:0];

  assign inst5__clk = clk;

  assign inst5__config_config_addr[0] = config_config_addr[24];

  assign inst5__config_config_addr[1] = config_config_addr[25];

  assign inst5__config_config_addr[2] = config_config_addr[26];

  assign inst5__config_config_addr[3] = config_config_addr[27];

  assign inst5__config_config_addr[4] = config_config_addr[28];

  assign inst5__config_config_addr[5] = config_config_addr[29];

  assign inst5__config_config_addr[6] = config_config_addr[30];

  assign inst5__config_config_addr[7] = config_config_addr[31];

  assign inst5__config_config_data[31:0] = config_config_data[31:0];

  assign inst5__config_read[0:0] = config_read[0:0];

  assign inst7__I_5[31:0] = inst5__read_config_data[31:0];

  assign inst5__reset = reset;

  assign inst6__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst6__I_1[0:0] = north_I_layer1_1[0:0];

  assign inst6__I_2[0:0] = north_I_layer1_2[0:0];

  assign inst6__I_3[0:0] = north_I_layer1_3[0:0];

  assign inst6__I_4[0:0] = north_I_layer1_4[0:0];

  assign inst6__clk = clk;

  assign inst6__config_config_addr[0] = config_config_addr[24];

  assign inst6__config_config_addr[1] = config_config_addr[25];

  assign inst6__config_config_addr[2] = config_config_addr[26];

  assign inst6__config_config_addr[3] = config_config_addr[27];

  assign inst6__config_config_addr[4] = config_config_addr[28];

  assign inst6__config_config_addr[5] = config_config_addr[29];

  assign inst6__config_config_addr[6] = config_config_addr[30];

  assign inst6__config_config_addr[7] = config_config_addr[31];

  assign inst6__config_config_data[31:0] = config_config_data[31:0];

  assign inst6__config_read[0:0] = config_read[0:0];

  assign inst7__I_6[31:0] = inst6__read_config_data[31:0];

  assign inst6__reset = reset;

  assign inst7__EN[0] = inst9__out;

  assign read_config_data[31:0] = inst7__O[31:0];

  assign inst7__S[0] = config_config_addr[16];

  assign inst7__S[1] = config_config_addr[17];

  assign inst7__S[2] = config_config_addr[18];

  assign inst7__S[3] = config_config_addr[19];

  assign inst7__S[4] = config_config_addr[20];

  assign inst7__S[5] = config_config_addr[21];

  assign inst7__S[6] = config_config_addr[22];

  assign inst7__S[7] = config_config_addr[23];

  assign inst8__in0[15:0] = tile_id[15:0];

  assign inst8__in1[0] = config_config_addr[0];

  assign inst8__in1[10] = config_config_addr[10];

  assign inst8__in1[11] = config_config_addr[11];

  assign inst8__in1[12] = config_config_addr[12];

  assign inst8__in1[13] = config_config_addr[13];

  assign inst8__in1[14] = config_config_addr[14];

  assign inst8__in1[15] = config_config_addr[15];

  assign inst8__in1[1] = config_config_addr[1];

  assign inst8__in1[2] = config_config_addr[2];

  assign inst8__in1[3] = config_config_addr[3];

  assign inst8__in1[4] = config_config_addr[4];

  assign inst8__in1[5] = config_config_addr[5];

  assign inst8__in1[6] = config_config_addr[6];

  assign inst8__in1[7] = config_config_addr[7];

  assign inst8__in1[8] = config_config_addr[8];

  assign inst8__in1[9] = config_config_addr[9];

  assign inst9__in0 = inst8__out;

  assign inst9__in1 = config_read[0];


endmodule  // Tile_PECore

