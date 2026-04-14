_data: {
	foo: {a: 1, b: "a foo", c: true}
	bar: {a: 100, b: "some bar", c: false}
	baz: {a: 1000, b: "this is baz", c: false}
	quux: {a: 10000, b: "quux?", c: true}
}

result: {
	for k, v in _data
	if v.a < 10 || v.c || v.b =~ "some bar" {
		(k): {
			b: v.b
			a: 1 + v.a*2
		}
	}
}