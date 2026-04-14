val: 1

A: {
	val: 2
	B:   val // Matches the inner val
}

A: {
	C: val // Matches the top-level val
}

B: val // Matches the top-level val