A: {
	foo!:  int    // required
	bar?:  string // optional
	baz:   float  // regular
	quux?: _|_    // cannot be specified
}

A: {
	foo: 12
	bar: "42"
	baz: 42.0
}