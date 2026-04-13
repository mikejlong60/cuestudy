a: 4 & int      // int type
b: 5.0 & float  // float type
c: 4 & number   // int type
d: 5.0 & number // float type
e: 4 & float    // Type mismatch
f: 5.0 & int    // Type mismatch

// Syntactic sugar for numeric literals.
s: [
	// ints
	1_234,       // 1234
	5M,          // 5_000_000
	1.5Gi,       // 1_610_612_736
	0x1000_0000, // 268_435_456
	1e6,         // 1_000_000

	// floats
	000072.40,   // 72.40
	6.67428e-11, // 0.0000000000667428
]