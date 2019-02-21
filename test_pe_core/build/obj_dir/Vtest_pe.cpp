// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtest_pe.h for the primary calling header

#include "Vtest_pe.h"          // For This
#include "Vtest_pe__Syms.h"

//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(Vtest_pe) {
    Vtest_pe__Syms* __restrict vlSymsp = __VlSymsp = new Vtest_pe__Syms(this, name());
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    clk = VL_RAND_RESET_I(1);
    rst_n = VL_RAND_RESET_I(1);
    clk_en = VL_RAND_RESET_I(1);
    cfg_d = VL_RAND_RESET_I(32);
    cfg_a = VL_RAND_RESET_I(8);
    cfg_en = VL_RAND_RESET_I(1);
    data0 = VL_RAND_RESET_I(16);
    data1 = VL_RAND_RESET_I(16);
    bit0 = VL_RAND_RESET_I(1);
    bit1 = VL_RAND_RESET_I(1);
    bit2 = VL_RAND_RESET_I(1);
    res = VL_RAND_RESET_I(16);
    irq = VL_RAND_RESET_I(1);
    res_p = VL_RAND_RESET_I(4);
    read_data = VL_RAND_RESET_I(32);
    v__DOT__op_a = VL_RAND_RESET_I(16);
    v__DOT__op_b = VL_RAND_RESET_I(16);
    v__DOT__op_b_reg = VL_RAND_RESET_I(16);
    v__DOT__op_d_p = VL_RAND_RESET_I(1);
    v__DOT__res_p_w = VL_RAND_RESET_I(4);
    v__DOT__carry_out = VL_RAND_RESET_I(4);
    v__DOT__inp_code = VL_RAND_RESET_I(16);
    v__DOT__op_code = VL_RAND_RESET_I(16);
    v__DOT____Vcellinp__test_opt_reg_a__load = VL_RAND_RESET_I(1);
    v__DOT__op_b_ld = VL_RAND_RESET_I(1);
    v__DOT____Vcellinp__test_opt_reg_d__load = VL_RAND_RESET_I(1);
    v__DOT____Vcellinp__test_opt_reg_e__load = VL_RAND_RESET_I(1);
    v__DOT____Vcellinp__test_opt_reg_f__load = VL_RAND_RESET_I(1);
    v__DOT__V = VL_RAND_RESET_I(4);
    v__DOT__Z = VL_RAND_RESET_I(4);
    v__DOT__N = VL_RAND_RESET_I(4);
    v__DOT__test_opt_reg_a__DOT__data_in_reg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_opt_reg_file__DOT__data_in_reg[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__test_opt_reg_d__DOT__data_in_reg = VL_RAND_RESET_I(1);
    v__DOT__test_opt_reg_e__DOT__data_in_reg = VL_RAND_RESET_I(1);
    v__DOT__test_opt_reg_f__DOT__data_in_reg = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__mult_res_v4 = VL_RAND_RESET_I(32);
    v__DOT__test_pe_comp__DOT__mult_res_v2 = VL_RAND_RESET_I(32);
    v__DOT__test_pe_comp__DOT__res_w = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__res_p_w = VL_RAND_RESET_I(4);
    v__DOT__test_pe_comp__DOT__cmpr_eq = VL_RAND_RESET_I(1);
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_pe_comp__DOT__add_a[__Vi0] = VL_RAND_RESET_I(16);
    }}
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_pe_comp__DOT__add_b[__Vi0] = VL_RAND_RESET_I(16);
    }}
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_pe_comp__DOT__add_c_in[__Vi0] = VL_RAND_RESET_I(1);
    }}
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_pe_comp__DOT__add_res[__Vi0] = VL_RAND_RESET_I(16);
    }}
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__test_pe_comp__DOT__add_c_out[__Vi0] = VL_RAND_RESET_I(4);
    }}
    v__DOT__test_pe_comp__DOT__is_addsub_vec = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT____Vcellout__full_add__res = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__shift_res = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__diff_sign = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__ovfl_add_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__ovfl_sub_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in = VL_RAND_RESET_I(4);
    v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full = VL_RAND_RESET_I(4);
    v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse = VL_RAND_RESET_I(16);
    v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed = VL_RAND_RESET_I(1);
    v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut = VL_RAND_RESET_I(8);
    v__DOT__test_debug_data__DOT__debug_val = VL_RAND_RESET_I(16);
    v__DOT__test_debug_bit__DOT__debug_val = VL_RAND_RESET_I(4);
    __Vclklast__TOP__clk = VL_RAND_RESET_I(1);
    __Vclklast__TOP__rst_n = VL_RAND_RESET_I(1);
    __Vchglast__TOP__v__DOT__test_pe_comp__DOT____Vcellout__full_add__res = VL_RAND_RESET_I(16);
    __Vchglast__TOP__v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full = VL_RAND_RESET_I(4);
}

void Vtest_pe::__Vconfigure(Vtest_pe__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vtest_pe::~Vtest_pe() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void Vtest_pe::eval() {
    Vtest_pe__Syms* __restrict vlSymsp = this->__VlSymsp; // Setup global symbol table
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    VL_DEBUG_IF(VL_PRINTF("\n----TOP Evaluate Vtest_pe::eval\n"); );
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	VL_DEBUG_IF(VL_PRINTF(" Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
    }
}

void Vtest_pe::_eval_initial_loop(Vtest_pe__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
    }
}

//--------------------
// Internal Methods

VL_INLINE_OPT void Vtest_pe::_combo__TOP__1(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__1\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT__add_res[0U] 
	= vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res;
}

void Vtest_pe::_settle__TOP__2(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__2\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT__add_res[0U] 
	= vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res;
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb 
	= (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
		 [0U] >> 0xfU));
    vlTOPp->v__DOT__test_pe_comp__DOT__diff_sign = 
	(1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
	       [0U] >> 0xfU));
}

