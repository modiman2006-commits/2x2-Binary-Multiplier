# Results

## Objective

The objective of this project was to design and simulate a **2×2 Binary Multiplier** using Logisim Evolution. The circuit was tested using all possible combinations of two 2-bit binary inputs.

---

## Simulation Environment

- **Software:** Logisim Evolution 4.1.0
- **Design Type:** Combinational Logic
- **Simulation Method:** Manual testing using the Poke Tool and Truth Table Analysis

---

## Test Results

| A (Binary) | B (Binary) | A (Decimal) | B (Decimal) | Product (Binary) | Product (Decimal) | Status |
|------------|------------|-------------|--------------|------------------|-------------------|--------|
| 00 | 00 | 0 | 0 | 0000 | 0 | ✅ Pass |
| 00 | 01 | 0 | 1 | 0000 | 0 | ✅ Pass |
| 00 | 10 | 0 | 2 | 0000 | 0 | ✅ Pass |
| 00 | 11 | 0 | 3 | 0000 | 0 | ✅ Pass |
| 01 | 00 | 1 | 0 | 0000 | 0 | ✅ Pass |
| 01 | 01 | 1 | 1 | 0001 | 1 | ✅ Pass |
| 01 | 10 | 1 | 2 | 0010 | 2 | ✅ Pass |
| 01 | 11 | 1 | 3 | 0011 | 3 | ✅ Pass |
| 10 | 00 | 2 | 0 | 0000 | 0 | ✅ Pass |
| 10 | 01 | 2 | 1 | 0010 | 2 | ✅ Pass |
| 10 | 10 | 2 | 2 | 0100 | 4 | ✅ Pass |
| 10 | 11 | 2 | 3 | 0110 | 6 | ✅ Pass |
| 11 | 00 | 3 | 0 | 0000 | 0 | ✅ Pass |
| 11 | 01 | 3 | 1 | 0011 | 3 | ✅ Pass |
| 11 | 10 | 3 | 2 | 0110 | 6 | ✅ Pass |
| 11 | 11 | 3 | 3 | 1001 | 9 | ✅ Pass |

---

## Sample Simulation

### Example

Input

A = 10₂ (2)

B = 11₂ (3)

Expected Output

```
0110₂
```

Decimal Verification

```
2 × 3 = 6
```

Simulation Output

```
0110₂
```

**Result:** ✅ PASS

---

## Screenshots

### Circuit

![2×2 Multiplier](../screenshots/multiplier_2x2.png)


### Truth Table

![Truth Table](../screenshots/truth_table.png)

---

## Conclusion

The designed 2×2 Binary Multiplier successfully multiplies two unsigned 2-bit binary numbers. The circuit was implemented using four AND gates and two Half Adders. All sixteen input combinations were tested, and the simulation results matched the expected outputs, confirming the correctness of the design.
