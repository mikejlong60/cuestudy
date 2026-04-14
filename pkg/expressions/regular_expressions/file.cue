fooBar:  "foo bar" =~ "^[a-z ]{1,100}$"
bazQuux: "baz Quux" !~ "[A-Z]"

#lowercaseLength3: =~"^[[:lower:]]{3}$"
#noNumbers:        !~"[0-9]"

foo:       "foo" & #lowercaseLength3
BAR:       "BAR" & #lowercaseLength3
baaz:      "baaz" & #lowercaseLength3
theAnswer: "aa4" & #noNumbers