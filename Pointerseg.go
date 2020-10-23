package main

import "fmt"

func main() {

//using Strings
    var name string = "Pugazh"
    var pointer *string = &name

    fmt.Println("original =", name)
    fmt.Println("address =", pointer)
    fmt.Println("*pointer =", *pointer) 
    i, j := 1, 12

//using Integers
	p := &i         
	fmt.Println(*p) 
	*p = 2       
	fmt.Println(i)  

	p = &j         
	*p = *p / 4
	fmt.Println(j) 
}
