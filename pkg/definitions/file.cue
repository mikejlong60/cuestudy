message: "Hello, \(#Name)!"
#Name:   "world"

#A: {
	n: int
	// Uncomment this to allow any field.
	// ...
}

valid: #A & {n: 3}
invalid: #A & {N: 3}