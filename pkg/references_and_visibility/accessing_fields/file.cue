one:   #n.a & #n["a"] // Equivalent references
two:   #n.b           // Valid identifer
three: #n["c d"]      // Non-valid identifier
four:  #n[#E+"f"]     // Computed reference
five:  #n.#g          // Valid identifier

#E: "e"
#n: {
	a:     1
	"b":   2
	"c d": 3
	ef:    4
	#g:    5
}