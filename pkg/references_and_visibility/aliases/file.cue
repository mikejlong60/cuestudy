// Alias A provides access to a top-level field
// with a name that is not a valid identifier.
A="a top level field": 1

// Alias B provides access to a dynamic field.
B=(#b): 2
#b:     "some dynamic field"

a: A
b: B

// Alias C refers to the value that's on the right
// hand side of field "c", and demonstrates one way
// that shadowed fields can be accessed.
c: C={
	d: 3
	e: {
		d: 4
		e: d
		f: C.d
	}
}