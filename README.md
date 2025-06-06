# Verilog Digital Design Assignments

This repository contains Verilog HDL implementations of various digital design components, developed as part of structured assignments. Each module is simulation-verified using corresponding testbenches, covering both combinational and sequential logic designs. The code is written with synthesis and behavioral simulation compatibility in mind.

## Repository Structure

The repository is organized into four assignments, each focused on a core concept in digital design. All modules are written in Verilog and tested through well-structured testbenches.

---

## Assignment 1: 4:1 Multiplexer

**Objective**: Implement a 4-to-1 multiplexer with a 2-bit select input.

- `4to1Mux.v`: Verilog module for the 4:1 multiplexer.
- `4to1Mux_tb.v`: Testbench to verify functional correctness across all select combinations.

---

## Assignment 2: Full Adder

**Objective**: Design a 1-bit full adder and validate it using exhaustive testing.

- `full_adder.v`: RTL implementation of a full adder.
- `tb_full_adder.v`: Testbench with all possible input permutations for `A`, `B`, and `Cin`.
- `Waveform.png`: Screenshot of simulation output showing correct sum and carry behavior.

---

## Assignment 3

### A. 2:1 Multiplexer

**Objective**: Design a basic 2-to-1 multiplexer with a 1-bit selector.

- `mux2x1.v`: Verilog module for the 2:1 MUX.
- `tb_mux2x1.v`: Testbench that verifies both possible selection paths.

### B. MUX-DFF Feedback Loop

**Objective**: Construct a feedback loop where the output of a MUX is connected to a D Flip-Flop, which feeds back into the MUX.

- `mux_dff_loop.v`: Sequential logic implementation using a feedback mechanism.
- `tb_mux_dff_loop.v`: Simulation to demonstrate state retention and dynamic behavior over time.

---

## Assignment 4: 4-bit Up/Down Counter

**Objective**: Design a 4-bit synchronous counter that supports both counting up and counting down based on a control signal.

- `up_down_counter.v`: Verilog module for the up/down counter.
- `tb_up_down_counter.v`: Testbench that tests both counting modes and edge cases.

---

## Simulation and Verification

All modules are verified using behavioral simulations. Testbenches include `$monitor` and `$display` statements to trace output in the simulation console.

**Supported Tools**:
- Xilinx Vivado 


