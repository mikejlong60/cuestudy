price: number

// High prices require a reason and the name of
// the authorising person.
if price > 100 {
	reason!:       string
	authorisedBy!: string
}