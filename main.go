package main

import (
	"github.com/jsnfwlr/go-deadcode/v4/pkg/greet"
)

func main() {
	var g greet.Greeter = greet.Helloer{}
	g.Greet()

	var g2 greet.Greeter = greet.Goodbyer{}
	g2.Greet()
}