VL_INLINE_OPT void Vtest_pe::_sequent__TOP__3(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_sequent__TOP__3\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIG8(__Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v1,0,0);
    VL_SIG16(__Vdlyvval__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0,15,0);
    // Body
    __Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0 = 0U;
    __Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v1 = 0U;
    // ALWAYS at ../../genesis_verif/test_debug_reg.sv:53
    if (vlTOPp->rst_n) {
	if (((IData)(vlTOPp->cfg_en) & (0xe0U == (IData)(vlTOPp->cfg_a)))) {
	    vlTOPp->v__DOT__test_debug_data__DOT__debug_val 
		= (0xffffU & vlTOPp->cfg_d);
	}
    } else {
	vlTOPp->v__DOT__test_debug_data__DOT__debug_val = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_debug_reg.sv:53
    if (vlTOPp->rst_n) {
	if (((IData)(vlTOPp->cfg_en) & (0xe1U == (IData)(vlTOPp->cfg_a)))) {
	    vlTOPp->v__DOT__test_debug_bit__DOT__debug_val 
		= (0xfU & vlTOPp->cfg_d);
	}
    } else {
	vlTOPp->v__DOT__test_debug_bit__DOT__debug_val = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_lut.sv:63
    if (vlTOPp->rst_n) {
	if (((IData)(vlTOPp->cfg_en) & (0U == (IData)(vlTOPp->cfg_a)))) {
	    vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut 
		= (0xffU & vlTOPp->cfg_d);
	}
    } else {
	vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_opt_reg.sv:68
    if (vlTOPp->rst_n) {
	if ((((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_e__load) 
	      | (3U == (3U & ((IData)(vlTOPp->v__DOT__inp_code) 
			      >> 0xaU)))) | ((1U == 
					      (3U & 
					       ((IData)(vlTOPp->v__DOT__inp_code) 
						>> 0xaU))) 
					     & (IData)(vlTOPp->clk_en)))) {
	    vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg 
		= (1U & ((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_e__load)
			  ? vlTOPp->cfg_d : (IData)(vlTOPp->bit1)));
	}
    } else {
	vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_opt_reg.sv:68
    if (vlTOPp->rst_n) {
	if ((((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_f__load) 
	      | (3U == (3U & ((IData)(vlTOPp->v__DOT__inp_code) 
			      >> 0xcU)))) | ((1U == 
					      (3U & 
					       ((IData)(vlTOPp->v__DOT__inp_code) 
						>> 0xcU))) 
					     & (IData)(vlTOPp->clk_en)))) {
	    vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg 
		= (1U & ((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_f__load)
			  ? vlTOPp->cfg_d : (IData)(vlTOPp->bit2)));
	}
    } else {
	vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_opt_reg.sv:68
    if (vlTOPp->rst_n) {
	if ((((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_d__load) 
	      | (3U == (3U & ((IData)(vlTOPp->v__DOT__inp_code) 
			      >> 8U)))) | ((1U == (3U 
						   & ((IData)(vlTOPp->v__DOT__inp_code) 
						      >> 8U))) 
					   & (IData)(vlTOPp->clk_en)))) {
	    vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg 
		= (1U & ((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_d__load)
			  ? vlTOPp->cfg_d : (IData)(vlTOPp->bit0)));
	}
    } else {
	vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_opt_reg.sv:68
    if (vlTOPp->rst_n) {
	if ((((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_a__load) 
	      | (3U == (3U & (IData)(vlTOPp->v__DOT__inp_code)))) 
	     | ((1U == (3U & (IData)(vlTOPp->v__DOT__inp_code))) 
		& (IData)(vlTOPp->clk_en)))) {
	    vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg 
		= (0xffffU & ((IData)(vlTOPp->v__DOT____Vcellinp__test_opt_reg_a__load)
			       ? vlTOPp->cfg_d : (IData)(vlTOPp->data0)));
	}
    } else {
	vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg = 0U;
    }
    // ALWAYS at ../../genesis_verif/test_opt_reg_file.sv:76
    if (vlTOPp->rst_n) {
	if ((((IData)(vlTOPp->v__DOT__op_b_ld) | (3U 
						  == 
						  (7U 
						   & ((IData)(vlTOPp->v__DOT__inp_code) 
						      >> 2U)))) 
	     | ((1U == (7U & ((IData)(vlTOPp->v__DOT__inp_code) 
			      >> 2U))) & (IData)(vlTOPp->clk_en)))) {
	    __Vdlyvval__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0 
		= (0xffffU & ((IData)(vlTOPp->v__DOT__op_b_ld)
			       ? (((IData)(vlTOPp->cfg_en) 
				   & (0xf1U == (IData)(vlTOPp->cfg_a)))
				   ? vlTOPp->cfg_d : 
				  ((((IData)(vlTOPp->v__DOT__op_code) 
				     >> 9U) & (IData)(vlTOPp->v__DOT__op_d_p))
				    ? 0U : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w)))
			       : (IData)(vlTOPp->data1)));
	    __Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0 = 1U;
	}
    } else {
	__Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v1 = 1U;
    }
    // ALWAYSPOST at ../../genesis_verif/test_opt_reg_file.sv:80
    if (__Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0) {
	vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg[0U] 
	    = __Vdlyvval__v__DOT__test_opt_reg_file__DOT__data_in_reg__v0;
    }
    if (__Vdlyvset__v__DOT__test_opt_reg_file__DOT__data_in_reg__v1) {
	vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg[0U] = 0U;
    }
    vlTOPp->v__DOT__op_b_reg = vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg
	[0U];
    // ALWAYS at test_pe.v:171
    if (vlTOPp->rst_n) {
	if (((IData)(vlTOPp->cfg_en) & (0xffU == (IData)(vlTOPp->cfg_a)))) {
	    vlTOPp->v__DOT__inp_code = (0xffffU & (vlTOPp->cfg_d 
						   >> 0x10U));
	    vlTOPp->v__DOT__op_code = (0xffffU & vlTOPp->cfg_d);
	}
    } else {
	vlTOPp->v__DOT__inp_code = 0U;
	vlTOPp->v__DOT__op_code = 0U;
    }
    vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec 
	= ((0x16U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code))) 
	   | (0x17U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code))));
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__4(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__4\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb 
	= (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
		 [0U] >> 0xfU));
    vlTOPp->v__DOT__test_pe_comp__DOT__diff_sign = 
	(1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
	       [0U] >> 0xfU));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_e__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf4U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_f__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf5U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_d__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf3U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_a__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf0U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT__op_b_ld = (((IData)(vlTOPp->cfg_en) 
				& (0xf1U == (IData)(vlTOPp->cfg_a))) 
			       | ((IData)(vlTOPp->clk_en) 
				  & ((IData)(vlTOPp->v__DOT__op_code) 
				     >> 9U)));
    vlTOPp->v__DOT__op_d_p = ((2U == (3U & ((IData)(vlTOPp->v__DOT__inp_code) 
					    >> 8U)))
			       ? (IData)(vlTOPp->bit0)
			       : (IData)(vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg));
    vlTOPp->v__DOT__op_b = ((2U == (7U & ((IData)(vlTOPp->v__DOT__inp_code) 
					  >> 2U))) ? (IData)(vlTOPp->data1)
			     : vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg
			    [0U]);
    vlTOPp->v__DOT__op_a = ((2U == (3U & (IData)(vlTOPp->v__DOT__inp_code)))
			     ? (IData)(vlTOPp->data0)
			     : (IData)(vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg));
}

