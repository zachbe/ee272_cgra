// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtest_pe_comp_unq1__Syms.h"
#include "Vtest_pe_comp_unq1.h"

// FUNCTIONS
Vtest_pe_comp_unq1__Syms::Vtest_pe_comp_unq1__Syms(Vtest_pe_comp_unq1* topp, const char* namep)
	// Setup locals
	: __Vm_namep(namep)
	, __Vm_activity(false)
	, __Vm_didInit(false)
	// Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    // Setup scope names
}
