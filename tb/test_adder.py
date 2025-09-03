import cocotb
from cocotb.triggers import Timer
import random

@cocotb.test(skip=True)
async def test_adder(dut):
    """Probar el sumador en VHDL"""
    for _ in range(10):
        a_val = random.randint(0, 15)
        b_val = random.randint(0, 15)

        dut.a.value = a_val
        dut.b.value = b_val

        await Timer(1, units="ns")

        assert dut.sum.value == a_val + b_val, f"Error: {a_val}+{b_val} != {int(dut.sum.value)}"
        
@cocotb.test()    
async def test_adder_2(dut):
    """Probar el sumador en VHDL"""
    for _ in range(10):
        a_val = random.randint(0, 5)
        b_val = random.randint(0, 15)

        dut.a.value = a_val
        dut.b.value = b_val

        await Timer(1, units="ns")

        assert dut.sum.value == a_val + b_val, f"Error: {a_val}+{b_val} != {int(dut.sum.value)}"


