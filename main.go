package main

import (
	"github.com/jsnfwlr/go-deadcode/v3/pkg/greet"
)

func main() {
	var g greet.Greeter = greet.Helloer{}
	g.Greet()
}