void Vtest_pe::_settle__TOP__5(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__5\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_e__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf4U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_f__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf5U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_d__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf3U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT____Vcellinp__test_opt_reg_a__load 
	= ((IData)(vlTOPp->cfg_en) & (0xf0U == (IData)(vlTOPp->cfg_a)));
    vlTOPp->v__DOT__op_b_reg = vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg
	[0U];
    vlTOPp->v__DOT__op_b_ld = (((IData)(vlTOPp->cfg_en) 
				& (0xf1U == (IData)(vlTOPp->cfg_a))) 
			       | ((IData)(vlTOPp->clk_en) 
				  & ((IData)(vlTOPp->v__DOT__op_code) 
				     >> 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec 
	= ((0x16U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code))) 
	   | (0x17U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code))));
    vlTOPp->v__DOT__op_d_p = ((2U == (3U & ((IData)(vlTOPp->v__DOT__inp_code) 
					    >> 8U)))
			       ? (IData)(vlTOPp->bit0)
			       : (IData)(vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg));
    vlTOPp->v__DOT__op_b = ((2U == (7U & ((IData)(vlTOPp->v__DOT__inp_code) 
					  >> 2U))) ? (IData)(vlTOPp->data1)
			     : vlTOPp->v__DOT__test_opt_reg_file__DOT__data_in_reg
			    [0U]);
    vlTOPp->v__DOT__op_a = ((2U == (3U & (IData)(vlTOPp->v__DOT__inp_code)))
			     ? (IData)(vlTOPp->data0)
			     : (IData)(vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg));
    // ALWAYS at test_pe.v:442
    vlTOPp->read_data = ((0x80U & (IData)(vlTOPp->cfg_a))
			  ? ((0x40U & (IData)(vlTOPp->cfg_a))
			      ? ((0x20U & (IData)(vlTOPp->cfg_a))
				  ? ((0x10U & (IData)(vlTOPp->cfg_a))
				      ? ((8U & (IData)(vlTOPp->cfg_a))
					  ? ((4U & (IData)(vlTOPp->cfg_a))
					      ? ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 
						  (((IData)(vlTOPp->v__DOT__inp_code) 
						    << 0x10U) 
						   | (IData)(vlTOPp->v__DOT__op_code))
						   : 0U)
						  : 0U)
					      : 0U)
					  : ((4U & (IData)(vlTOPp->cfg_a))
					      ? ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 0U
						  : 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg)
						   : (IData)(vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg)))
					      : ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg)
						   : 0U)
						  : 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__op_b_reg)
						   : (IData)(vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg)))))
				      : ((8U & (IData)(vlTOPp->cfg_a))
					  ? 0U : ((4U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 0U
						   : 
						  ((2U 
						    & (IData)(vlTOPp->cfg_a))
						    ? 0U
						    : 
						   ((1U 
						     & (IData)(vlTOPp->cfg_a))
						     ? (IData)(vlTOPp->v__DOT__test_debug_bit__DOT__debug_val)
						     : (IData)(vlTOPp->v__DOT__test_debug_data__DOT__debug_val))))))
				  : 0U) : 0U) : ((0x40U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 0U
						  : 
						 ((0x20U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 0U
						   : 
						  ((0x10U 
						    & (IData)(vlTOPp->cfg_a))
						    ? 0U
						    : 
						   ((8U 
						     & (IData)(vlTOPp->cfg_a))
						     ? 0U
						     : 
						    ((4U 
						      & (IData)(vlTOPp->cfg_a))
						      ? 0U
						      : 
						     ((2U 
						       & (IData)(vlTOPp->cfg_a))
						       ? 0U
						       : 
						      ((1U 
							& (IData)(vlTOPp->cfg_a))
						        ? 0U
						        : (IData)(vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut)))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out[0U] 
	= ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
	    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)
	    : (8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)));
    vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq = (1U 
						  & (~ (IData)(
							       (0U 
								!= 
								((IData)(vlTOPp->v__DOT__op_a) 
								 ^ (IData)(vlTOPp->v__DOT__op_b))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_add_signed 
	= (((1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)) 
	    == (1U & ((IData)(vlTOPp->v__DOT__op_b) 
		      >> 0xfU))) & ((1U & ((IData)(vlTOPp->v__DOT__op_a) 
					   >> 0xfU)) 
				    != (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
					      [0U] 
					      >> 0xfU))));
    // ALWAYS at ../../genesis_verif/test_pe_comp_unq1.sv:289
    vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_sub_signed 
	= (((1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)) 
	    != (1U & ((IData)(vlTOPp->v__DOT__op_b) 
		      >> 0xfU))) & ((1U & ((IData)(vlTOPp->v__DOT__op_a) 
					   >> 0xfU)) 
				    != (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
					      [0U] 
					      >> 0xfU))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
	= ((0xffff0000U & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2) 
	   | (0xffffU & VL_MULS_III(18,18,18, (0x3ffffU 
					       & VL_EXTENDS_II(18,9, 
							       ((0xffffff00U 
								 & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed) 
								     << 8U) 
								    & ((IData)(vlTOPp->v__DOT__op_a) 
								       << 1U))) 
								| (0xffU 
								   & (IData)(vlTOPp->v__DOT__op_a))))), 
				    (0x3ffffU & VL_EXTENDS_II(18,9, 
							      ((0xffffff00U 
								& (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed) 
								    << 8U) 
								   & ((IData)(vlTOPp->v__DOT__op_b) 
								      << 1U))) 
							       | (0xffU 
								  & (IData)(vlTOPp->v__DOT__op_b))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
	= ((0xffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2) 
	   | (0xffff0000U & (VL_MULS_III(18,18,18, 
					 (0x3ffffU 
					  & VL_EXTENDS_II(18,9, 
							  ((0x1ffff00U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed) 
								<< 8U) 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 7U))) 
							   | (0xffU 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 8U))))), 
					 (0x3ffffU 
					  & VL_EXTENDS_II(18,9, 
							  ((0x1ffff00U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed) 
								<< 8U) 
							       & ((IData)(vlTOPp->v__DOT__op_b) 
								  >> 7U))) 
							   | (0xffU 
							      & ((IData)(vlTOPp->v__DOT__op_b) 
								 >> 8U)))))) 
			     << 0x10U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffffff00U & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xffU & VL_MULS_III(10,10,10, (0x3ffU 
					     & VL_EXTENDS_II(10,5, 
							     ((0xfffffff0U 
							       & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed) 
								   << 4U) 
								  & ((IData)(vlTOPp->v__DOT__op_a) 
								     << 1U))) 
							      | (0xfU 
								 & (IData)(vlTOPp->v__DOT__op_a))))), 
				  (0x3ffU & VL_EXTENDS_II(10,5, 
							  ((0xfffffff0U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed) 
								<< 4U) 
							       & ((IData)(vlTOPp->v__DOT__op_b) 
								  << 1U))) 
							   | (0xfU 
							      & (IData)(vlTOPp->v__DOT__op_b))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffff00ffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff00U & (VL_MULS_III(10,10,10, (0x3ffU 
						& VL_EXTENDS_II(10,5, 
								((0x1ffffff0U 
								  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed) 
								      << 4U) 
								     & ((IData)(vlTOPp->v__DOT__op_a) 
									>> 3U))) 
								 | (0xfU 
								    & ((IData)(vlTOPp->v__DOT__op_a) 
								       >> 4U))))), 
				     (0x3ffU & VL_EXTENDS_II(10,5, 
							     ((0x1ffffff0U 
							       & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed) 
								   << 4U) 
								  & ((IData)(vlTOPp->v__DOT__op_b) 
								     >> 3U))) 
							      | (0xfU 
								 & ((IData)(vlTOPp->v__DOT__op_b) 
								    >> 4U)))))) 
			 << 8U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xff00ffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff0000U & (VL_MULS_III(10,10,10, (0x3ffU 
						  & VL_EXTENDS_II(10,5, 
								  ((0x1fffff0U 
								    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed) 
									<< 4U) 
								       & ((IData)(vlTOPp->v__DOT__op_a) 
									  >> 7U))) 
								   | (0xfU 
								      & ((IData)(vlTOPp->v__DOT__op_a) 
									 >> 8U))))), 
				       (0x3ffU & VL_EXTENDS_II(10,5, 
							       ((0x1fffff0U 
								 & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed) 
								     << 4U) 
								    & ((IData)(vlTOPp->v__DOT__op_b) 
								       >> 7U))) 
								| (0xfU 
								   & ((IData)(vlTOPp->v__DOT__op_b) 
								      >> 8U)))))) 
			   << 0x10U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff000000U & (VL_MULS_III(10,10,10, 
					 (0x3ffU & 
					  VL_EXTENDS_II(10,5, 
							((0x1ffff0U 
							  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed) 
							      << 4U) 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 0xbU))) 
							 | (0xfU 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 0xcU))))), 
					 (0x3ffU & 
					  VL_EXTENDS_II(10,5, 
							((0x1ffff0U 
							  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed) 
							      << 4U) 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 0xbU))) 
							 | (0xfU 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 0xcU)))))) 
			     << 0x18U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (4U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfff7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (8U & ((IData)(vlTOPp->v__DOT__op_a) >> 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffefU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x10U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffdfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x20U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffbfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x40U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xff7fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x80U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfeffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x100U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfdffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x200U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfbffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x400U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xf7ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x800U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xefffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x1000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xdfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x2000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xbfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x4000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0x7fffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x8000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xfU)));
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__6(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__6\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at test_pe.v:442
    vlTOPp->read_data = ((0x80U & (IData)(vlTOPp->cfg_a))
			  ? ((0x40U & (IData)(vlTOPp->cfg_a))
			      ? ((0x20U & (IData)(vlTOPp->cfg_a))
				  ? ((0x10U & (IData)(vlTOPp->cfg_a))
				      ? ((8U & (IData)(vlTOPp->cfg_a))
					  ? ((4U & (IData)(vlTOPp->cfg_a))
					      ? ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 
						  (((IData)(vlTOPp->v__DOT__inp_code) 
						    << 0x10U) 
						   | (IData)(vlTOPp->v__DOT__op_code))
						   : 0U)
						  : 0U)
					      : 0U)
					  : ((4U & (IData)(vlTOPp->cfg_a))
					      ? ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 0U
						  : 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg)
						   : (IData)(vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg)))
					      : ((2U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__test_opt_reg_d__DOT__data_in_reg)
						   : 0U)
						  : 
						 ((1U 
						   & (IData)(vlTOPp->cfg_a))
						   ? (IData)(vlTOPp->v__DOT__op_b_reg)
						   : (IData)(vlTOPp->v__DOT__test_opt_reg_a__DOT__data_in_reg)))))
				      : ((8U & (IData)(vlTOPp->cfg_a))
					  ? 0U : ((4U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 0U
						   : 
						  ((2U 
						    & (IData)(vlTOPp->cfg_a))
						    ? 0U
						    : 
						   ((1U 
						     & (IData)(vlTOPp->cfg_a))
						     ? (IData)(vlTOPp->v__DOT__test_debug_bit__DOT__debug_val)
						     : (IData)(vlTOPp->v__DOT__test_debug_data__DOT__debug_val))))))
				  : 0U) : 0U) : ((0x40U 
						  & (IData)(vlTOPp->cfg_a))
						  ? 0U
						  : 
						 ((0x20U 
						   & (IData)(vlTOPp->cfg_a))
						   ? 0U
						   : 
						  ((0x10U 
						    & (IData)(vlTOPp->cfg_a))
						    ? 0U
						    : 
						   ((8U 
						     & (IData)(vlTOPp->cfg_a))
						     ? 0U
						     : 
						    ((4U 
						      & (IData)(vlTOPp->cfg_a))
						      ? 0U
						      : 
						     ((2U 
						       & (IData)(vlTOPp->cfg_a))
						       ? 0U
						       : 
						      ((1U 
							& (IData)(vlTOPp->cfg_a))
						        ? 0U
						        : (IData)(vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut)))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out[0U] 
	= ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
	    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)
	    : (8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)));
    vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq = (1U 
						  & (~ (IData)(
							       (0U 
								!= 
								((IData)(vlTOPp->v__DOT__op_a) 
								 ^ (IData)(vlTOPp->v__DOT__op_b))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_add_signed 
	= (((1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)) 
	    == (1U & ((IData)(vlTOPp->v__DOT__op_b) 
		      >> 0xfU))) & ((1U & ((IData)(vlTOPp->v__DOT__op_a) 
					   >> 0xfU)) 
				    != (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
					      [0U] 
					      >> 0xfU))));
    // ALWAYS at ../../genesis_verif/test_pe_comp_unq1.sv:289
    vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_sub_signed 
	= (((1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)) 
	    != (1U & ((IData)(vlTOPp->v__DOT__op_b) 
		      >> 0xfU))) & ((1U & ((IData)(vlTOPp->v__DOT__op_a) 
					   >> 0xfU)) 
				    != (1U & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
					      [0U] 
					      >> 0xfU))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
	= ((0xffff0000U & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2) 
	   | (0xffffU & VL_MULS_III(18,18,18, (0x3ffffU 
					       & VL_EXTENDS_II(18,9, 
							       ((0xffffff00U 
								 & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed) 
								     << 8U) 
								    & ((IData)(vlTOPp->v__DOT__op_a) 
								       << 1U))) 
								| (0xffU 
								   & (IData)(vlTOPp->v__DOT__op_a))))), 
				    (0x3ffffU & VL_EXTENDS_II(18,9, 
							      ((0xffffff00U 
								& (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__1__KET____DOT__mult_add_v2__DOT__is_signed) 
								    << 8U) 
								   & ((IData)(vlTOPp->v__DOT__op_b) 
								      << 1U))) 
							       | (0xffU 
								  & (IData)(vlTOPp->v__DOT__op_b))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
	= ((0xffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2) 
	   | (0xffff0000U & (VL_MULS_III(18,18,18, 
					 (0x3ffffU 
					  & VL_EXTENDS_II(18,9, 
							  ((0x1ffff00U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed) 
								<< 8U) 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 7U))) 
							   | (0xffU 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 8U))))), 
					 (0x3ffffU 
					  & VL_EXTENDS_II(18,9, 
							  ((0x1ffff00U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC2_MUL__BRA__2__KET____DOT__mult_add_v2__DOT__is_signed) 
								<< 8U) 
							       & ((IData)(vlTOPp->v__DOT__op_b) 
								  >> 7U))) 
							   | (0xffU 
							      & ((IData)(vlTOPp->v__DOT__op_b) 
								 >> 8U)))))) 
			     << 0x10U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffffff00U & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xffU & VL_MULS_III(10,10,10, (0x3ffU 
					     & VL_EXTENDS_II(10,5, 
							     ((0xfffffff0U 
							       & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed) 
								   << 4U) 
								  & ((IData)(vlTOPp->v__DOT__op_a) 
								     << 1U))) 
							      | (0xfU 
								 & (IData)(vlTOPp->v__DOT__op_a))))), 
				  (0x3ffU & VL_EXTENDS_II(10,5, 
							  ((0xfffffff0U 
							    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__1__KET____DOT__mult_add_v4__DOT__is_signed) 
								<< 4U) 
							       & ((IData)(vlTOPp->v__DOT__op_b) 
								  << 1U))) 
							   | (0xfU 
							      & (IData)(vlTOPp->v__DOT__op_b))))))));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffff00ffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff00U & (VL_MULS_III(10,10,10, (0x3ffU 
						& VL_EXTENDS_II(10,5, 
								((0x1ffffff0U 
								  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed) 
								      << 4U) 
								     & ((IData)(vlTOPp->v__DOT__op_a) 
									>> 3U))) 
								 | (0xfU 
								    & ((IData)(vlTOPp->v__DOT__op_a) 
								       >> 4U))))), 
				     (0x3ffU & VL_EXTENDS_II(10,5, 
							     ((0x1ffffff0U 
							       & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__2__KET____DOT__mult_add_v4__DOT__is_signed) 
								   << 4U) 
								  & ((IData)(vlTOPp->v__DOT__op_b) 
								     >> 3U))) 
							      | (0xfU 
								 & ((IData)(vlTOPp->v__DOT__op_b) 
								    >> 4U)))))) 
			 << 8U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xff00ffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff0000U & (VL_MULS_III(10,10,10, (0x3ffU 
						  & VL_EXTENDS_II(10,5, 
								  ((0x1fffff0U 
								    & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed) 
									<< 4U) 
								       & ((IData)(vlTOPp->v__DOT__op_a) 
									  >> 7U))) 
								   | (0xfU 
								      & ((IData)(vlTOPp->v__DOT__op_a) 
									 >> 8U))))), 
				       (0x3ffU & VL_EXTENDS_II(10,5, 
							       ((0x1fffff0U 
								 & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__3__KET____DOT__mult_add_v4__DOT__is_signed) 
								     << 4U) 
								    & ((IData)(vlTOPp->v__DOT__op_b) 
								       >> 7U))) 
								| (0xfU 
								   & ((IData)(vlTOPp->v__DOT__op_b) 
								      >> 8U)))))) 
			   << 0x10U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
	= ((0xffffffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4) 
	   | (0xff000000U & (VL_MULS_III(10,10,10, 
					 (0x3ffU & 
					  VL_EXTENDS_II(10,5, 
							((0x1ffff0U 
							  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed) 
							      << 4U) 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 0xbU))) 
							 | (0xfU 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 0xcU))))), 
					 (0x3ffU & 
					  VL_EXTENDS_II(10,5, 
							((0x1ffff0U 
							  & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__GEN_VEC4_MUL__BRA__4__KET____DOT__mult_add_v4__DOT__is_signed) 
							      << 4U) 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 0xbU))) 
							 | (0xfU 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 0xcU)))))) 
			     << 0x18U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xfU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfffbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (4U & ((IData)(vlTOPp->v__DOT__op_a) >> 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfff7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (8U & ((IData)(vlTOPp->v__DOT__op_a) >> 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffefU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x10U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffdfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x20U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xffbfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x40U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xff7fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x80U & ((IData)(vlTOPp->v__DOT__op_a) 
		       >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfeffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x100U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfdffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x200U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xfbffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x400U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xf7ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x800U & ((IData)(vlTOPp->v__DOT__op_a) 
			<< 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xefffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x1000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xdfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x2000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0xbfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x4000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse 
	= ((0x7fffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)) 
	   | (0x8000U & ((IData)(vlTOPp->v__DOT__op_a) 
			 << 0xfU)));
    vlTOPp->v__DOT__carry_out = ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
				  ? vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				 [0U] : (8U & vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
					 [0U]));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp 
	= ((0x11U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code)))
	    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)
	    : (IData)(vlTOPp->v__DOT__op_a));
}

