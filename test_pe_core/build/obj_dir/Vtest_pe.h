// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vtest_pe_H_
#define _Vtest_pe_H_

#include "verilated.h"
class Vtest_pe__Syms;

//----------

VL_MODULE(Vtest_pe) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(clk_en,0,0);
    VL_IN8(cfg_a,7,0);
    VL_IN8(cfg_en,0,0);
    VL_IN8(bit0,0,0);
    VL_IN8(bit1,0,0);
    VL_IN8(bit2,0,0);
    VL_OUT8(irq,0,0);
    VL_OUT8(res_p,3,0);
    VL_IN16(data0,15,0);
    VL_IN16(data1,15,0);
    VL_OUT16(res,15,0);
    VL_IN(cfg_d,31,0);
    VL_OUT(read_data,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT__op_d_p,0,0);
    VL_SIG8(v__DOT__res_p_w,3,0);
    VL_SIG8(v__DOT__carry_out,3,0);
    VL_SIG8(v__DOT__op_b_ld,0,0);
    VL_SIG8(v__DOT__V,3,0);
    VL_SIG8(v__DOT__Z,3,0);
    VL_SIG8(v__DOT__N,3,0);
    VL_SIG8(v__DOT__test_opt_reg_d__DOT__data_in_reg,0,0);
    VL_SIG8(v__DOT__test_opt_reg_e__DOT__data_in_reg,0,0);
    VL_SIG8(v__DOT__test_opt_reg_f__DOT__data_in_reg,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__res_p_w,3,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__cmpr_eq,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__is_addsub_vec,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__diff_sign,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__ovfl_add_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__ovfl_sub_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in,3,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full,3,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut,7,0);
    VL_SIG8(v__DOT__test_debug_bit__DOT__debug_val,3,0);
    VL_SIG16(v__DOT__op_a,15,0);
    VL_SIG16(v__DOT__op_b,15,0);
    VL_SIG16(v__DOT__op_b_reg,15,0);
    VL_SIG16(v__DOT__inp_code,15,0);
    VL_SIG16(v__DOT__op_code,15,0);
    VL_SIG16(v__DOT__test_opt_reg_a__DOT__data_in_reg,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__res_w,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__shift_res,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse,15,0);
    VL_SIG16(v__DOT__test_debug_data__DOT__debug_val,15,0);
    VL_SIG(v__DOT__test_pe_comp__DOT__mult_res_v4,31,0);
    VL_SIG(v__DOT__test_pe_comp__DOT__mult_res_v2,31,0);
    VL_SIG16(v__DOT__test_opt_reg_file__DOT__data_in_reg[1],15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__add_a[1],15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT__add_b[1],15,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__add_c_in[1],0,0);
    //char	__VpadToAlign95[1];
    VL_SIG16(v__DOT__test_pe_comp__DOT__add_res[1],15,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT__add_c_out[1],3,0);
    //char	__VpadToAlign99[1];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT____Vcellinp__test_opt_reg_a__load,0,0);
    VL_SIG8(v__DOT____Vcellinp__test_opt_reg_d__load,0,0);
    VL_SIG8(v__DOT____Vcellinp__test_opt_reg_e__load,0,0);
    VL_SIG8(v__DOT____Vcellinp__test_opt_reg_f__load,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in,0,0);
    VL_SIG8(v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb,0,0);
    VL_SIG8(__Vclklast__TOP__clk,0,0);
    VL_SIG8(__Vclklast__TOP__rst_n,0,0);
    VL_SIG8(__Vchglast__TOP__v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full,3,0);
    //char	__VpadToAlign113[1];
    VL_SIG16(v__DOT__test_pe_comp__DOT____Vcellout__full_add__res,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b,15,0);
    VL_SIG16(v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a,15,0);
    VL_SIG16(__Vchglast__TOP__v__DOT__test_pe_comp__DOT____Vcellout__full_add__res,15,0);
    //char	__VpadToAlign122[2];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vtest_pe__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vtest_pe& operator= (const Vtest_pe&);	///< Copying not allowed
    Vtest_pe(const Vtest_pe&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vtest_pe(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vtest_pe();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vtest_pe__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vtest_pe__Syms* symsp, bool first);
  private:
    static QData	_change_request(Vtest_pe__Syms* __restrict vlSymsp);
  public:
    static void	_combo__TOP__1(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__10(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__12(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__14(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__4(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__6(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_combo__TOP__8(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_eval(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_eval_initial(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_eval_settle(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__3(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__11(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__13(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__2(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__5(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__7(Vtest_pe__Syms* __restrict vlSymsp);
    static void	_settle__TOP__9(Vtest_pe__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
