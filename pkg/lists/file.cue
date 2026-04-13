// A is an open list with 3 predefined elements.
// Any additional elements must be ints.
A: [1, 2, 3, ...int]

// B is a closed list with 4 elements which is
// compatible with A's constraints.
B: [1, 2, 3, 4] & A

// C is a closed list with 3 elements which is
// compatible with A's constraints.
C: [1, _, _] & A
C: [_, 2, _] // 3 elements must be specified on
C: [_, _, 3] // each and every definition.

// D is an open list containing at least 2 ints,
// and is compatible with A's constraints.
D: [int, int, ...int] & A

// Closed lists with different lengths don't unify.
unifyFailBC: B & C
// Element type mismatches prevent unification.
unifyFailA: A & [1, 2, 3, "4"]

// E is built up incrementally as an example.
// E has identical constraints to A.
E: [...] // No type information; list is open.
E: [1, 2, 3,"f", ...string] // There are at least 3 elements.
E: [...int] // All elements are ints.
E: [1, ...] // Element 1 is made concrete.
E: [_, 2, ...] // Element 2 is made concrete.
E: [_, _, 3, ...] // Element 3 is made concrete.


// Can have differing types of list elements.
F: [...] // No type information; list is open.
F: [1, 2, 3, "f" , ...string] // There are at least 3 elements.