void Vtest_pe::_settle__TOP__7(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__7\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__carry_out = ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
				  ? vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				 [0U] : (8U & vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
					 [0U]));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp 
	= ((0x11U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code)))
	    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__a_reverse)
	    : (IData)(vlTOPp->v__DOT__op_a));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res 
	= (0xffffU & ((((IData)(vlTOPp->v__DOT__op_code) 
			>> 6U) & (0x11U != (0x3fU & (IData)(vlTOPp->v__DOT__op_code))))
		       ? VL_SHIFTRS_III(16,16,4, (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp), 
					(0xfU & (IData)(vlTOPp->v__DOT__op_b)))
		       : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp) 
			  >> (0xfU & (IData)(vlTOPp->v__DOT__op_b)))));
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__8(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__8\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res 
	= (0xffffU & ((((IData)(vlTOPp->v__DOT__op_code) 
			>> 6U) & (0x11U != (0x3fU & (IData)(vlTOPp->v__DOT__op_code))))
		       ? VL_SHIFTRS_III(16,16,4, (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp), 
					(0xfU & (IData)(vlTOPp->v__DOT__op_b)))
		       : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_inp) 
			  >> (0xfU & (IData)(vlTOPp->v__DOT__op_b)))));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xfU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (4U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfff7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (8U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffefU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x10U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffdfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x20U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffbfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x40U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xff7fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x80U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfeffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x100U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfdffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x200U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfbffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x400U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xf7ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x800U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xefffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x1000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xdfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x2000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xbfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x4000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0x7fffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x8000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xfU)));
}

