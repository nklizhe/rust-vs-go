package main

import "fmt"

func main() {
	quitSignal := make(chan int)

	greetings := "hello"
	for i := 0; i < 1000; i++ {
		go func(i int, signal chan int) {
            fmt.Printf("%s from goroutine          number %d\n", greetings, i)
			signal <- 1
		}(i, quitSignal)
	}

	// make the program don't exit until all
	// 10 goroutines are finished
	for i := 0; i < 1000; i++ {
		<-quitSignal
	}
}
