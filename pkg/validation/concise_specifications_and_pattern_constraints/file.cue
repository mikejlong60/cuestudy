// Specify fields concisely ...
fruit: apple: weight: 5
fruit: grape: weight: 2
// ... or don't. Mix and match forms as needed.
fruit: {
	melon: weight: 9
}

// Pattern constraints match multiple fields.
fruit: [string]: weight: int & <10

// Pattern constraints can specify multiple fields.
fruit: [string]: {
	isFruit:     true
	isVegetable: !isFruit
}