void Vtest_pe::_settle__TOP__9(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__9\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xfU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfffbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (4U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfff7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (8U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		    >> 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffefU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x10U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffdfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x20U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xffbfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x40U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xff7fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x80U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
		       >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfeffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x100U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfdffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x200U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xfbffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x400U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 5U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xf7ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x800U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			<< 7U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xefffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x1000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 9U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xdfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x2000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xbU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0xbfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x4000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xdU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val 
	= ((0x7fffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)) 
	   | (0x8000U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res) 
			 << 0xfU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__shift_res = 
	((0x11U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code)))
	  ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)
	  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res));
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__10(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__10\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT__shift_res = 
	((0x11U == (0x3fU & (IData)(vlTOPp->v__DOT__op_code)))
	  ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__lshift_val)
	  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__test_shifter__DOT__shift_res));
    // ALWAYS at ../../genesis_verif/test_pe_comp_unq1.sv:294
    vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U] = vlTOPp->v__DOT__op_a;
    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] = vlTOPp->v__DOT__op_b;
    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 0U;
    vlTOPp->v__DOT__test_pe_comp__DOT__res_w = vlTOPp->v__DOT__test_pe_comp__DOT__add_res
	[0U];
    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
	[0U];
    vlTOPp->v__DOT__V = 0U;
    if ((0x20U & (IData)(vlTOPp->v__DOT__op_code))) {
	if ((0x10U & (IData)(vlTOPp->v__DOT__op_code))) {
	    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
		= vlTOPp->v__DOT__op_a;
	    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
		= ((IData)(vlTOPp->v__DOT__op_d_p) 
		   << 3U);
	} else {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xff00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 0x10U)) 
				   | (0xffU & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 8U)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xff00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 8U)) 
				   | (0xffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    }
		}
	    } else {
		vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
		    = vlTOPp->v__DOT__op_a;
		vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
		    = ((IData)(vlTOPp->v__DOT__op_d_p) 
		       << 3U);
	    }
	}
    } else {
	if ((0x10U & (IData)(vlTOPp->v__DOT__op_code))) {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xf000U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					       >> 0x10U)) 
				   | ((0xf00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						 >> 0xcU)) 
				      | ((0xf0U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						   >> 8U)) 
					 | (0xfU & 
					    (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					     >> 4U)))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xf000U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					       >> 0xcU)) 
				   | ((0xf00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						 >> 8U)) 
				      | ((0xf0U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						   >> 4U)) 
					 | (0xfU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    }
		}
	    } else {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (((((1U 
						      & ((IData)(vlTOPp->v__DOT__op_a) 
							 >> 0xfU)) 
						     != 
						     (1U 
						      & ((IData)(vlTOPp->v__DOT__op_b) 
							 >> 0xfU))) 
						    & ((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       != 
						       (1U 
							& (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							   [0U] 
							   >> 0xfU)))) 
						   << 3U) 
						  | (((((1U 
							 & ((IData)(vlTOPp->v__DOT__op_a) 
							    >> 0xbU)) 
							!= 
							(1U 
							 & ((IData)(vlTOPp->v__DOT__op_b) 
							    >> 0xbU))) 
						       & ((1U 
							   & ((IData)(vlTOPp->v__DOT__op_a) 
							      >> 0xbU)) 
							  != 
							  (1U 
							   & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							      [0U] 
							      >> 0xbU)))) 
						      << 2U) 
						     | (((((1U 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 7U)) 
							   != 
							   (1U 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 7U))) 
							  & ((1U 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 7U)) 
							     != 
							     (1U 
							      & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								 [0U] 
								 >> 7U)))) 
							 << 1U) 
							| (((1U 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 3U)) 
							    != 
							    (1U 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 3U))) 
							   & ((1U 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 3U)) 
							      != 
							      (1U 
							       & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								  [0U] 
								  >> 3U)))))))
						  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (((((1U 
						      & ((IData)(vlTOPp->v__DOT__op_a) 
							 >> 0xfU)) 
						     == 
						     (1U 
						      & ((IData)(vlTOPp->v__DOT__op_b) 
							 >> 0xfU))) 
						    & ((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       != 
						       (1U 
							& (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							   [0U] 
							   >> 0xfU)))) 
						   << 3U) 
						  | (((((1U 
							 & ((IData)(vlTOPp->v__DOT__op_a) 
							    >> 0xbU)) 
							== 
							(1U 
							 & ((IData)(vlTOPp->v__DOT__op_b) 
							    >> 0xbU))) 
						       & ((1U 
							   & ((IData)(vlTOPp->v__DOT__op_a) 
							      >> 0xbU)) 
							  != 
							  (1U 
							   & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							      [0U] 
							      >> 0xbU)))) 
						      << 2U) 
						     | (((((1U 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 7U)) 
							   == 
							   (1U 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 7U))) 
							  & ((1U 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 7U)) 
							     != 
							     (1U 
							      & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								 [0U] 
								 >> 7U)))) 
							 << 1U) 
							| (((1U 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 3U)) 
							    == 
							    (1U 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 3U))) 
							   & ((1U 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 3U)) 
							      != 
							      (1U 
							       & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								  [0U] 
								  >> 3U)))))))
						  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w));
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((IData)(vlTOPp->v__DOT__op_a) 
				   ^ (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = ((1U & (IData)(vlTOPp->v__DOT__op_code))
			        ? ((IData)(vlTOPp->v__DOT__op_a) 
				   & (IData)(vlTOPp->v__DOT__op_b))
			        : ((IData)(vlTOPp->v__DOT__op_a) 
				   | (IData)(vlTOPp->v__DOT__op_b)));
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__shift_res;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    }
		}
	    }
	} else {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__shift_res;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffff) 
						      & (VL_MULS_QQQ(34,34,34, 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
							 >> 0x10U))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffffff) 
						      & (VL_MULS_QQQ(34,34,34, 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
							 >> 8U))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (8U 
						  & ((((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       == 
						       (1U 
							& ((IData)(vlTOPp->v__DOT__op_b) 
							   >> 0xfU)))
						       ? (IData)(
								 (VL_ULL(0x7ffff) 
								  & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								     >> 0xfU)))
						       : 
						      ((~ (IData)(
								  (VL_ULL(0x7ffff) 
								   & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								      >> 0xfU)))) 
						       & ((0U 
							   != (IData)(vlTOPp->v__DOT__op_a)) 
							  | (0U 
							     != (IData)(vlTOPp->v__DOT__op_b))))) 
						     << 3U))
						  : 
						 ((IData)(
							  (0U 
							   != 
							   (0xffU 
							    & (IData)(
								      (VL_ULL(0x3ff) 
								       & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
									  >> 0x18U)))))) 
						  << 3U));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffffffff) 
						      & VL_MULS_QQQ(34,34,34, 
								    (VL_ULL(0x3ffffffff) 
								     & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								    (VL_ULL(0x3ffffffff) 
								     & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (8U 
						  & ((((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       == 
						       (1U 
							& ((IData)(vlTOPp->v__DOT__op_b) 
							   >> 0xfU)))
						       ? (IData)(
								 (VL_ULL(0x7ffff) 
								  & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								     >> 0xfU)))
						       : 
						      ((~ (IData)(
								  (VL_ULL(0x7ffff) 
								   & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								      >> 0xfU)))) 
						       & ((0U 
							   != (IData)(vlTOPp->v__DOT__op_a)) 
							  | (0U 
							     != (IData)(vlTOPp->v__DOT__op_b))))) 
						     << 3U))
						  : 
						 ((IData)(
							  (0U 
							   != 
							   (0xffffU 
							    & (IData)(
								      (VL_ULL(0x3ffff) 
								       & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
									  >> 0x10U)))))) 
						  << 3U));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p)
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		}
	    } else {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & (((0x40U & (IData)(vlTOPp->v__DOT__op_code))
					   ? ((((~ 
						 (((IData)(vlTOPp->v__DOT__op_a) 
						   ^ (IData)(vlTOPp->v__DOT__op_b)) 
						  >> 0xfU)) 
						& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb)) 
					       | (((IData)(vlTOPp->v__DOT__op_a) 
						   >> 0xfU) 
						  & (~ 
						     ((IData)(vlTOPp->v__DOT__op_b) 
						      >> 0xfU)))) 
					      | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq))
					   : ((((~ 
						 (((IData)(vlTOPp->v__DOT__op_a) 
						   ^ (IData)(vlTOPp->v__DOT__op_b)) 
						  >> 0xfU)) 
						& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb)) 
					       | ((~ 
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    >> 0xfU)) 
						  & ((IData)(vlTOPp->v__DOT__op_b) 
						     >> 0xfU))) 
					      | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq))) 
					 << 3U));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & (((0x40U & (IData)(vlTOPp->v__DOT__op_code))
					   ? (((~ (
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    ^ (IData)(vlTOPp->v__DOT__op_b)) 
						   >> 0xfU)) 
					       & (~ (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb))) 
					      | ((~ 
						  ((IData)(vlTOPp->v__DOT__op_a) 
						   >> 0xfU)) 
						 & ((IData)(vlTOPp->v__DOT__op_b) 
						    >> 0xfU)))
					   : (((~ (
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    ^ (IData)(vlTOPp->v__DOT__op_b)) 
						   >> 0xfU)) 
					       & (~ (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb))) 
					      | (((IData)(vlTOPp->v__DOT__op_a) 
						  >> 0xfU) 
						 & (~ 
						    ((IData)(vlTOPp->v__DOT__op_b) 
						     >> 0xfU))))) 
					 << 3U));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__diff_sign) 
					  | (~ ((IData)(vlTOPp->v__DOT__op_code) 
						>> 6U))))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : vlTOPp->v__DOT__test_pe_comp__DOT__add_res
				   [0U]);
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_a)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] = 0U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & ((IData)(vlTOPp->v__DOT__op_a) 
					 >> 0xcU));
			    vlTOPp->v__DOT__V = (8U 
						 & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						    >> 0xcU));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__V = (0x1ffffff8U 
						 & (((IData)(vlTOPp->v__DOT__op_code) 
						     >> 3U) 
						    & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_sub_signed) 
						       << 3U)));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] 
				= vlTOPp->v__DOT__op_d_p;
			    vlTOPp->v__DOT__V = (8U 
						 & (((0x40U 
						      & (IData)(vlTOPp->v__DOT__op_code))
						      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_add_signed)
						      : 
						     ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w) 
						      >> 3U)) 
						    << 3U));
			}
		    }
		}
	    }
	}
    }
}

