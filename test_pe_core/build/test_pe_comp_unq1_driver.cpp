#include "Vtest_pe_comp_unq1.h"
#include "verilated.h"
#include <iostream>
#include <verilated_vcd_c.h>
#include <sys/types.h>
#include <sys/stat.h>

// Based on https://www.veripool.org/projects/verilator/wiki/Manual-verilator#CONNECTING-TO-C
vluint64_t main_time = 0;       // Current simulation time
// This is a 64-bit integer to reduce wrap over issues and
// allow modulus.  You can also use a double, if you wish.

double sc_time_stamp () {       // Called by $time in Verilog
    return main_time;           // converts to double, to match
                                // what SystemC does
}

#if VM_TRACE
VerilatedVcdC* tracer;
#endif

void my_assert(
    unsigned int got,
    unsigned int expected,
    int i,
    const char* port) {
  if (got != expected) {
    std::cerr << std::endl;  // end the current line
    std::cerr << "Got      : 0x" << std::hex << got << std::endl;
    std::cerr << "Expected : 0x" << std::hex << expected << std::endl;
    std::cerr << "i        : " << std::dec << i << std::endl;
    std::cerr << "Port     : " << port << std::endl;
#if VM_TRACE
    tracer->close();
#endif
    exit(1);
  }
}

int main(int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vtest_pe_comp_unq1* top = new Vtest_pe_comp_unq1;

#if VM_TRACE
  Verilated::traceEverOn(true);
  tracer = new VerilatedVcdC;
  top->trace(tracer, 99);
  mkdir("logs", S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
  tracer->open("logs/test_pe_comp_unq1.vcd");
#endif

  top->op_code = 22;
  top->op_a = 0;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 5, "res");
  my_assert(top->res_p, 0, 6, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 12, "res");
  my_assert(top->res_p, 0, 13, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 19, "res");
  my_assert(top->res_p, 0, 20, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 26, "res");
  my_assert(top->res_p, 0, 27, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 33, "res");
  my_assert(top->res_p, 0, 34, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 40, "res");
  my_assert(top->res_p, 0, 41, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 47, "res");
  my_assert(top->res_p, 0, 48, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 54, "res");
  my_assert(top->res_p, 0, 55, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 61, "res");
  my_assert(top->res_p, 0, 62, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 68, "res");
  my_assert(top->res_p, 0, 69, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 75, "res");
  my_assert(top->res_p, 0, 76, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 82, "res");
  my_assert(top->res_p, 0, 83, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 89, "res");
  my_assert(top->res_p, 0, 90, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 96, "res");
  my_assert(top->res_p, 0, 97, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 103, "res");
  my_assert(top->res_p, 0, 104, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 110, "res");
  my_assert(top->res_p, 0, 111, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 117, "res");
  my_assert(top->res_p, 0, 118, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 124, "res");
  my_assert(top->res_p, 0, 125, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 131, "res");
  my_assert(top->res_p, 0, 132, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 138, "res");
  my_assert(top->res_p, 0, 139, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 145, "res");
  my_assert(top->res_p, 0, 146, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 152, "res");
  my_assert(top->res_p, 0, 153, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 159, "res");
  my_assert(top->res_p, 0, 160, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 166, "res");
  my_assert(top->res_p, 0, 167, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 173, "res");
  my_assert(top->res_p, 0, 174, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 180, "res");
  my_assert(top->res_p, 0, 181, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 187, "res");
  my_assert(top->res_p, 0, 188, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 194, "res");
  my_assert(top->res_p, 0, 195, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 201, "res");
  my_assert(top->res_p, 0, 202, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 208, "res");
  my_assert(top->res_p, 0, 209, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 6, 215, "res");
  my_assert(top->res_p, 0, 216, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 6, 222, "res");
  my_assert(top->res_p, 0, 223, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif


#if VM_TRACE
  tracer->close();
#endif
}
