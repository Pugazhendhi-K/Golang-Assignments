package main

import "fmt"

func main() {

   var a int
   var b int 
   var c int
   
   fmt.Println("Enter two Numbers: ")
   fmt.Scanln(&a,&b)

   c = a + b
   fmt.Printf("Addition: %d\n", c )
   
   c = a - b
   fmt.Printf("Subtraction: %d\n", c )
   
   c = a * b
   fmt.Printf("Multiplication  %d\n", c )
   
   c = a / b
   fmt.Printf("Division %d\n", c )
   
   c = a % b
   fmt.Printf("Modulo Remainder %d\n", c )
   
   a++
   fmt.Printf("Increement first value: %d\n", a )
   
   b--
   fmt.Printf("Decreement Second value %d\n", b )
}
