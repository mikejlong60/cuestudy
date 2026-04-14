labels: {
	app: "foo"
}
selectors: {
	name: "bar"
}

// This cycle can be resolved.
labels:    selectors
selectors: labels