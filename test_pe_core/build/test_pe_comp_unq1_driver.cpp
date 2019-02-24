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

  top->op_code = 15;
  top->op_a = 8;
  top->op_b = 13;
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
  top->op_a = 9;
  top->op_b = 4;
  top->op_d_p = 0;
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
  top->op_a = 9;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 19, "res");
  my_assert(top->res_p, 0, 20, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 26, "res");
  my_assert(top->res_p, 0, 27, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 10;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 33, "res");
  my_assert(top->res_p, 0, 34, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 40, "res");
  my_assert(top->res_p, 0, 41, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 47, "res");
  my_assert(top->res_p, 0, 48, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 54, "res");
  my_assert(top->res_p, 0, 55, "res_p");
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
  my_assert(top->res, 0, 61, "res");
  my_assert(top->res_p, 0, 62, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 68, "res");
  my_assert(top->res_p, 0, 69, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 75, "res");
  my_assert(top->res_p, 0, 76, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 82, "res");
  my_assert(top->res_p, 0, 83, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 89, "res");
  my_assert(top->res_p, 0, 90, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 96, "res");
  my_assert(top->res_p, 0, 97, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 103, "res");
  my_assert(top->res_p, 0, 104, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 110, "res");
  my_assert(top->res_p, 0, 111, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 117, "res");
  my_assert(top->res_p, 0, 118, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15, 124, "res");
  my_assert(top->res_p, 0, 125, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 131, "res");
  my_assert(top->res_p, 0, 132, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 138, "res");
  my_assert(top->res_p, 0, 139, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 145, "res");
  my_assert(top->res_p, 0, 146, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 152, "res");
  my_assert(top->res_p, 0, 153, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 159, "res");
  my_assert(top->res_p, 0, 160, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 166, "res");
  my_assert(top->res_p, 0, 167, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 173, "res");
  my_assert(top->res_p, 0, 174, "res_p");
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
  my_assert(top->res, 0, 180, "res");
  my_assert(top->res_p, 0, 181, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 187, "res");
  my_assert(top->res_p, 0, 188, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 5;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 194, "res");
  my_assert(top->res_p, 0, 195, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 201, "res");
  my_assert(top->res_p, 0, 202, "res_p");
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
  my_assert(top->res, 0, 208, "res");
  my_assert(top->res_p, 0, 209, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 11, 215, "res");
  my_assert(top->res_p, 0, 216, "res_p");
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
  my_assert(top->res, 0, 222, "res");
  my_assert(top->res_p, 0, 223, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 229, "res");
  my_assert(top->res_p, 0, 230, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 236, "res");
  my_assert(top->res_p, 0, 237, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 243, "res");
  my_assert(top->res_p, 0, 244, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 250, "res");
  my_assert(top->res_p, 0, 251, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 257, "res");
  my_assert(top->res_p, 0, 258, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 264, "res");
  my_assert(top->res_p, 0, 265, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 271, "res");
  my_assert(top->res_p, 0, 272, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 11, 278, "res");
  my_assert(top->res_p, 0, 279, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 285, "res");
  my_assert(top->res_p, 0, 286, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 292, "res");
  my_assert(top->res_p, 0, 293, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 299, "res");
  my_assert(top->res_p, 0, 300, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 306, "res");
  my_assert(top->res_p, 0, 307, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 313, "res");
  my_assert(top->res_p, 0, 314, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 320, "res");
  my_assert(top->res_p, 0, 321, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 12;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 327, "res");
  my_assert(top->res_p, 0, 328, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 334, "res");
  my_assert(top->res_p, 0, 335, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15, 341, "res");
  my_assert(top->res_p, 0, 342, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 348, "res");
  my_assert(top->res_p, 0, 349, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 355, "res");
  my_assert(top->res_p, 0, 356, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 362, "res");
  my_assert(top->res_p, 0, 363, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 369, "res");
  my_assert(top->res_p, 0, 370, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 376, "res");
  my_assert(top->res_p, 0, 377, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 383, "res");
  my_assert(top->res_p, 0, 384, "res_p");
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
  my_assert(top->res, 0, 390, "res");
  my_assert(top->res_p, 0, 391, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 8;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 397, "res");
  my_assert(top->res_p, 0, 398, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 404, "res");
  my_assert(top->res_p, 0, 405, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 411, "res");
  my_assert(top->res_p, 0, 412, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 418, "res");
  my_assert(top->res_p, 0, 419, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 425, "res");
  my_assert(top->res_p, 0, 426, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 432, "res");
  my_assert(top->res_p, 0, 433, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 439, "res");
  my_assert(top->res_p, 0, 440, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 446, "res");
  my_assert(top->res_p, 0, 447, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 453, "res");
  my_assert(top->res_p, 0, 454, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 460, "res");
  my_assert(top->res_p, 0, 461, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 6, 467, "res");
  my_assert(top->res_p, 0, 468, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 474, "res");
  my_assert(top->res_p, 0, 475, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 481, "res");
  my_assert(top->res_p, 0, 482, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 13, 488, "res");
  my_assert(top->res_p, 0, 489, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 495, "res");
  my_assert(top->res_p, 0, 496, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 10;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 502, "res");
  my_assert(top->res_p, 0, 503, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 509, "res");
  my_assert(top->res_p, 0, 510, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15, 516, "res");
  my_assert(top->res_p, 0, 517, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 523, "res");
  my_assert(top->res_p, 0, 524, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 530, "res");
  my_assert(top->res_p, 0, 531, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 537, "res");
  my_assert(top->res_p, 0, 538, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 544, "res");
  my_assert(top->res_p, 0, 545, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 551, "res");
  my_assert(top->res_p, 0, 552, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 8;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 558, "res");
  my_assert(top->res_p, 0, 559, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 565, "res");
  my_assert(top->res_p, 0, 566, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 572, "res");
  my_assert(top->res_p, 0, 573, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 579, "res");
  my_assert(top->res_p, 0, 580, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 586, "res");
  my_assert(top->res_p, 0, 587, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 593, "res");
  my_assert(top->res_p, 0, 594, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 600, "res");
  my_assert(top->res_p, 0, 601, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 607, "res");
  my_assert(top->res_p, 0, 608, "res_p");
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
  my_assert(top->res, 0, 614, "res");
  my_assert(top->res_p, 0, 615, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 621, "res");
  my_assert(top->res_p, 0, 622, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 5;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 628, "res");
  my_assert(top->res_p, 0, 629, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 635, "res");
  my_assert(top->res_p, 0, 636, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 642, "res");
  my_assert(top->res_p, 0, 643, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 649, "res");
  my_assert(top->res_p, 0, 650, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 656, "res");
  my_assert(top->res_p, 0, 657, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 10;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 663, "res");
  my_assert(top->res_p, 0, 664, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 670, "res");
  my_assert(top->res_p, 0, 671, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 5;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 677, "res");
  my_assert(top->res_p, 0, 678, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 684, "res");
  my_assert(top->res_p, 0, 685, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 691, "res");
  my_assert(top->res_p, 0, 692, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 698, "res");
  my_assert(top->res_p, 0, 699, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 705, "res");
  my_assert(top->res_p, 0, 706, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 712, "res");
  my_assert(top->res_p, 0, 713, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 719, "res");
  my_assert(top->res_p, 0, 720, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 726, "res");
  my_assert(top->res_p, 0, 727, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 733, "res");
  my_assert(top->res_p, 0, 734, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 740, "res");
  my_assert(top->res_p, 0, 741, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 747, "res");
  my_assert(top->res_p, 0, 748, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 754, "res");
  my_assert(top->res_p, 0, 755, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 761, "res");
  my_assert(top->res_p, 0, 762, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 768, "res");
  my_assert(top->res_p, 0, 769, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 775, "res");
  my_assert(top->res_p, 0, 776, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 12;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 782, "res");
  my_assert(top->res_p, 0, 783, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 789, "res");
  my_assert(top->res_p, 0, 790, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 796, "res");
  my_assert(top->res_p, 0, 797, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 12;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 803, "res");
  my_assert(top->res_p, 0, 804, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 810, "res");
  my_assert(top->res_p, 0, 811, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 817, "res");
  my_assert(top->res_p, 0, 818, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 824, "res");
  my_assert(top->res_p, 0, 825, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 831, "res");
  my_assert(top->res_p, 0, 832, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 838, "res");
  my_assert(top->res_p, 0, 839, "res_p");
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
  my_assert(top->res, 3, 845, "res");
  my_assert(top->res_p, 0, 846, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 852, "res");
  my_assert(top->res_p, 0, 853, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 859, "res");
  my_assert(top->res_p, 0, 860, "res_p");
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
  my_assert(top->res, 0, 866, "res");
  my_assert(top->res_p, 0, 867, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 873, "res");
  my_assert(top->res_p, 0, 874, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 880, "res");
  my_assert(top->res_p, 0, 881, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 887, "res");
  my_assert(top->res_p, 0, 888, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 894, "res");
  my_assert(top->res_p, 0, 895, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 901, "res");
  my_assert(top->res_p, 0, 902, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 908, "res");
  my_assert(top->res_p, 0, 909, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 915, "res");
  my_assert(top->res_p, 0, 916, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 922, "res");
  my_assert(top->res_p, 0, 923, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 929, "res");
  my_assert(top->res_p, 0, 930, "res_p");
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
  my_assert(top->res, 2, 936, "res");
  my_assert(top->res_p, 0, 937, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 943, "res");
  my_assert(top->res_p, 0, 944, "res_p");
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
  my_assert(top->res, 1, 950, "res");
  my_assert(top->res_p, 0, 951, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 957, "res");
  my_assert(top->res_p, 0, 958, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 964, "res");
  my_assert(top->res_p, 0, 965, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 971, "res");
  my_assert(top->res_p, 0, 972, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 978, "res");
  my_assert(top->res_p, 0, 979, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 985, "res");
  my_assert(top->res_p, 0, 986, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 992, "res");
  my_assert(top->res_p, 0, 993, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15, 999, "res");
  my_assert(top->res_p, 0, 1000, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1006, "res");
  my_assert(top->res_p, 0, 1007, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1013, "res");
  my_assert(top->res_p, 0, 1014, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1020, "res");
  my_assert(top->res_p, 0, 1021, "res_p");
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
  my_assert(top->res, 0, 1027, "res");
  my_assert(top->res_p, 0, 1028, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1034, "res");
  my_assert(top->res_p, 0, 1035, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1041, "res");
  my_assert(top->res_p, 0, 1042, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1048, "res");
  my_assert(top->res_p, 0, 1049, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1055, "res");
  my_assert(top->res_p, 0, 1056, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1062, "res");
  my_assert(top->res_p, 0, 1063, "res_p");
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
  my_assert(top->res, 0, 1069, "res");
  my_assert(top->res_p, 0, 1070, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 1076, "res");
  my_assert(top->res_p, 0, 1077, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1083, "res");
  my_assert(top->res_p, 0, 1084, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1090, "res");
  my_assert(top->res_p, 0, 1091, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1097, "res");
  my_assert(top->res_p, 0, 1098, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1104, "res");
  my_assert(top->res_p, 0, 1105, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1111, "res");
  my_assert(top->res_p, 0, 1112, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1118, "res");
  my_assert(top->res_p, 0, 1119, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1125, "res");
  my_assert(top->res_p, 0, 1126, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 12;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1132, "res");
  my_assert(top->res_p, 0, 1133, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 1139, "res");
  my_assert(top->res_p, 0, 1140, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1146, "res");
  my_assert(top->res_p, 0, 1147, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 1153, "res");
  my_assert(top->res_p, 0, 1154, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 6, 1160, "res");
  my_assert(top->res_p, 0, 1161, "res_p");
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
  my_assert(top->res, 0, 1167, "res");
  my_assert(top->res_p, 0, 1168, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1174, "res");
  my_assert(top->res_p, 0, 1175, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 1181, "res");
  my_assert(top->res_p, 0, 1182, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 1188, "res");
  my_assert(top->res_p, 0, 1189, "res_p");
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
  my_assert(top->res, 0, 1195, "res");
  my_assert(top->res_p, 0, 1196, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 4;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1202, "res");
  my_assert(top->res_p, 0, 1203, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1209, "res");
  my_assert(top->res_p, 0, 1210, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 5;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1216, "res");
  my_assert(top->res_p, 0, 1217, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1223, "res");
  my_assert(top->res_p, 0, 1224, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 10;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1230, "res");
  my_assert(top->res_p, 0, 1231, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 5;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1237, "res");
  my_assert(top->res_p, 0, 1238, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1244, "res");
  my_assert(top->res_p, 0, 1245, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1251, "res");
  my_assert(top->res_p, 0, 1252, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1258, "res");
  my_assert(top->res_p, 0, 1259, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1265, "res");
  my_assert(top->res_p, 0, 1266, "res_p");
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
  my_assert(top->res, 0, 1272, "res");
  my_assert(top->res_p, 0, 1273, "res_p");
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
  my_assert(top->res, 0, 1279, "res");
  my_assert(top->res_p, 0, 1280, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 11;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1286, "res");
  my_assert(top->res_p, 0, 1287, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1293, "res");
  my_assert(top->res_p, 0, 1294, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 5, 1300, "res");
  my_assert(top->res_p, 0, 1301, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1307, "res");
  my_assert(top->res_p, 0, 1308, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 10, 1314, "res");
  my_assert(top->res_p, 0, 1315, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1321, "res");
  my_assert(top->res_p, 0, 1322, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1328, "res");
  my_assert(top->res_p, 0, 1329, "res_p");
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
  my_assert(top->res, 1, 1335, "res");
  my_assert(top->res_p, 0, 1336, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1342, "res");
  my_assert(top->res_p, 0, 1343, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 7, 1349, "res");
  my_assert(top->res_p, 0, 1350, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1356, "res");
  my_assert(top->res_p, 0, 1357, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1363, "res");
  my_assert(top->res_p, 0, 1364, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1370, "res");
  my_assert(top->res_p, 0, 1371, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 7, 1377, "res");
  my_assert(top->res_p, 0, 1378, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1384, "res");
  my_assert(top->res_p, 0, 1385, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 0;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15, 1391, "res");
  my_assert(top->res_p, 0, 1392, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1398, "res");
  my_assert(top->res_p, 0, 1399, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1405, "res");
  my_assert(top->res_p, 0, 1406, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 15;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1412, "res");
  my_assert(top->res_p, 0, 1413, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1419, "res");
  my_assert(top->res_p, 0, 1420, "res_p");
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
  my_assert(top->res, 0, 1426, "res");
  my_assert(top->res_p, 0, 1427, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1433, "res");
  my_assert(top->res_p, 0, 1434, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1440, "res");
  my_assert(top->res_p, 0, 1441, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 1447, "res");
  my_assert(top->res_p, 0, 1448, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 3;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 1454, "res");
  my_assert(top->res_p, 0, 1455, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1461, "res");
  my_assert(top->res_p, 0, 1462, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 4, 1468, "res");
  my_assert(top->res_p, 0, 1469, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1475, "res");
  my_assert(top->res_p, 0, 1476, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1482, "res");
  my_assert(top->res_p, 0, 1483, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1489, "res");
  my_assert(top->res_p, 0, 1490, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 1;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 7, 1496, "res");
  my_assert(top->res_p, 0, 1497, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1503, "res");
  my_assert(top->res_p, 0, 1504, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 13;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1510, "res");
  my_assert(top->res_p, 0, 1511, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 14;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1517, "res");
  my_assert(top->res_p, 0, 1518, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1524, "res");
  my_assert(top->res_p, 0, 1525, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 15;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1531, "res");
  my_assert(top->res_p, 0, 1532, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1538, "res");
  my_assert(top->res_p, 0, 1539, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 13;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1545, "res");
  my_assert(top->res_p, 0, 1546, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 12;
  top->op_b = 11;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1552, "res");
  my_assert(top->res_p, 0, 1553, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1559, "res");
  my_assert(top->res_p, 0, 1560, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 7;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1566, "res");
  my_assert(top->res_p, 0, 1567, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1573, "res");
  my_assert(top->res_p, 0, 1574, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 1;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1580, "res");
  my_assert(top->res_p, 0, 1581, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 14;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1587, "res");
  my_assert(top->res_p, 0, 1588, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 2, 1594, "res");
  my_assert(top->res_p, 0, 1595, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1601, "res");
  my_assert(top->res_p, 0, 1602, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 12;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1608, "res");
  my_assert(top->res_p, 0, 1609, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 10;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1615, "res");
  my_assert(top->res_p, 0, 1616, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 9;
  top->op_b = 3;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 1622, "res");
  my_assert(top->res_p, 0, 1623, "res_p");
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
  my_assert(top->res, 0, 1629, "res");
  my_assert(top->res_p, 0, 1630, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 5;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1636, "res");
  my_assert(top->res_p, 0, 1637, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1643, "res");
  my_assert(top->res_p, 0, 1644, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 7;
  top->op_b = 9;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1650, "res");
  my_assert(top->res_p, 0, 1651, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 10;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1657, "res");
  my_assert(top->res_p, 0, 1658, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 1;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1664, "res");
  my_assert(top->res_p, 0, 1665, "res_p");
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
  my_assert(top->res, 0, 1671, "res");
  my_assert(top->res_p, 0, 1672, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 11;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 11, 1678, "res");
  my_assert(top->res_p, 0, 1679, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 7;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1685, "res");
  my_assert(top->res_p, 0, 1686, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 3;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1692, "res");
  my_assert(top->res_p, 0, 1693, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 14;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1699, "res");
  my_assert(top->res_p, 0, 1700, "res_p");
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
  my_assert(top->res, 0, 1706, "res");
  my_assert(top->res_p, 0, 1707, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 8;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1713, "res");
  my_assert(top->res_p, 0, 1714, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 4;
  top->op_b = 9;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1720, "res");
  my_assert(top->res_p, 0, 1721, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 6;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1727, "res");
  my_assert(top->res_p, 0, 1728, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1734, "res");
  my_assert(top->res_p, 0, 1735, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 0;
  top->op_b = 4;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1741, "res");
  my_assert(top->res_p, 0, 1742, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 10;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 10, 1748, "res");
  my_assert(top->res_p, 0, 1749, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 8;
  top->op_b = 8;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1755, "res");
  my_assert(top->res_p, 0, 1756, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 2;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3, 1762, "res");
  my_assert(top->res_p, 0, 1763, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 6;
  top->op_b = 0;
  top->op_d_p = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 6, 1769, "res");
  my_assert(top->res_p, 0, 1770, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 5;
  top->op_b = 2;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1, 1776, "res");
  my_assert(top->res_p, 0, 1777, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 2;
  top->op_b = 6;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1783, "res");
  my_assert(top->res_p, 0, 1784, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->op_a = 13;
  top->op_b = 15;
  top->op_d_p = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 0, 1790, "res");
  my_assert(top->res_p, 0, 1791, "res_p");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif


#if VM_TRACE
  tracer->close();
#endif
}
