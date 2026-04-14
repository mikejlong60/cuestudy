foo: int & <100 // This is a regular field.

// This is the same regular field as above, so
// both their values must unify successfully.
"foo": 1

// These two declarations refer to different
// fields, only one of which will be included in
// exported output.
_foo:   2
"_foo": 3

// This is a hidden definition, which is not
// included in exported output.
_#foo: 4