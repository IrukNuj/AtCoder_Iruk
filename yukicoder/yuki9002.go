package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n)
	for n < m {
		switch {
		case n%15 == 0:
			fmt.Println("Fizz")
		case n%3 == 0:
			fmt.Println("FIZZ!")
		case n%5 == 0:
			fmt.Println("BUZZ!")
		default:
			fmt.Println(n)
		}
		n++
	}

}