person: {
	name:  string
	age:   int & >=0
	human: true // People are always humans
}

viola: person & {
	name: "Viola"
	age:  38
}

otis: person & {
	name: "Otis"
	age:  1
}