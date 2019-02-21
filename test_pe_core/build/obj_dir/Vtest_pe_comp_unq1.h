// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vtest_pe_comp_unq1_H_
#define _Vtest_pe_comp_unq1_H_

#include "verilated.h"
class Vtest_pe_comp_unq1__Syms;

//----------

VL_MODULE(Vtest_pe_comp_unq1) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(op_code,7,0);
    VL_IN8(op_d_p,0,0);
    VL_OUT8(carry_out,3,0);
    VL_OUT8(ovfl,3,0);
    VL_OUT8(res_p,3,0);
    //char	__VpadToAlign5[1];
    VL_IN16(op_a,15,0);
    VL_IN16(op_b,15,0);
    VL_OUT16(res,15,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT__res_p_w,3,0);
    VL_SIG8(v__DOT__cmpr_eq,0,0);
    VL_SIG8(v__DOT__is_addsub_vec,0,0);
    VL_SIG8(v__DOT__diff_sign,0,0);
    VL_SIG8(v__DOT__ovfl_add_signed,0,0);
    VL_SIG8(v__DOT__ovfl_sub_signed,0,0);
    VL_SIG8(v__DOT__full_add__DOT__carries_in,3,0);
    VL_SIG8(v__DOT__full_add__DOT__c_out_full,3,0);
    VL_SIG8(v__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed,0,0);
    VL_SIG8(v__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed,0,0);
    VL_SIG16(v__DOT__res_w,15,0);
    VL_SIG16(v__DOT__shift_res,15,0);
    VL_SIG16(v__DOT__test_shifter__DOT__lshift_val,15,0);
    VL_SIG16(v__DOT__test_shifter__DOT__shift_inp,15,0);
    VL_SIG16(v__DOT__test_shifter__DOT__shift_res,15,0);
    VL_SIG16(v__DOT__test_shifter__DOT__a_reverse,15,0);
    //char	__VpadToAlign42[2];
    VL_SIG(v__DOT__mult_res_v4,31,0);
    VL_SIG(v__DOT__mult_res_v2,31,0);
    VL_SIG16(v__DOT__add_a[1],15,0);
    VL_SIG16(v__DOT__add_b[1],15,0);
    VL_SIG8(v__DOT__add_c_in[1],0,0);
    //char	__VpadToAlign57[1];
    VL_SIG16(v__DOT__add_res[1],15,0);
    VL_SIG8(v__DOT__add_c_out[1],3,0);
    //char	__VpadToAlign61[3];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT____Vcellinp__full_add__c_in,0,0);
    VL_SIG8(v__DOT____Vcellinp__cmpr__diff_msb,0,0);
    VL_SIG8(__Vchglast__TOP__v__DOT__full_add__DOT__c_out_full,3,0);
    //char	__VpadToAlign71[1];
    VL_SIG16(v__DOT____Vcellout__full_add__res,15,0);
    VL_SIG16(v__DOT____Vcellinp__full_add__b,15,0);
    VL_SIG16(v__DOT____Vcellinp__full_add__a,15,0);
    VL_SIG16(__Vchglast__TOP__v__DOT____Vcellout__full_add__res,15,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    //char	__VpadToAlign84[4];
    Vtest_pe_comp_unq1__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vtest_pe_comp_unq1& operator= (const Vtest_pe_comp_unq1&);	///< Copying not allowed
    Vtest_pe_comp_unq1(const Vtest_pe_comp_unq1&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vtest_pe_comp_unq1(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vtest_pe_comp_unq1();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vtest_pe_comp_unq1__Syms* symsp, bool first);
  private:
    static QData	_change_request(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
  public:
    static void	_combo__TOP__1(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_combo__TOP__3(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_combo__TOP__5(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_combo__TOP__7(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_combo__TOP__9(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_eval(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_eval_initial(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_eval_settle(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_settle__TOP__10(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_settle__TOP__2(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_settle__TOP__4(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_settle__TOP__6(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
    static void	_settle__TOP__8(Vtest_pe_comp_unq1__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
