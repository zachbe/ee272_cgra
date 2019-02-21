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
  top->cfg_d = 705339460;
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
  top->cfg_d = 26650;
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
  top->data0 = 25156;
  top->data1 = 11074;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 25156, 43, "res");
  my_assert(top->res_p, 8, 44, "res_p");
  my_assert(top->irq, 0, 45, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 42592;
  top->data1 = 15012;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 15012, 53, "res");
  my_assert(top->res_p, 0, 54, "res_p");
  my_assert(top->irq, 0, 55, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 49493;
  top->data1 = 13144;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 13144, 63, "res");
  my_assert(top->res_p, 0, 64, "res_p");
  my_assert(top->irq, 0, 65, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 33275;
  top->data1 = 44051;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 44051, 73, "res");
  my_assert(top->res_p, 0, 74, "res_p");
  my_assert(top->irq, 0, 75, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 26024;
  top->data1 = 24720;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 26024, 83, "res");
  my_assert(top->res_p, 0, 84, "res_p");
  my_assert(top->irq, 0, 85, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 27217;
  top->data1 = 48813;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 27217, 93, "res");
  my_assert(top->res_p, 0, 94, "res_p");
  my_assert(top->irq, 0, 95, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 49316;
  top->data1 = 18857;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 18857, 103, "res");
  my_assert(top->res_p, 0, 104, "res_p");
  my_assert(top->irq, 0, 105, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 23000;
  top->data1 = 8029;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 23000, 113, "res");
  my_assert(top->res_p, 0, 114, "res_p");
  my_assert(top->irq, 0, 115, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 57196;
  top->data1 = 18056;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 18056, 123, "res");
  my_assert(top->res_p, 0, 124, "res_p");
  my_assert(top->irq, 0, 125, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 20780;
  top->data1 = 23462;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 23462, 133, "res");
  my_assert(top->res_p, 0, 134, "res_p");
  my_assert(top->irq, 0, 135, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 33126;
  top->data1 = 27130;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 27130, 143, "res");
  my_assert(top->res_p, 0, 144, "res_p");
  my_assert(top->irq, 0, 145, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 56517;
  top->data1 = 20021;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 20021, 153, "res");
  my_assert(top->res_p, 0, 154, "res_p");
  my_assert(top->irq, 0, 155, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 52536;
  top->data1 = 1225;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1225, 163, "res");
  my_assert(top->res_p, 0, 164, "res_p");
  my_assert(top->irq, 0, 165, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 1716;
  top->data1 = 50543;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 1716, 173, "res");
  my_assert(top->res_p, 0, 174, "res_p");
  my_assert(top->irq, 0, 175, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 32752;
  top->data1 = 1115;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 32752, 183, "res");
  my_assert(top->res_p, 0, 184, "res_p");
  my_assert(top->irq, 0, 185, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 42277;
  top->data1 = 41877;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 42277, 193, "res");
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
