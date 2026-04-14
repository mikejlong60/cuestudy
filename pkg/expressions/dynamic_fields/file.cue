a:       "foo"
b:       "bar"
(a + b): "foobar"

s: X={
	"\(a)_and_\(b)": "foobar"

	// Valid references using a selector and
	// an index expression.
	FooAndBar: s.foo_and_bar
	FooAndBar: X["foo_and_bar"]

	// Invalid reference because the
	// indentifer is not in scope.
	//FooAndBar: foo_and_bar
}

// Valid reference using an index expression.
FooAndBar: s["foo_and_bar"]