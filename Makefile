TOPLEVEL_LANG = vhdl
VHDL_SOURCES = $(shell pwd)/src/adder.vhdl
TOPLEVEL = adder
MODULE = tb.test_adder   # usar punto, no slash

SIM = ghdl

include $(shell cocotb-config --makefiles)/Makefile.sim


