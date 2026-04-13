package main

import (
	_ "embed"
	"fmt"
	"log"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
)

type Person struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

//go:embed schema.cue
var schemaFile string

func validateWithSchema() {
	ctx := cuecontext.New()
	schema := ctx.CompileString(schemaFile).LookupPath(cue.ParsePath("#Person"))

	person := Person{
		Name: "Charlie Cartwright",
		Age:  999,
	}

	personAsCUE := ctx.Encode(person)

	unified := schema.Unify(personAsCUE)
	if err := unified.Validate(); err != nil {
		fmt.Println("❌ Person: NOT ok")
		log.Fatal(err)
	}

	fmt.Println("✅ Person: ok")
}