void Vtest_pe::_settle__TOP__11(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__11\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at ../../genesis_verif/test_pe_comp_unq1.sv:294
    vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U] = vlTOPp->v__DOT__op_a;
    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] = vlTOPp->v__DOT__op_b;
    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 0U;
    vlTOPp->v__DOT__test_pe_comp__DOT__res_w = vlTOPp->v__DOT__test_pe_comp__DOT__add_res
	[0U];
    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
	[0U];
    vlTOPp->v__DOT__V = 0U;
    if ((0x20U & (IData)(vlTOPp->v__DOT__op_code))) {
	if ((0x10U & (IData)(vlTOPp->v__DOT__op_code))) {
	    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
		= vlTOPp->v__DOT__op_a;
	    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
		= ((IData)(vlTOPp->v__DOT__op_d_p) 
		   << 3U);
	} else {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xff00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 0x10U)) 
				   | (0xffU & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 8U)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xff00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2 
					       >> 8U)) 
				   | (0xffU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v2));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    }
		}
	    } else {
		vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
		    = vlTOPp->v__DOT__op_a;
		vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
		    = ((IData)(vlTOPp->v__DOT__op_d_p) 
		       << 3U);
	    }
	}
    } else {
	if ((0x10U & (IData)(vlTOPp->v__DOT__op_code))) {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xf000U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					       >> 0x10U)) 
				   | ((0xf00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						 >> 0xcU)) 
				      | ((0xf0U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						   >> 8U)) 
					 | (0xfU & 
					    (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					     >> 4U)))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((0xf000U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
					       >> 0xcU)) 
				   | ((0xf00U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						 >> 8U)) 
				      | ((0xf0U & (vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4 
						   >> 4U)) 
					 | (0xfU & vlTOPp->v__DOT__test_pe_comp__DOT__mult_res_v4))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    }
		}
	    } else {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (((((1U 
						      & ((IData)(vlTOPp->v__DOT__op_a) 
							 >> 0xfU)) 
						     != 
						     (1U 
						      & ((IData)(vlTOPp->v__DOT__op_b) 
							 >> 0xfU))) 
						    & ((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       != 
						       (1U 
							& (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							   [0U] 
							   >> 0xfU)))) 
						   << 3U) 
						  | (((((1U 
							 & ((IData)(vlTOPp->v__DOT__op_a) 
							    >> 0xbU)) 
							!= 
							(1U 
							 & ((IData)(vlTOPp->v__DOT__op_b) 
							    >> 0xbU))) 
						       & ((1U 
							   & ((IData)(vlTOPp->v__DOT__op_a) 
							      >> 0xbU)) 
							  != 
							  (1U 
							   & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							      [0U] 
							      >> 0xbU)))) 
						      << 2U) 
						     | (((((1U 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 7U)) 
							   != 
							   (1U 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 7U))) 
							  & ((1U 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 7U)) 
							     != 
							     (1U 
							      & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								 [0U] 
								 >> 7U)))) 
							 << 1U) 
							| (((1U 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 3U)) 
							    != 
							    (1U 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 3U))) 
							   & ((1U 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 3U)) 
							      != 
							      (1U 
							       & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								  [0U] 
								  >> 3U)))))))
						  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (((((1U 
						      & ((IData)(vlTOPp->v__DOT__op_a) 
							 >> 0xfU)) 
						     == 
						     (1U 
						      & ((IData)(vlTOPp->v__DOT__op_b) 
							 >> 0xfU))) 
						    & ((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       != 
						       (1U 
							& (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							   [0U] 
							   >> 0xfU)))) 
						   << 3U) 
						  | (((((1U 
							 & ((IData)(vlTOPp->v__DOT__op_a) 
							    >> 0xbU)) 
							== 
							(1U 
							 & ((IData)(vlTOPp->v__DOT__op_b) 
							    >> 0xbU))) 
						       & ((1U 
							   & ((IData)(vlTOPp->v__DOT__op_a) 
							      >> 0xbU)) 
							  != 
							  (1U 
							   & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
							      [0U] 
							      >> 0xbU)))) 
						      << 2U) 
						     | (((((1U 
							    & ((IData)(vlTOPp->v__DOT__op_a) 
							       >> 7U)) 
							   == 
							   (1U 
							    & ((IData)(vlTOPp->v__DOT__op_b) 
							       >> 7U))) 
							  & ((1U 
							      & ((IData)(vlTOPp->v__DOT__op_a) 
								 >> 7U)) 
							     != 
							     (1U 
							      & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								 [0U] 
								 >> 7U)))) 
							 << 1U) 
							| (((1U 
							     & ((IData)(vlTOPp->v__DOT__op_a) 
								>> 3U)) 
							    == 
							    (1U 
							     & ((IData)(vlTOPp->v__DOT__op_b) 
								>> 3U))) 
							   & ((1U 
							       & ((IData)(vlTOPp->v__DOT__op_a) 
								  >> 3U)) 
							      != 
							      (1U 
							       & (vlTOPp->v__DOT__test_pe_comp__DOT__add_res
								  [0U] 
								  >> 3U)))))))
						  : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w));
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((IData)(vlTOPp->v__DOT__op_a) 
				   ^ (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = ((1U & (IData)(vlTOPp->v__DOT__op_code))
			        ? ((IData)(vlTOPp->v__DOT__op_a) 
				   & (IData)(vlTOPp->v__DOT__op_b))
			        : ((IData)(vlTOPp->v__DOT__op_a) 
				   | (IData)(vlTOPp->v__DOT__op_b)));
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__shift_res;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    }
		}
	    }
	} else {
	    if ((8U & (IData)(vlTOPp->v__DOT__op_code))) {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__shift_res;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffff) 
						      & (VL_MULS_QQQ(34,34,34, 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
							 >> 0x10U))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = 0U;
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffffff) 
						      & (VL_MULS_QQQ(34,34,34, 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								     (VL_ULL(0x3ffffffff) 
								      & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
							 >> 8U))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (8U 
						  & ((((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       == 
						       (1U 
							& ((IData)(vlTOPp->v__DOT__op_b) 
							   >> 0xfU)))
						       ? (IData)(
								 (VL_ULL(0x7ffff) 
								  & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								     >> 0xfU)))
						       : 
						      ((~ (IData)(
								  (VL_ULL(0x7ffff) 
								   & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								      >> 0xfU)))) 
						       & ((0U 
							   != (IData)(vlTOPp->v__DOT__op_a)) 
							  | (0U 
							     != (IData)(vlTOPp->v__DOT__op_b))))) 
						     << 3U))
						  : 
						 ((IData)(
							  (0U 
							   != 
							   (0xffU 
							    & (IData)(
								      (VL_ULL(0x3ff) 
								       & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
									  >> 0x18U)))))) 
						  << 3U));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= (0xffffU & (IData)(
						     (VL_ULL(0x3ffffffff) 
						      & VL_MULS_QQQ(34,34,34, 
								    (VL_ULL(0x3ffffffff) 
								     & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
								    (VL_ULL(0x3ffffffff) 
								     & VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))))));
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w = 0U;
			    vlTOPp->v__DOT__V = ((0x40U 
						  & (IData)(vlTOPp->v__DOT__op_code))
						  ? 
						 (8U 
						  & ((((1U 
							& ((IData)(vlTOPp->v__DOT__op_a) 
							   >> 0xfU)) 
						       == 
						       (1U 
							& ((IData)(vlTOPp->v__DOT__op_b) 
							   >> 0xfU)))
						       ? (IData)(
								 (VL_ULL(0x7ffff) 
								  & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								     >> 0xfU)))
						       : 
						      ((~ (IData)(
								  (VL_ULL(0x7ffff) 
								   & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
								      >> 0xfU)))) 
						       & ((0U 
							   != (IData)(vlTOPp->v__DOT__op_a)) 
							  | (0U 
							     != (IData)(vlTOPp->v__DOT__op_b))))) 
						     << 3U))
						  : 
						 ((IData)(
							  (0U 
							   != 
							   (0xffffU 
							    & (IData)(
								      (VL_ULL(0x3ffff) 
								       & (VL_MULS_QQQ(34,34,34, 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_a) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_a)))), 
										(VL_ULL(0x3ffffffff) 
										& VL_EXTENDS_QI(34,17, 
										((0x10000U 
										& (((IData)(vlTOPp->v__DOT__op_code) 
										<< 0xaU) 
										& ((IData)(vlTOPp->v__DOT__op_b) 
										<< 1U))) 
										| (IData)(vlTOPp->v__DOT__op_b))))) 
									  >> 0x10U)))))) 
						  << 3U));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p)
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		}
	    } else {
		if ((4U & (IData)(vlTOPp->v__DOT__op_code))) {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
			    = vlTOPp->v__DOT__op_a;
			vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
			    = ((IData)(vlTOPp->v__DOT__op_d_p) 
			       << 3U);
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & (((0x40U & (IData)(vlTOPp->v__DOT__op_code))
					   ? ((((~ 
						 (((IData)(vlTOPp->v__DOT__op_a) 
						   ^ (IData)(vlTOPp->v__DOT__op_b)) 
						  >> 0xfU)) 
						& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb)) 
					       | (((IData)(vlTOPp->v__DOT__op_a) 
						   >> 0xfU) 
						  & (~ 
						     ((IData)(vlTOPp->v__DOT__op_b) 
						      >> 0xfU)))) 
					      | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq))
					   : ((((~ 
						 (((IData)(vlTOPp->v__DOT__op_a) 
						   ^ (IData)(vlTOPp->v__DOT__op_b)) 
						  >> 0xfU)) 
						& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb)) 
					       | ((~ 
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    >> 0xfU)) 
						  & ((IData)(vlTOPp->v__DOT__op_b) 
						     >> 0xfU))) 
					      | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__cmpr_eq))) 
					 << 3U));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & (((0x40U & (IData)(vlTOPp->v__DOT__op_code))
					   ? (((~ (
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    ^ (IData)(vlTOPp->v__DOT__op_b)) 
						   >> 0xfU)) 
					       & (~ (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb))) 
					      | ((~ 
						  ((IData)(vlTOPp->v__DOT__op_a) 
						   >> 0xfU)) 
						 & ((IData)(vlTOPp->v__DOT__op_b) 
						    >> 0xfU)))
					   : (((~ (
						   ((IData)(vlTOPp->v__DOT__op_a) 
						    ^ (IData)(vlTOPp->v__DOT__op_b)) 
						   >> 0xfU)) 
					       & (~ (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__cmpr__diff_msb))) 
					      | (((IData)(vlTOPp->v__DOT__op_a) 
						  >> 0xfU) 
						 & (~ 
						    ((IData)(vlTOPp->v__DOT__op_b) 
						     >> 0xfU))))) 
					 << 3U));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((8U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : (IData)(vlTOPp->v__DOT__op_b));
			}
		    }
		} else {
		    if ((2U & (IData)(vlTOPp->v__DOT__op_code))) {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= ((1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__diff_sign) 
					  | (~ ((IData)(vlTOPp->v__DOT__op_code) 
						>> 6U))))
				    ? (IData)(vlTOPp->v__DOT__op_a)
				    : vlTOPp->v__DOT__test_pe_comp__DOT__add_res
				   [0U]);
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_a)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] = 0U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= (8U & ((IData)(vlTOPp->v__DOT__op_a) 
					 >> 0xcU));
			    vlTOPp->v__DOT__V = (8U 
						 & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						    >> 0xcU));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_w 
				= vlTOPp->v__DOT__op_a;
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= ((IData)(vlTOPp->v__DOT__op_d_p) 
				   << 3U);
			}
		    } else {
			if ((1U & (IData)(vlTOPp->v__DOT__op_code))) {
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U] 
				= (0xffffU & (~ (IData)(vlTOPp->v__DOT__op_b)));
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] = 1U;
			    vlTOPp->v__DOT__V = (0x1ffffff8U 
						 & (((IData)(vlTOPp->v__DOT__op_code) 
						     >> 3U) 
						    & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_sub_signed) 
						       << 3U)));
			} else {
			    vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w 
				= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_out
				[0U];
			    vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in[0U] 
				= vlTOPp->v__DOT__op_d_p;
			    vlTOPp->v__DOT__V = (8U 
						 & (((0x40U 
						      & (IData)(vlTOPp->v__DOT__op_code))
						      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__ovfl_add_signed)
						      : 
						     ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w) 
						      >> 3U)) 
						    << 3U));
			}
		    }
		}
	    }
	}
    }
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U];
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U];
    vlTOPp->res = ((0x200U & (IData)(vlTOPp->v__DOT__op_code))
		    ? (IData)(vlTOPp->v__DOT__op_b)
		    : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w));
    vlTOPp->v__DOT__Z = ((8U & ((~ (IData)((0U != (0xfU 
						   & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						      >> 0xcU))))) 
				<< 3U)) | ((4U & ((~ (IData)(
							     (0U 
							      != 
							      (0xfU 
							       & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
								  >> 8U))))) 
						  << 2U)) 
					   | ((2U & 
					       ((~ (IData)(
							   (0U 
							    != 
							    (0xfU 
							     & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
								>> 4U))))) 
						<< 1U)) 
					      | (1U 
						 & (~ (IData)(
							      (0U 
							       != 
							       (0xfU 
								& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w)))))))));
    vlTOPp->v__DOT__N = ((8U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
				>> 0xcU)) | ((4U & 
					      ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
					       >> 9U)) 
					     | ((2U 
						 & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						    >> 6U)) 
						| (1U 
						   & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						      >> 3U)))));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in
	[0U];
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__12(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__12\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_a[0U];
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_b[0U];
    vlTOPp->res = ((0x200U & (IData)(vlTOPp->v__DOT__op_code))
		    ? (IData)(vlTOPp->v__DOT__op_b)
		    : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w));
    vlTOPp->v__DOT__Z = ((8U & ((~ (IData)((0U != (0xfU 
						   & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						      >> 0xcU))))) 
				<< 3U)) | ((4U & ((~ (IData)(
							     (0U 
							      != 
							      (0xfU 
							       & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
								  >> 8U))))) 
						  << 2U)) 
					   | ((2U & 
					       ((~ (IData)(
							   (0U 
							    != 
							    (0xfU 
							     & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
								>> 4U))))) 
						<< 1U)) 
					      | (1U 
						 & (~ (IData)(
							      (0U 
							       != 
							       (0xfU 
								& (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w)))))))));
    vlTOPp->v__DOT__N = ((8U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
				>> 0xcU)) | ((4U & 
					      ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
					       >> 9U)) 
					     | ((2U 
						 & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						    >> 6U)) 
						| (1U 
						   & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_w) 
						      >> 3U)))));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in 
	= vlTOPp->v__DOT__test_pe_comp__DOT__add_c_in
	[0U];
    // ALWAYS at test_pe.v:396
    vlTOPp->v__DOT__res_p_w = (0xfU & ((0x8000U & (IData)(vlTOPp->v__DOT__op_code))
				        ? ((0x4000U 
					    & (IData)(vlTOPp->v__DOT__op_code))
					    ? ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w)
						    : 
						   (1U 
						    & ((IData)(vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut) 
						       >> 
						       ((((2U 
							   == 
							   (3U 
							    & ((IData)(vlTOPp->v__DOT__inp_code) 
							       >> 0xcU)))
							   ? (IData)(vlTOPp->bit2)
							   : (IData)(vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg)) 
							 << 2U) 
							| ((((2U 
							      == 
							      (3U 
							       & ((IData)(vlTOPp->v__DOT__inp_code) 
								  >> 0xaU)))
							      ? (IData)(vlTOPp->bit1)
							      : (IData)(vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg)) 
							    << 1U) 
							   | (IData)(vlTOPp->v__DOT__op_d_p))))))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (((0U 
						      != (IData)(vlTOPp->v__DOT__Z)) 
						     | ((IData)(vlTOPp->v__DOT__N) 
							!= (IData)(vlTOPp->v__DOT__V))) 
						    << 3U)
						    : 
						   (((~ (IData)(
								(0U 
								 != (IData)(vlTOPp->v__DOT__Z)))) 
						     & ((IData)(vlTOPp->v__DOT__N) 
							== (IData)(vlTOPp->v__DOT__V))) 
						    << 3U)))
					    : ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (((IData)(vlTOPp->v__DOT__N) 
						     != (IData)(vlTOPp->v__DOT__V)) 
						    << 3U)
						    : 
						   (((IData)(vlTOPp->v__DOT__N) 
						     == (IData)(vlTOPp->v__DOT__V)) 
						    << 3U))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   ((~ (IData)(vlTOPp->v__DOT__carry_out)) 
						    | (IData)(vlTOPp->v__DOT__Z))
						    : 
						   ((IData)(vlTOPp->v__DOT__carry_out) 
						    & (~ (IData)(vlTOPp->v__DOT__Z))))))
				        : ((0x4000U 
					    & (IData)(vlTOPp->v__DOT__op_code))
					    ? ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__V))
						    : (IData)(vlTOPp->v__DOT__V))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__N))
						    : (IData)(vlTOPp->v__DOT__N)))
					    : ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__carry_out))
						    : (IData)(vlTOPp->v__DOT__carry_out))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__Z))
						    : (IData)(vlTOPp->v__DOT__Z))))));
    vlTOPp->res_p = vlTOPp->v__DOT__res_p_w;
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (2U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
		    << 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (4U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full) 
			 >> 1U)) << 2U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (8U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full) 
			 >> 2U)) << 3U)));
}

