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
  top->cfg_d = 22028;
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
  top->data0 = 24252;
  top->data1 = 294;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 24546, 43, "res");
  my_assert(top->res_p, 0, 44, "res_p");
  my_assert(top->irq, 0, 45, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 62808;
  top->data1 = 59930;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 57202, 53, "res");
  my_assert(top->res_p, 0, 54, "res_p");
  my_assert(top->irq, 0, 55, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 29666;
  top->data1 = 16875;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 46541, 63, "res");
  my_assert(top->res_p, 0, 64, "res_p");
  my_assert(top->irq, 0, 65, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 34590;
  top->data1 = 34704;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 3758, 73, "res");
  my_assert(top->res_p, 8, 74, "res_p");
  my_assert(top->irq, 0, 75, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 19667;
  top->data1 = 32664;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 52332, 83, "res");
  my_assert(top->res_p, 0, 84, "res_p");
  my_assert(top->irq, 0, 85, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 38239;
  top->data1 = 4964;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 43204, 93, "res");
  my_assert(top->res_p, 0, 94, "res_p");
  my_assert(top->irq, 0, 95, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 45746;
  top->data1 = 28613;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 8824, 103, "res");
  my_assert(top->res_p, 0, 104, "res_p");
  my_assert(top->irq, 0, 105, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 24674;
  top->data1 = 637;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 25311, 113, "res");
  my_assert(top->res_p, 0, 114, "res_p");
  my_assert(top->irq, 0, 115, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 56442;
  top->data1 = 59777;
  top->bit0 = 1;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 50684, 123, "res");
  my_assert(top->res_p, 0, 124, "res_p");
  my_assert(top->irq, 0, 125, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 51125;
  top->data1 = 52862;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 38452, 133, "res");
  my_assert(top->res_p, 0, 134, "res_p");
  my_assert(top->irq, 0, 135, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 32381;
  top->data1 = 20803;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 53185, 143, "res");
  my_assert(top->res_p, 0, 144, "res_p");
  my_assert(top->irq, 0, 145, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 39198;
  top->data1 = 45907;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 19569, 153, "res");
  my_assert(top->res_p, 0, 154, "res_p");
  my_assert(top->irq, 0, 155, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 51856;
  top->data1 = 51082;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 37402, 163, "res");
  my_assert(top->res_p, 0, 164, "res_p");
  my_assert(top->irq, 0, 165, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 62940;
  top->data1 = 38124;
  top->bit0 = 0;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 35528, 173, "res");
  my_assert(top->res_p, 0, 174, "res_p");
  my_assert(top->irq, 0, 175, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 37800;
  top->data1 = 56304;
  top->bit0 = 1;
  top->bit1 = 1;
  top->bit2 = 0;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 28569, 183, "res");
  my_assert(top->res_p, 0, 184, "res_p");
  my_assert(top->irq, 0, 185, "irq");
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  top->data0 = 53093;
  top->data1 = 24064;
  top->bit0 = 0;
  top->bit1 = 0;
  top->bit2 = 1;
  top->eval();
  main_time++;
  #if VM_TRACE
  tracer->dump(main_time);
  #endif
  my_assert(top->res, 11621, 193, "res");
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
