# Design

## Overview

This project implements a **2×2 Binary Multiplier** using basic digital logic gates in **Logisim Evolution**. The multiplier accepts two 2-bit binary numbers as inputs and produces a 4-bit binary product.

The design is implemented using **four AND gates** and **two Half Adders**, without using the built-in multiplier component.

---

## Design Specifications

### Inputs

| Signal | Description |
|--------|-------------|
| A1 | Most Significant Bit (MSB) of input A |
| A0 | Least Significant Bit (LSB) of input A |
| B1 | Most Significant Bit (MSB) of input B |
| B0 | Least Significant Bit (LSB) of input B |

### Outputs

| Signal | Description |
|--------|-------------|
| P3 | Most Significant Bit (MSB) of Product |
| P2 | Product Bit 2 |
| P1 | Product Bit 1 |
| P0 | Least Significant Bit (LSB) of Product |

---

## Components Used

| Component | Quantity |
|-----------|---------:|
| AND Gate | 4 |
| Half Adder | 2 |
| Input Pins | 4 |
| Output Pins | 4 |

---

## Circuit Architecture

The circuit is divided into two stages.

### Stage 1: Partial Product Generation

Four AND gates generate the partial products.

| Partial Product | Expression |
|-----------------|------------|
| PP0 | A0 AND B0 |
| PP1 | A1 AND B0 |
| PP2 | A0 AND B1 |
| PP3 | A1 AND B1 |

---

### Stage 2: Partial Product Addition

The partial products are added using two Half Adders.

#### Half Adder 1

Inputs:
- PP1
- PP2

Outputs:
- Sum → P1
- Carry → Carry1

#### Half Adder 2

Inputs:
- Carry1
- PP3

Outputs:
- Sum → P2
- Carry → P3

The output **P0** is directly obtained from **PP0**.

---

## Logic Equations

```
P0 = A0 · B0

P1 = (A1 · B0) XOR (A0 · B1)

Carry1 = (A1 · B0) AND (A0 · B1)

P2 = Carry1 XOR (A1 · B1)

P3 = Carry1 AND (A1 · B1)
```

---

## Circuit Diagram

![2×2 Binary Multiplier](../screenshots/multiplier_2x2.png)

---

## Design Features

- Gate-level implementation using basic logic gates.
- Modular design with reusable Half Adder circuits.
- Easy to understand and verify.
- Suitable for learning digital logic design.
- Can be extended to larger multipliers such as 4×4 Array Multipliers.

---

## Software Used

- Logisim Evolution

---

## Future Improvements

The current implementation supports only **unsigned 2×2 binary multiplication**. Future work may include:

- 4×4 Array Multiplier
- Booth Multiplier
- Wallace Tree Multiplier
- Verilog HDL implementation
- FPGA implementation using Verilog
