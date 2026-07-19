# Theory

## Introduction

A 2×2 Binary Multiplier multiplies two 2-bit binary numbers.

Inputs:
- A = A1A0
- B = B1B0

Output:
- P = P3P2P1P0

## Working Principle

Binary multiplication generates partial products using AND gates.

PP0 = A0 × B0

PP1 = A1 × B0

PP2 = A0 × B1

PP3 = A1 × B1

The partial products are added using Half Adders to obtain the final product.

## Components Used

- 4 AND Gates
- 2 Half Adders
- 4 Input Pins
- 4 Output Pins
