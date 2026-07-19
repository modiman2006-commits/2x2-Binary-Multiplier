# Results

## Objective

The objective of this project was to design and verify a **2×2 Binary Multiplier** using Logisim Evolution.

---

## Simulation Environment

- **Software:** Logisim Evolution
- **Circuit Type:** Combinational Logic
- **Components Used:**
  - 4 AND Gates
  - 2 Half Adders
  - Input Pins
  - Output Pins

---

## Truth Table

The circuit was tested for all **16 possible input combinations**.

| A1 | A0 | B1 | B0 | P0 | P1 | P2 | P3 |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|0|0|0|0|0|0|0|0|
|0|0|0|1|0|0|0|0|
|0|0|1|0|0|0|0|0|
|0|0|1|1|0|0|0|0|
|0|1|0|0|0|0|0|0|
|0|1|0|1|1|0|0|0|
|0|1|1|0|0|1|0|0|
|0|1|1|1|1|1|0|0|
|1|0|0|0|0|0|0|0|
|1|0|0|1|0|1|0|0|
|1|0|1|0|0|0|1|0|
|1|0|1|1|0|1|1|0|
|1|1|0|0|0|0|0|0|
|1|1|0|1|1|1|0|0|
|1|1|1|0|0|1|1|0|
|1|1|1|1|1|0|0|1|

---

## Simulation Screenshot

### Truth Table

![Truth Table](../screenshots/truth_table.png)

### Circuit Diagram

![2×2 Multiplier Circuit](../screenshots/multiplier_2x2.png)

---

## Verification

A sample verification is shown below.

**Example**

Input:

- A = 11₂ (3)
- B = 11₂ (3)

Expected Output:

- Product = 1001₂ (9)

Simulation Output:

- Product = 1001₂

**Status:** ✅ PASS

---

## Conclusion

The designed 2×2 Binary Multiplier was successfully implemented and simulated in Logisim Evolution. The generated truth table matches the expected results for all 16 input combinations, confirming that the circuit correctly performs unsigned 2-bit binary multiplication.
