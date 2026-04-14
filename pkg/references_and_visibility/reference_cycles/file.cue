x: 200

// This cycle can be resolved because of the
// concrete value specified above.
x: y + 100
y: x - 100

// This cycle cannot be resolved, so "cue eval"
// report the field's values as their given
// expressions.
a: b + 100
b: a - 100