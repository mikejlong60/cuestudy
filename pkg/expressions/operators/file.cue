a: 1 + 1             // type int
b: "xxx" + "OOO"     // type string
c: 2 * 2             // type int
d: 2 * 2.0           // type float
e: 3.14159 - 0.14159 // type float

f: 6 / 2     // type: float
g: 6.0 / 2.0 // type: float

h: 1 <= 2.0 // type bool
i: 3.0 > 3  // type bool
// String types are compared lexically byte-wise
j: "aaa" >= "ZZZ" // type bool

k: div(10, 3) // type int
l: mod(10, 3) // type int