void Vtest_pe::_settle__TOP__13(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_settle__TOP__13\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at test_pe.v:396
    vlTOPp->v__DOT__res_p_w = (0xfU & ((0x8000U & (IData)(vlTOPp->v__DOT__op_code))
				        ? ((0x4000U 
					    & (IData)(vlTOPp->v__DOT__op_code))
					    ? ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__res_p_w)
						    : 
						   (1U 
						    & ((IData)(vlTOPp->v__DOT__test_lut__DOT__GEN_LUT__BRA__0__KET____DOT__lut) 
						       >> 
						       ((((2U 
							   == 
							   (3U 
							    & ((IData)(vlTOPp->v__DOT__inp_code) 
							       >> 0xcU)))
							   ? (IData)(vlTOPp->bit2)
							   : (IData)(vlTOPp->v__DOT__test_opt_reg_f__DOT__data_in_reg)) 
							 << 2U) 
							| ((((2U 
							      == 
							      (3U 
							       & ((IData)(vlTOPp->v__DOT__inp_code) 
								  >> 0xaU)))
							      ? (IData)(vlTOPp->bit1)
							      : (IData)(vlTOPp->v__DOT__test_opt_reg_e__DOT__data_in_reg)) 
							    << 1U) 
							   | (IData)(vlTOPp->v__DOT__op_d_p))))))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (((0U 
						      != (IData)(vlTOPp->v__DOT__Z)) 
						     | ((IData)(vlTOPp->v__DOT__N) 
							!= (IData)(vlTOPp->v__DOT__V))) 
						    << 3U)
						    : 
						   (((~ (IData)(
								(0U 
								 != (IData)(vlTOPp->v__DOT__Z)))) 
						     & ((IData)(vlTOPp->v__DOT__N) 
							== (IData)(vlTOPp->v__DOT__V))) 
						    << 3U)))
					    : ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (((IData)(vlTOPp->v__DOT__N) 
						     != (IData)(vlTOPp->v__DOT__V)) 
						    << 3U)
						    : 
						   (((IData)(vlTOPp->v__DOT__N) 
						     == (IData)(vlTOPp->v__DOT__V)) 
						    << 3U))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   ((~ (IData)(vlTOPp->v__DOT__carry_out)) 
						    | (IData)(vlTOPp->v__DOT__Z))
						    : 
						   ((IData)(vlTOPp->v__DOT__carry_out) 
						    & (~ (IData)(vlTOPp->v__DOT__Z))))))
				        : ((0x4000U 
					    & (IData)(vlTOPp->v__DOT__op_code))
					    ? ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__V))
						    : (IData)(vlTOPp->v__DOT__V))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__N))
						    : (IData)(vlTOPp->v__DOT__N)))
					    : ((0x2000U 
						& (IData)(vlTOPp->v__DOT__op_code))
					        ? (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__carry_out))
						    : (IData)(vlTOPp->v__DOT__carry_out))
					        : (
						   (0x1000U 
						    & (IData)(vlTOPp->v__DOT__op_code))
						    ? 
						   (~ (IData)(vlTOPp->v__DOT__Z))
						    : (IData)(vlTOPp->v__DOT__Z))))));
    vlTOPp->res_p = vlTOPp->v__DOT__res_p_w;
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (2U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
		    << 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((0xbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (4U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full) 
			 >> 1U)) << 2U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in 
	= ((7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)) 
	   | (8U & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__is_addsub_vec)
		      ? (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__c_in)
		      : ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full) 
			 >> 2U)) << 3U)));
    vlTOPp->irq = (0U != (((((IData)(vlTOPp->res) != (IData)(vlTOPp->v__DOT__test_debug_data__DOT__debug_val)) 
			    << 1U) | ((IData)(vlTOPp->res_p) 
				      != (IData)(vlTOPp->v__DOT__test_debug_bit__DOT__debug_val))) 
			  & ((IData)(vlTOPp->v__DOT__op_code) 
			     >> 0xaU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (1U & ((((0xfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a)) 
		      + (0xfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b))) 
		     + (1U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in))) 
		    >> 4U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xfff0U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xfU & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
		       + (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b)) 
		      + (1U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)))));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (2U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 4U)) + (0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
						  >> 4U))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 1U))) >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xff0fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf0U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			  >> 4U) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
				    >> 4U)) + (1U & 
					       ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
						>> 1U))) 
		       << 4U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (4U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 8U)) + (0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
						  >> 8U))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 2U))) >> 2U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xf0ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf00U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			   >> 8U) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
				     >> 8U)) + (1U 
						& ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
						   >> 2U))) 
			<< 8U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (8U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 0xcU)) + (0xfU & 
					    ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
					     >> 0xcU))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 3U))) >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf000U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			    >> 0xcU) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
					>> 0xcU)) + 
			  (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
				 >> 3U))) << 0xcU)));
}

