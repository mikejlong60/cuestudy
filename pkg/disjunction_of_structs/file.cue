#Floor: {
	level?:   int  // floor's level
	hasExit?: bool // floor has an exit?
}

// Constraints on the possible values of #Floor.
#Floor: {
	level:   0 | 1
	hasExit: true
} | {
	level:   -3 | -2 | -1 | 2 | 3 | 4
	hasExit: false
}

floors: [...#Floor]
floors: [
	{level: -2},
	{level: -1},
	{level: 0},
	{level: 1},
	{level: 2},
]