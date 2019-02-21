#include "Vtest_pe.h"
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
  Vtest_pe* top = new Vtest_pe;

#if VM_TRACE
  Verilated::traceEverOn(true);
  tracer = new VerilatedVcdC;
  top->trace(tracer, 99);
  mkdir("logs", S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
  tracer->open("logs/test_pe.vcd");
#endif

  top->clk_en = 1;
  top->rst_n = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->rst_n = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->rst_n = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->cfg_en = 1;
  top->cfg_d = 0;
  top->cfg_a = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 240;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 241;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 243;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 244;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 245;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 705298432;
  top->cfg_a = 255;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 4821;
  top->cfg_a = 224;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_d = 0;
  top->cfg_a = 225;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->cfg_en = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->clk ^= 1;
  top->data0 = 4068;
  top->data1 = 50615;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 54684, 43, "res");
  my_assert(top->res_p, 0, 44, "res_p");
  my_assert(top->irq, 0, 45, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 34338;
  top->data1 = 19371;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 53710, 53, "res");
  my_assert(top->res_p, 0, 54, "res_p");
  my_assert(top->irq, 0, 55, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 6412;
  top->data1 = 21865;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 28277, 63, "res");
  my_assert(top->res_p, 0, 64, "res_p");
  my_assert(top->irq, 0, 65, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 29810;
  top->data1 = 45527;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 9801, 73, "res");
  my_assert(top->res_p, 0, 74, "res_p");
  my_assert(top->irq, 0, 75, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 11565;
  top->data1 = 20407;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 31973, 83, "res");
  my_assert(top->res_p, 0, 84, "res_p");
  my_assert(top->irq, 0, 85, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 34594;
  top->data1 = 46149;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15208, 93, "res");
  my_assert(top->res_p, 0, 94, "res_p");
  my_assert(top->irq, 0, 95, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 9568;
  top->data1 = 57601;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1634, 103, "res");
  my_assert(top->res_p, 8, 104, "res_p");
  my_assert(top->irq, 0, 105, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 48267;
  top->data1 = 43583;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 26315, 113, "res");
  my_assert(top->res_p, 0, 114, "res_p");
  my_assert(top->irq, 0, 115, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 42290;
  top->data1 = 18953;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 61243, 123, "res");
  my_assert(top->res_p, 0, 124, "res_p");
  my_assert(top->irq, 0, 125, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 58829;
  top->data1 = 60585;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 53879, 133, "res");
  my_assert(top->res_p, 0, 134, "res_p");
  my_assert(top->irq, 0, 135, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 46198;
  top->data1 = 18805;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 65003, 143, "res");
  my_assert(top->res_p, 0, 144, "res_p");
  my_assert(top->irq, 0, 145, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 50355;
  top->data1 = 2320;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 52675, 153, "res");
  my_assert(top->res_p, 0, 154, "res_p");
  my_assert(top->irq, 0, 155, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 60206;
  top->data1 = 27769;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 22439, 163, "res");
  my_assert(top->res_p, 0, 164, "res_p");
  my_assert(top->irq, 0, 165, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 56314;
  top->data1 = 10658;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1437, 173, "res");
  my_assert(top->res_p, 8, 174, "res_p");
  my_assert(top->irq, 0, 175, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 30964;
  top->data1 = 58898;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 24326, 183, "res");
  my_assert(top->res_p, 2, 184, "res_p");
  my_assert(top->irq, 0, 185, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 17994;
  top->data1 = 14511;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 32505, 193, "res");
  my_assert(top->res_p, 0, 194, "res_p");
  my_assert(top->irq, 0, 195, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif


#if VM_TRACE
  tracer->close();
#endif
}