VL_INLINE_OPT void Vtest_pe::_combo__TOP__14(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_combo__TOP__14\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->irq = (0U != (((((IData)(vlTOPp->res) != (IData)(vlTOPp->v__DOT__test_debug_data__DOT__debug_val)) 
			    << 1U) | ((IData)(vlTOPp->res_p) 
				      != (IData)(vlTOPp->v__DOT__test_debug_bit__DOT__debug_val))) 
			  & ((IData)(vlTOPp->v__DOT__op_code) 
			     >> 0xaU)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xeU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (1U & ((((0xfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a)) 
		      + (0xfU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b))) 
		     + (1U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in))) 
		    >> 4U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xfff0U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xfU & (((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
		       + (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b)) 
		      + (1U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in)))));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xdU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (2U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 4U)) + (0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
						  >> 4U))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 1U))) >> 3U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xff0fU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf0U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			  >> 4U) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
				    >> 4U)) + (1U & 
					       ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
						>> 1U))) 
		       << 4U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((0xbU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (4U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 8U)) + (0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
						  >> 8U))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 2U))) >> 2U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xf0ffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf00U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			   >> 8U) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
				     >> 8U)) + (1U 
						& ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
						   >> 2U))) 
			<< 8U)));
    vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= ((7U & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full)) 
	   | (8U & ((((0xfU & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			       >> 0xcU)) + (0xfU & 
					    ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
					     >> 0xcU))) 
		     + (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
			      >> 3U))) >> 1U)));
    vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= ((0xfffU & (IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)) 
	   | (0xf000U & (((((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__a) 
			    >> 0xcU) + ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT____Vcellinp__full_add__b) 
					>> 0xcU)) + 
			  (1U & ((IData)(vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__carries_in) 
				 >> 3U))) << 0xcU)));
}

void Vtest_pe::_eval(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_eval\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    if ((((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk))) 
	 | ((~ (IData)(vlTOPp->rst_n)) & (IData)(vlTOPp->__Vclklast__TOP__rst_n)))) {
	vlTOPp->_sequent__TOP__3(vlSymsp);
    }
    vlTOPp->_combo__TOP__4(vlSymsp);
    vlTOPp->_combo__TOP__6(vlSymsp);
    vlTOPp->_combo__TOP__8(vlSymsp);
    vlTOPp->_combo__TOP__10(vlSymsp);
    vlTOPp->_combo__TOP__12(vlSymsp);
    vlTOPp->_combo__TOP__14(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__rst_n = vlTOPp->rst_n;
}

void Vtest_pe::_eval_initial(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_eval_initial\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtest_pe::final() {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::final\n"); );
    // Variables
    Vtest_pe__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtest_pe::_eval_settle(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_eval_settle\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->_settle__TOP__5(vlSymsp);
    vlTOPp->_settle__TOP__7(vlSymsp);
    vlTOPp->_settle__TOP__9(vlSymsp);
    vlTOPp->_settle__TOP__11(vlSymsp);
    vlTOPp->_settle__TOP__13(vlSymsp);
}

VL_INLINE_OPT QData Vtest_pe::_change_request(Vtest_pe__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vtest_pe::_change_request\n"); );
    Vtest_pe* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    __req |= ((vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res ^ vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT____Vcellout__full_add__res)
	 | (vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full ^ vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full));
    VL_DEBUG_IF( if(__req && ((vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res ^ vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT____Vcellout__full_add__res))) VL_PRINTF("	CHANGE: ../../genesis_verif/test_full_add.sv:51: v.test_pe_comp.__Vcellout__full_add__res\n"); );
    VL_DEBUG_IF( if(__req && ((vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full ^ vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full))) VL_PRINTF("	CHANGE: ../../genesis_verif/test_full_add.sv:56: v.test_pe_comp.full_add.c_out_full\n"); );
    // Final
    vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT____Vcellout__full_add__res 
	= vlTOPp->v__DOT__test_pe_comp__DOT____Vcellout__full_add__res;
    vlTOPp->__Vchglast__TOP__v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full 
	= vlTOPp->v__DOT__test_pe_comp__DOT__full_add__DOT__c_out_full;
    return __req;
}
